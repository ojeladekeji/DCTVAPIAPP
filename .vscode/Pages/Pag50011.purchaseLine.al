namespace APIAPP.APIAPP;

using Microsoft.Purchases.Document;

page 50011 purchaseLine
{
    APIGroup = 'custPortal';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'purchaseLine';
    DelayedInsert = true;
    EntityName = 'purchaseLine';
    EntitySetName = 'purchaseLine';
    PageType = API;
    SourceTable = "Purchase Line";
    SourceTableView = where("Document Type" = const("Purchase Document Type"::Order), "Outstanding Quantity" = filter(1..), type = const("Purchase Line Type"::Item), "Location Code" = filter('Main'));
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(outstandingQuantity; Rec."Outstanding Quantity")
                {
                    Caption = 'Outstanding Quantity';
                }
                field(expectedReceiptDate; Rec."Expected Receipt Date")
                {
                    Caption = 'Expected Receipt Date';
                }

            }
        }
    }
}
