namespace APIAPP.APIAPP;

page 50018 postedPaymentList
{
    ApplicationArea = All;
    Caption = 'Posted Customr Payment';
    PageType = List;
    SourceTable = CustPayment;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Cust Payment Card";
    InsertAllowed = false;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(PostingDate; Rec.PostingDate)
                {
                }
                field("Document No"; Rec."Document No")
                {
                }
                field("Customer No"; Rec."Customer No")
                {
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field(Reference; Rec.Reference)
                {
                }
                field(bankCode; Rec.bankCode)
                {
                }
                field(transactionCode; Rec.transactionCode)
                {
                }
                field(Status; Rec.Status)
                {
                }
            }
        }
    }
}
