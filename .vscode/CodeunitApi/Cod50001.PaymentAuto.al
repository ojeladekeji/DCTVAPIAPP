namespace APIAPP.APIAPP;
using Microsoft.Sales.Customer;
using Microsoft.Finance.GeneralLedger.Journal;
using Microsoft.Bank.BankAccount;
using Microsoft.Finance.GeneralLedger.Posting;

codeunit 50001 PaymentAuto
{
    trigger OnRun()
    begin
        PostPayment();
    end;
    procedure PostPayment()
    var
    beging
    end;


}