namespace APIAPP.APIAPP;
using Microsoft.Sales.Customer;
using Microsoft.Finance.GeneralLedger.Journal;
using Microsoft.Bank.BankAccount;
using Microsoft.Finance.GeneralLedger.Posting;

codeunit 50001 PaymentAuto
{
    trigger OnRun()
    begin
        PostPayment();
    end;

procedure PostPayment()
   var
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalLine1: Record "Gen. Journal Line";
        GenJnlPostLine: Codeunit "Gen. Jnl.-Post";
        CustPay: Record CustPayment;
        Bank: Record "Bank Account";
        bankaccount: Code[20];
        cust: Record Customer;
        LineNo: Integer;
begin
    CustPay.SetRange(Status, 'PENDING');
    CustPay.SetFilter("Customer No", '<>%1', '');
    
    if not CustPay.FindFirst() then
        exit; 

  
    GenJournalLine1.Reset();
    GenJournalLine1.SetRange("Journal Template Name", 'GENERAL');
    GenJournalLine1.SetRange("Journal Batch Name", 'SANPOST');
    GenJournalLine1.DeleteAll();

    LineNo := 10000;

    if CustPay.FindFirst() then
        repeat
            if cust.Get(CustPay."Customer No") then begin
                GenJournalLine.Init();
                GenJournalLine."Journal Template Name" := 'GENERAL';
                GenJournalLine."Journal Batch Name" := 'SANPOST';
                GenJournalLine."Line No." := LineNo;
                GenJournalLine."Source Code" := 'SANPOST';
                GenJournalLine.Validate("Posting Date", CustPay.PostingDate);
                GenJournalLine.Validate("Document No.", CustPay."Document No");
                GenJournalLine.Validate("Document Type", GenJournalLine."Document Type"::Payment);
                GenJournalLine.Validate("Account Type", GenJournalLine."Account Type"::Customer);
                GenJournalLine.Validate("Account No.", CustPay."Customer No");
                GenJournalLine.Description := CopyStr(CustPay.Reference, 1, 50);
                GenJournalLine.Amount := -CustPay.Amount;
                GenJournalLine.Validate(Amount);
                if CustPay.invoiceno <> '' then begin
                    GenJournalLine."Applies-to Doc. Type" := GenJournalLine."Applies-to Doc. Type"::Invoice;
                    GenJournalLine.Validate("Applies-to Doc. No.", CustPay.invoiceno);                   
                end;
                GenJournalLine.Validate("Bal. Account Type", GenJournalLine."Bal. Account Type"::"Bank Account");
                Bank.SetRange("Bank Account No.", CustPay.bankCode);
                if Bank.FindFirst() then
                    bankaccount := Bank."No.";
                GenJournalLine.Validate("Bal. Account No.", bankaccount);
                if GenJournalLine.Amount <> 0 then begin
                    GenJournalLine.Insert();
                    CustPay.Status := 'READY_TO_POST';
                    CustPay.Modify();
                    LineNo += 10000;
                end;
            end;
        until CustPay.Next() = 0;
       GenJnlPostLine.Run(GenJournalLine);
        CustPay.Reset(); 
        CustPay.SetRange(Status, 'READY_TO_POST');

        if CustPay.FindSet() then
            repeat
                CustPay.Status := 'POSTED';
                CustPay.Modify();
            until CustPay.Next() = 0;

end;
}