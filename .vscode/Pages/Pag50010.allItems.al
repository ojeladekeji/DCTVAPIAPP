namespace APIAPP.APIAPP;

using Microsoft.Inventory.Item;
using Microsoft.Inventory.Ledger;

page 50010 allItems
{
    APIGroup = 'custPortal';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'allItems';
    DelayedInsert = true;
    EntityName = 'allItems';
    EntitySetName = 'allItems';
    PageType = API;
    SourceTable = Item;
    SourceTableView = where(Type = const(Inventory),Blocked = const(false));
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
               
              
                field(main; mainInventory)
                {
                    Caption = 'Main Inventory';
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
       // receiptDateTxt: Text;
       // purchaseLine: Record "Purchase Line";
      //  tempDate: Date;
      //  receiptDate: Date;
        

    trigger OnAfterGetRecord()
    begin
    
        mainInventory := 0; 
        doncasterInventory := 0;
        pacetechInventory := 0;
      //  receiptDate := 0D;
      //  receiptDateTxt := '';
      //  QtyonPurchCalc := 0;

        itemLedgerEntry.Reset();
        itemLedgerEntry.SetRange("Item No.", Rec."No.");
        itemLedgerEntry.SetRange("Location Code", 'MAIN');
        itemLedgerEntry.CalcSums(Quantity);
        mainInventory := itemLedgerEntry.Quantity;

        
// Calculate Qty. on Purch. Order
    //Rec.CalcFields("Qty. on Purch. Order");
    //QtyonPurchCalc := Rec."Qty. on Purch. Order";
       
//         itemLedgerEntry.Reset();
//         itemLedgerEntry.SetRange("Item No.", Rec."No.");
//         itemLedgerEntry.SetRange("Location Code", 'DONCASTER');
//         itemLedgerEntry.CalcSums(Quantity);
        
//         doncasterInventory := itemLedgerEntry.Quantity;

//  // Check if Qty. on Purch. Order is greater than 0
//     if Rec."Qty. on Purch. Order" > 0 then begin
//         // Expected Receipt Date (latest)
//         purchaseLine.Reset();
//         purchaseLine.SetCurrentKey("Expected Receipt Date");
//         purchaseLine.SetRange(Type, purchaseLine.Type::Item);
//         purchaseLine.SetRange("No.", Rec."No.");
//         purchaseLine.SetRange("Document Type", purchaseLine."Document Type"::Order);
//         if purchaseLine.FindSet() then begin
//             repeat
//                 if (purchaseLine."Expected Receipt Date" > receiptDate) then
//                     receiptDate := purchaseLine."Expected Receipt Date";
//             until purchaseLine.Next() = 0;
//         end;
//     end else
//         receiptDate := 0D; // Explicitly reset if Qty on Purch is 0

//     // Format the receipt date
//     if receiptDate <> 0D then
//         receiptDateTxt := Format(receiptDate, 0, '<Day,2>/<Month,2>/<Year4>')
//     else
//         receiptDateTxt := '';
end;
}
