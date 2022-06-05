unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, MemDS, DBAccess, Uni;

type
  TFormLogin = class(TForm)
    LabelUsername: TLabel;
    InputName: TEdit;
    LabelPassword: TLabel;
    InputPassword: TEdit;
    ButtonBatal: TButton;
    ButtonLogin: TButton;
    QLoginUser: TUniQuery;
    QLoginUserid_user: TIntegerField;
    QLoginUseruser_name: TStringField;
    QLoginUserpassword: TStringField;
    QLoginUserfull_name: TStringField;
    procedure ButtonBatalClick(Sender: TObject);
    procedure ButtonLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses UMain;

{$R *.dfm}

procedure TFormLogin.ButtonBatalClick(Sender: TObject);
begin
Close;
end;

procedure TFormLogin.ButtonLoginClick(Sender: TObject);

var user, pass : string;
begin
  user := 'admin';
  pass := 'admin';
  if (InputName.Text = user) and (inputPassword.Text = pass) then
    begin
      UMain.FormMain.Show;
    end
  else showMessage('Login Gagal !')
end;

end.
