namespace APIAPP.APIAPP;

using Microsoft.Sales.Customer;

page 50013 customerApi
{
    APIGroup = 'custPortal';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'customerApi';
    DelayedInsert = true;
    EntityName = 'customerApi';
    EntitySetName = 'customerApi';
    PageType = API;
    SourceTable = Customer;
    
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
                field(phoneNo; Rec."Phone No.")
                {
                    Caption = 'Phone No.';
                }
                field(postCode; Rec."Post Code")
                {
                    Caption = 'Post Code';
                }
                field(customerPriceGroup; Rec."Customer Price Group")
                {
                    Caption = 'Customer Price Group';
                }
            }
        }
    }
}
