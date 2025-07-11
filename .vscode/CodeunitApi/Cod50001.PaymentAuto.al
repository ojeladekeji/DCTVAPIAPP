namespace APIAPP.APIAPP;
using Microsoft.Sales.Customer;
using Microsoft.Finance.GeneralLedger.Journal;

codeunit 50001 PaymentAuto
{/* 
   trigger OnRun()
    begin
        PostPayment();
    end;

    procedure PostPayment()
    var
        Cust: Record Customer;
      //  GLSetup: Record "G/L Setup";
        GenJournalLine: Record "Gen. Journal Line";
        GenJournalLine1: Record "Gen. Journal Line";
        custPayment: Record CustPayment;
        ChargeAmount: Decimal;
       // TotalAmt: Decimal;
       // AmountLess: Decimal;
        xDay: Integer;
        xMonth: Integer;
        xYear: Integer;
        xPostingDate: Date;
    begin

        //Get G/L Setup
        //GLSetup.GET;

        //Get Customer Payment Integration
        custPayment.SETRANGE(custPayment.status,'PENDING');
        IF NOT custPayment.FIND('-') THEN
            EXIT;

        REPEAT */
}
