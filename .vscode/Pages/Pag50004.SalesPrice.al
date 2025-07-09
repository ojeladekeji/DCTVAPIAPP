namespace APIAPP.APIAPP;

using Microsoft.Pricing.PriceList;

page 50004 SalesPrice
{
    APIGroup = 'custPortal';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'salesPriceAPI';
    DelayedInsert = true;
    EntityName = 'salesPriceAPI';
    EntitySetName = 'salesPriceAPI';
    PageType = API;
    SourceTable = "Price List Line";
     SourceTableView = where (Status = const(Active));

    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(itemNo; Rec."Product No.")
                {
                    Caption = 'Item No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                
                field(customerPriceGroup; Rec."Assign-to No.")
                {
                    Caption = 'Customer Price Group';
                }
            }
        }
    }
}
