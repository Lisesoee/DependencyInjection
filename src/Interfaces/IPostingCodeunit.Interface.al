interface IPostingCodeunit
{
    procedure PostSalesDocument(SalesHeader: Record "Sales Header") IsSuccess: Boolean;

}