codeunit 50302 SalesHeaderPostingTest
{
    Subtype = Test;

    [Test]
    procedure "SalesHeader_PostingSalesHeader_Success"()
    var
        Customer: Record Customer;
        SalesHeader: Record "Sales Header";
        LibrarySales: Codeunit "Library - Sales";
        LibraryAssert: Codeunit "Library Assert";
        PostingCodeunitMock: Interface IPostingCodeunit;
        PostingCodeunit: Enum PostingCodeunit;
        IsSuccess: Boolean;
    begin

        // [GIVEN] Sales Header 
        LibrarySales.CreateCustomer(Customer);
        LibrarySales.CreateSalesHeader(SalesHeader, SalesHeader."Document Type"::Order, Customer."No.");

        // [WHEN] Posting Sales Header
        PostingCodeunit := PostingCodeunit::MockPostingCodeunit;
        PostingCodeunitMock := PostingCodeunit;
        IsSuccess := SalesHeader.SendToPosting_withDI(PostingCodeunitMock);

        // [THEN] Success
        LibraryAssert.IsTrue(IsSuccess, 'Posting Successfull');

    end;
}
