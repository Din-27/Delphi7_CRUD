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
begin
  if(InputName.Text = '') then
    begin
      showMessage('usename tidak boleh kosong !');
      inputName.setFocus;
    end
  else
    if(InputPassword.Text = '') then
      begin
        inputPassword.setFocus;
        showMessage('password tidak boleh kosong');
      end
    else
  begin
    QLoginUser.Close;
    QLoginUser.params.ParamByName('vuser').value := Trim(InputName.Text);
    QLoginUser.params.ParamByName('vpass').value := Trim(InputPassword.Text);
    QLoginUser.Open;

    if(QLoginUser.RecordCount > 0) then
      begin
        UMain.FormMain.Show;
      end
    else
    begin
      showMessage('Data tidak ditemukan');
      InputName.setFocus;
      inputName.Clear;
      inputPassword.Clear;
    end
  end;
end;

end.
