namespace APIAPP.APIAPP;

page 50019 "Cust Payment Card"
{
    ApplicationArea = All;
    Caption = 'Cust Payment Card';
    PageType = Card;    
    SourceTable = CustPayment;
    InsertAllowed = false;
    
  
   
    
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Document No"; Rec."Document No")
                {
                    Editable = false;
                }
                field(PostingDate; Rec.PostingDate)
                {
                    Editable = false;

                }
               
                
                
            }
            group(CustomerDetails)
            {
                Caption = 'CUstomer Details';
                
                field("Customer No"; Rec."Customer No")
                {
                   
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    Editable = false;   
                }
            }
            group(BankDetails)
            {
                Caption = 'Banking Details';
                
                field(Amount; Rec.Amount)
                {
                    Editable = false;
                }
                field(Reference; Rec.Reference)
                {
                    Editable = false;
                }
                field(bankCode; Rec.bankCode)
                {
                    Editable = false;
                }
                field(transactionCode; Rec.transactionCode)
                {
                    Editable = false;
                }
            }
            group(StatusDetails)
            {
                Caption = 'Status Details';
                
                field(Status; Rec.Status)
                {   
                    Editable = false;
                }
            }

        }
    }
}
