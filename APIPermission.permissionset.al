permissionset 50000 APIPermission
{
    Assignable = true;
    Permissions = page Serials=X,
        page CusterPowerBI=X,
        page SerialsCust=X,
        page AjaxApi=X,
        page hikAPI=X,
        page SalesPrice=X,
        page ezvizApi=X,
        page pyronixApi=X,
        page ruijieApi=X,
        page texecomApi=X,
        page allItems=X,
        page purchaseLine=X,
        codeunit "Odata API"=X,
        tabledata CustPayment=RIMD,
        table CustPayment=X,
        page customerApi=X,
        page custPaymentApi=X,
        page vendorApi=X;
}