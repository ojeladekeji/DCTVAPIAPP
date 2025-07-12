namespace APIAPP.APIAPP;

page 50017 custPayment
{
    ApplicationArea = All;
    Caption = 'Customer Payment List';
    PageType = List;
    SourceTable = CustPayment;
    UsageCategory = Lists;
    InsertAllowed = false;
    CardPageId = "Cust Payment Card";
   
   SourceTableView = where (Status = const('PENDING'));

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Document No"; Rec."Document No")
                {
                    Editable = false;
                }
                field(PostingDate; Rec.PostingDate)
                {
                   Editable = false;

                }
                field("Customer No"; Rec."Customer No")
                {
                Editable = false;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    Editable = false;
                }
                field(Amount; Rec.Amount)
                {
                    Editable = false;
                }
                field(Reference; Rec.Reference)
                {
                    Editable = false;
                }
                field(bankCode; Rec.bankCode)
                {
                    Editable = false;
                }
                field(matched; Rec.matched)
                {
                    Editable = false;
                }
                field(Status; Rec.Status)
                {
                    Editable = false;
                }
            }
        }
    }
}
