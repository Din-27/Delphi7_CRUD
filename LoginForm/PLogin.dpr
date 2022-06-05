program PLogin;

uses
  Forms,
  ULogin in 'ULogin.pas' {FormLogin},
  UMain in 'UMain.pas' {FormMain},
  UProfileUser in 'UProfileUser.pas' {FormProfile};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormProfile, FormProfile);
  Application.Run;
end.
