namespace APIAPP.APIAPP;

using Microsoft.Sales.Receivables;

page 50015 openInvoiceApi
{
    APIGroup = 'custPortal';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'openInvoiceApi';
    DelayedInsert = true;
    EntityName = 'openInvoiceApi';
    EntitySetName = 'openInvoiceApi';
    PageType = API;
    SourceTable = "Cust. Ledger Entry";
    SourceTableView = where(
    "Remaining Amount" = filter(0.01..),   
    "Document Type" = const(Invoice)

);
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field(postingDate; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                }
               

                field("CustomerNo"; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                }

                  field(customerName; Rec."Customer Name")
                {
                    Caption = 'Customer Name';
                }
                field(originalAmount; Rec."Original Amount")
                {
                    Caption = 'Original Amount';
                }
                field(remainingAmount; Rec."Remaining Amount")
                {
                    Caption = 'Remaining Amount';
                }
            }
        }
    }
}
