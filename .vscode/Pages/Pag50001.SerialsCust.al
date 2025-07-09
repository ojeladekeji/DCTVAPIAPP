namespace APIAPP.APIAPP;

using Microsoft.Sales.Customer;

page 50001 SerialsCust
{
    APIGroup = 'serials';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'serialsCust';
    DelayedInsert = true;
    EntityName = 'serialsCust';
    EntitySetName = 'serialsCust';
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
                field(postCode; Rec."Post Code")
                {
                    Caption = 'Post Code';
                }
            }
        }
    }
}
