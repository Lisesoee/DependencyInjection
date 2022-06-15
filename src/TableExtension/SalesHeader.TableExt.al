tableextension 50300 SalesHeaderWithDI extends "Sales Header"
{

    procedure SendToPosting_withDI(PostingCodeunit: Interface IPostingCodeunit) IsSuccess: Boolean
    var
        ErrorContextElement: Codeunit "Error Context Element";
        ErrorMessageMgt: Codeunit "Error Message Management";
        ErrorMessageHandler: Codeunit "Error Message Handler";
    begin
        if not IsApprovedForPosting then
            exit;
        Commit();
        ErrorMessageMgt.Activate(ErrorMessageHandler);
        ErrorMessageMgt.PushContext(
          ErrorContextElement, RecordId, 0, '');

        IsSuccess := PostingCodeunit.PostSalesDocument(Rec);
        if not IsSuccess then
            ErrorMessageHandler.ShowErrors;
    end;
}


