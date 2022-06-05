unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBAccess, Uni, UniProvider, MySQLUniProvider;

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    About1: TMenuItem;
    Login1: TMenuItem;
    Logout1: TMenuItem;
    UniConnection1: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    Profile1: TMenuItem;
    procedure Logout1Click(Sender: TObject);
    procedure Profile1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses UProfileUser;

{$R *.dfm}

procedure TFormMain.Logout1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMain.Profile1Click(Sender: TObject);
begin
   UProfileUser.FormProfile.Show
end;

end.
