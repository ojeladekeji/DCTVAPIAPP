namespace APIAPP.APIAPP;

using Microsoft.Sales.Receivables;

page 50016 appliedEntriesApi
{
    APIGroup = 'custPortal';
    APIPublisher = 'DynamicCCTV';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'appliedEntriesApi';
    DelayedInsert = true;
    EntityName = 'appliedEntriesApi';
    EntitySetName = 'appliedEntriesApi';
    PageType = API;
    SourceTable = "Cust. Ledger Entry";
    
SourceTableView = where("Document Type" = FILTER(Invoice | Payment));

    
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(postingDate; Rec."Posting Date")
                {
                    Caption = 'Posting Date';
                }
                field(documentType; Rec."Document Type")
                {
                    Caption = 'Document Type';
                }
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }
                field(customerNo; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                }
                field(customerName; Rec."Customer Name")
                {
                    Caption = 'Customer Name';
                }
                field(entryNo; Rec."Entry No.")
                {
                    Caption = 'Entry No.';
                }
                field(closedByEntryNo; Rec."Closed by Entry No.")
                {
                    Caption = 'Closed by Entry No.';
                }
                field(originalAmount; Rec."Original Amount")
                {
                    Caption = 'Original Amount';
                }
                field(originalAmtLCY; Rec."Original Amt. (LCY)")
                {
                    Caption = 'Original Amt. (LCY)';
                }
            }
        }
    }
}
