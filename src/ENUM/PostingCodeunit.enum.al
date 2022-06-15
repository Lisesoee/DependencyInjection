enum 50301 PostingCodeunit implements IPostingCodeunit
{
    Extensible = true;
    DefaultImplementation = IPostingCodeunit = PostingCodeunitMock;

    value(0; StandardPostingCodeunit)
    {
        Caption = 'Standard';
    }
    value(1; MockPostingCodeunit)
    {
        Caption = 'MockedPosting';
    }
}