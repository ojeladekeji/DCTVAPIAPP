namespace APIAPP.APIAPP;

using Microsoft.Sales.Customer;
using Microsoft.Inventory.Ledger;

page 50002 CusterPowerBI
{
    ApplicationArea = All;
    Caption = 'CustPowerBi';
    PageType = List;
    SourceTable = Customer;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                }
                field(Name; Rec.Name)
                {
                }
                field(Blocked; Rec.Blocked)
                {
                }
                field("Customer Price Group"; Rec."Customer Price Group")
                {
                }
                field("Post Code"; Rec."Post Code")
                {
                }
            }
        }
    }
}
