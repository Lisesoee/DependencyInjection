codeunit 50300 EmailMessageHandler implements IMessageHanderInterface
{
    trigger OnRun()
    begin

    end;

    var
        myInt: Integer;


    procedure SendMessage(Subject: Text; Body: Text)
    var
        MailManagement: Codeunit "Mail Management";
    begin
        Message('Ok');
        // ...
        // MailManagement.Send();
    end;


}

