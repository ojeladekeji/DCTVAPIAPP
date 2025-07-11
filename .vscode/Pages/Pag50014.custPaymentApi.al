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
                field(chargeAmount; Rec.ChargeAmount)
                {
                    Caption = 'Charge Amount';
                }
                field(bankCode; Rec."Bank Code")
                {
                    Caption = 'Bank Code';
                }
                field(depositBy; Rec."Deposit By")
                {
                    Caption = 'Deposit By';
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
              
            }
        }
    }
}
