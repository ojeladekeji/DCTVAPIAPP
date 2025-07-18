table 50000 CustPayment
{
    Caption = 'CustPayment';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "Document No"; Code[20])
        {
            Caption = 'Document No';
        }
        field(2; "Customer No"; Code[20])
        {
            Caption = 'Customer No';
            TableRelation = Customer."No.";             
        trigger OnValidate()
            var
                CustomerRec: Record Customer;
            begin
                if CustomerRec.Get("Customer No") then
                    "Customer Name" := CustomerRec.Name
                else
                    "Customer Name" := '';
            end;

        }
        field(3; "Customer Name"; Text[250])
        {
            Caption = 'Customer Name';
        }
        field(4; debtorName; Text[50])
        {
            Caption = 'Debtor Name';
        }
        field(5; Reference; Text[250])
        {
            Caption = 'Reference';
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
        }
       
        field(9; Status; Text[20])
        {
            Caption = 'Status';
        }

        
        field(11; bankCode; Code[20])
        {
            Caption = 'Bank Code';
        }

         field(10; PostingDate; Date)
        {
            Caption = 'Posting Date';
        }

        field(12; matched; Boolean)
        {
            Caption = 'Matched';
        }


        
        field(13; transactionCode; Text[50])
        {
            Caption = 'Transaction Code';
        }



    }
    keys
    {
        key(PK; "Document No")
        {
            Clustered = true;
        }
    }
}
