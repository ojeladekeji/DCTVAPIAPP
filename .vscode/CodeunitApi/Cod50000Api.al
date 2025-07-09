namespace APIAPP.APIAPP;
using Microsoft.Inventory.Item;

codeunit 50000 "Odata API"
{
    procedure GetItemInventory(ItemNo: Code[20]): Decimal

    var
        Item: Record Item;
    begin
        if Item.Get(ItemNo) then begin
            Item.CalcFields(Inventory);
             exit(Item.Inventory)
        end else
            exit(0);
    end;

}
