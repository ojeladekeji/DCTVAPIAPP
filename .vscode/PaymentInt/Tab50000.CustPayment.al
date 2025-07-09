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
        }
        field(3; "Customer Name"; Text[250])
        {
            Caption = 'Customer Name';
        }
        field(4; "Deposit By"; Text[50])
        {
            Caption = 'Deposit By';
        }
        field(5; Reference; Text[50])
        {
            Caption = 'Reference';
        }
        field(6; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(7; "Bank Code"; Code[20])
            {
                Caption = 'Bank Code';
        }
        field(8; ChargeAmount; Decimal)
        {
            Caption = 'Charge Amount';
        }
        field(9; Status; Text[20])
        {
            Caption = 'Status';
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
