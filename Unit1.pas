unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, ComCtrls, ExtCtrls, xmldom, XMLIntf, msxmldom,
  XMLDoc;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    UserName: TEdit;
    Label2: TLabel;
    Password: TEdit;
    IdHTTP1: TIdHTTP;
    Msg: TMemo;
    lblCount: TLabel;
    btnPost: TButton;
    memoResult: TMemo;
    radioUserPost: TRadioButton;
    radioFriendsPost: TRadioButton;
    radioDirectMessage: TRadioButton;
    XMLDoc: TXMLDocument;
    btnRead: TButton;
    procedure MsgChange(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
  private
    { Private declarations }
    procedure getMessages;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.MsgChange(Sender: TObject);
begin
  lblCount.Caption := IntToStr((140 - length(msg.Text)));
end;

function ReplaceStr(const strFonte: string; const APesquisar: string; const AAlterar: string) : string;
var i: integer;
    s: string;
begin
   result := strFonte;
   i      := 0;

   while i <= length(result) do
   begin
       inc(i);
       s := copy(result, i, length(APesquisar));
       if (s = APesquisar) then
       begin
           delete(result, i, length(APesquisar));
           insert(AAlterar, result, i);
           dec(i, length(APesquisar));
           inc(i, length(AAlterar));
       end;
   end;
end;

procedure TForm1.btnPostClick(Sender: TObject);
var url    : string;
    params : TStrings;
begin
  if (msg.Text = '') then exit;
  
  url := 'http://' + UserName.Text + ':' + Password.Text + '@twitter.com/statuses/update.xml?status=';
  url := url + msg.Text;

  idHttp1.Request.BasicAuthentication := true;
  idHttp1.Request.Username := UserName.Text;
  idHttp1.Request.Password := Password.Text;

  url                      := ReplaceStr(url, ' ', '%20');
  params                   := TStringList.Create;

  try
    idHttp1.Post(url, params);
  except
    on e: exception do
    begin
      showmessage(e.Message);
    end;
  end;

  params.Free;

end;

procedure TForm1.getMessages;

  procedure ShowMessages;
  var NodeStatus, NodeUser : IXMLNode;
        text, user: string;
        i : integer;
  begin
    xmldoc.Active := True;

    memoResult.Lines.BeginUpdate;
    memoResult.Clear;
    for i := 0 to xmldoc.DocumentElement.ChildNodes.Count -1 do
    begin
      NodeStatus := xmldoc.DocumentElement.ChildNodes[i];
      NodeUser   := NodeStatus.ChildNodes.FindNode('user');

      text := NodeStatus.ChildValues['text'];
      user := NodeUser.ChildValues['screen_name'];

      memoResult.Lines.Add('('+user+') '+text);
      memoResult.Lines.Add('--------------------------------');
    end;
    memoResult.Lines.endUpdate;
  end;

var url, option, xml_result : string;
begin
   if (radioUserPost.Checked)      then option := 'user_timeline/';
   if (radioFriendsPost.Checked)   then option := 'friends_timeline/';
   if (radioDirectMessage.Checked) then option := 'replies/';

   url := 'http://twitter.com/statuses/' + option + UserName.Text + '.xml?count=20';

   idHttp1.Request.BasicAuthentication := true;
   idHttp1.Request.Username := UserName.Text;
   idHttp1.Request.Password := Password.Text;

   try
    xml_result      := idHttp1.Get(url);
    XMLDoc.Active   := False;
    XMLDoc.XML.Text := xml_result;
   except
    on e: exception do
    begin
      ShowMessage(e.Message);
      exit;
    end;
   end;

  ShowMessages();
end;

procedure TForm1.btnReadClick(Sender: TObject);
begin
  getMessages();
end;

end.
