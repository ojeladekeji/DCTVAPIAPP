namespace APIAPP.APIAPP;

using Microsoft.Inventory.Ledger;
using Microsoft.Sales.Customer;

page 50000 Serials
{
    APIGroup = 'demo';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'serialAPI';
    DelayedInsert = true;
    EntityName = 'SerialAPI';
    EntitySetName = 'SerialAPI';
    PageType = API;
    SourceTable = "Item Ledger Entry";
     SourceTableView = where(
    "Entry Type" = const("Item Ledger Entry Type"::Sale),
    "Item No." = filter(<>'CARRIAGE 1'),
     "Sales Amount (Actual)" = filter(<>0)
   // "Serial No." = filter(<>''),
   
);
  
   layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(DocumentNo; Rec."Document No.")
                {
                }
                field(DocumentDate; Rec."Document Date")
                {
                }
                field(ItemNo; Rec."Item No.")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(SourceNo; Rec."Source No.")
                {
                }
                field(SerialNo; Rec."Serial No.")
                {
                }
           
                
                field(Amount; Rec."Sales Amount (Actual)")
                {
                }
                field(CustName; CustName)
                {

                }
               field(Quantity; Format(-Rec.Quantity, 0, '<Integer>'))
               {

               }

                field(PostCode; PostCode)
                {

                }
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        if cust.Get(Rec."Source No.") then begin
            CustName := cust.Name;
            PostCode := cust."Post Code";
        end;
    end;

    var
        cust: Record Customer;
        CustName: Text[250];
        PostCode : Text[50];
}
