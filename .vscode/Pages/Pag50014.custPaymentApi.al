namespace APIAPP.APIAPP;

page 50014 custPaymentApi
{
    APIGroup = 'custPortal';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'custPaymentApi';
    DelayedInsert = true;
    EntityName = 'custPaymentApi';
    EntitySetName = 'custPaymentApi';
    PageType = API;
    SourceTable = CustPayment;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(documentNo; Rec."Document No")
                {
                    Caption = 'Document No';
                }
                field(customerNo; Rec."Customer No")
                {
                    Caption = 'Customer No';
                }
                field(customerName; Rec."Customer Name")
                {
                    Caption = 'Customer Name';
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount';
                }
               
                field(bankCode; Rec.BankCode)
                {
                    Caption = 'Bank Code';
                }
                field(debtorName; Rec.DebtorName)
                {
                    Caption = 'Debtor Name';
                }
                field(reference; Rec.Reference)
                {
                    Caption = 'Reference';
                }
                field(status; Rec.Status)
                {
                    Caption = 'Status';
                }

                field(PostingDate; Rec.PostingDate)
                {
                    Caption = 'Posting Date';
                }
                field(matched; Rec.matched)
                {
                    Caption = 'Matched';
                }
                field(transactionCode; Rec.transactionCode)
                {
                    Caption = 'Transaction Code';
                }

                field(invoiceno;Rec.invoiceno)
                {

                }
               

              
            }
        }
    }
}
