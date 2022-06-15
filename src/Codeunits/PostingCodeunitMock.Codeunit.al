codeunit 50301 PostingCodeunitMock implements IPostingCodeunit
{
    procedure PostSalesDocument(SalesHeader: Record "Sales Header") IsSuccess: Boolean
    begin
        IsSuccess := true;
    end;
}
