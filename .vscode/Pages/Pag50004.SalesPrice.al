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
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(productNo; Rec."Product No.")
                {
                    Caption = 'Product No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(lineNo; Rec."Line No.")
                {
                    Caption = 'Line No.';
                }
                field(assignToNo; Rec."Assign-to No.")
                {
                    Caption = 'Assign-to No.';
                }
            }
        }
    }
}
