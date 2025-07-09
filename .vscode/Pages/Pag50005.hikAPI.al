namespace APIAPP.APIAPP;

using Microsoft.Inventory.Item;
using Microsoft.Purchases.Document;
using Microsoft.Inventory.Ledger;

page 50005 hikAPI
{
    APIGroup = 'custPortal';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'hikAPI';
    DelayedInsert = true;
    EntityName = 'hikAPI';
    EntitySetName = 'hikAPI';
    PageType = API;
    SourceTable = item;
        SourceTableView = where(Type = const(Inventory),Blocked = const(false),"Vendor No." = const('82560798|34661633|15751406|V0000044|34661633|15751406|110784694'));

    
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
                field(description2; Rec."Description 2")
                {
                    Caption = 'Description 2';
                }
                field(searchDescription; Rec."Search Description")
                {
                    Caption = 'Search Description';
                }
                field(QtyonPurch; QtyonPurchCalc)
                {
                    
                }

             
              
                field(main; mainInventory)
                {
                    Caption = 'Main Inventory';
                }

             
                field(doncaster; doncasterInventory)
                {
                    Caption = 'Doncaster Inventory';
                }

                
                field(pacetech; pacetechInventory)
                {
                    Caption = 'Pacetech Inventory';
                }
                
            }
        }
    }

    var
        mainInventory: Decimal;
        doncasterInventory: Decimal;
        QtyonPurchCalc: Decimal;
        pacetechInventory: Decimal;
        itemLedgerEntry: Record "Item Ledger Entry";
        receiptDateTxt: Text;
        purchaseLine: Record "Purchase Line";
        tempDate: Date;
        receiptDate: Date;
        

    trigger OnAfterGetRecord()
    begin
    
        mainInventory := 0; 
        doncasterInventory := 0;
        pacetechInventory := 0;
        receiptDate := 0D;
        receiptDateTxt := '';
        QtyonPurchCalc := 0;

        itemLedgerEntry.Reset();
        itemLedgerEntry.SetRange("Item No.", Rec."No.");
        itemLedgerEntry.SetRange("Location Code", 'MAIN');
        itemLedgerEntry.CalcSums(Quantity);
        mainInventory := itemLedgerEntry.Quantity;

       

Rec.CalcFields("Qty. on Purch. Order");
QtyonPurchCalc := Rec."Qty. on Purch. Order";
       
        itemLedgerEntry.Reset();
        itemLedgerEntry.SetRange("Item No.", Rec."No.");
        itemLedgerEntry.SetRange("Location Code", 'DONCASTER');
        itemLedgerEntry.CalcSums(Quantity);
        
        doncasterInventory := itemLedgerEntry.Quantity;


    if Rec."Qty. on Purch. Order" > 0 then begin
    
        purchaseLine.Reset();
        purchaseLine.SetCurrentKey("Expected Receipt Date");
        purchaseLine.SetRange(Type, purchaseLine.Type::Item);
        purchaseLine.SetRange("No.", Rec."No.");
        purchaseLine.SetRange("Document Type", purchaseLine."Document Type"::Order);
        if purchaseLine.FindSet() then begin
            repeat
                if (purchaseLine."Expected Receipt Date" > receiptDate) then
                    receiptDate := purchaseLine."Expected Receipt Date";
            until purchaseLine.Next() = 0;
        end;
    end else
        receiptDate := 0D;

  
    if receiptDate <> 0D then
        receiptDateTxt := Format(receiptDate, 0, '<Day,2>/<Month,2>/<Year4>')
    else
        receiptDateTxt := '';
end;
}