namespace APIAPP.APIAPP;

using Microsoft.Purchases.Vendor;

page 50012 vendorApi
{
    APIGroup = 'custPortal';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'vendorApi';
    DelayedInsert = true;
    EntityName = 'vendorApi';
    EntitySetName = 'vendorApi';
    PageType = API;
    SourceTable = Vendor;
    
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
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
                field(postCode; Rec."Post Code")
                {
                    Caption = 'Post Code';
                }
            }
        }
    }
}
