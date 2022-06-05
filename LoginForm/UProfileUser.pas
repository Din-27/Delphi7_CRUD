unit UProfileUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, StdCtrls, ComCtrls, Grids, DBGrids,
  ExtCtrls;

type
  TFormProfile = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    ButtonTambahUser: TButton;
    ButtonUbahUser: TButton;
    ButtonHapusUser: TButton;
    LabelNama: TLabel;
    InputName: TEdit;
    Label2: TLabel;
    LabelUserName: TLabel;
    InputUserName: TEdit;
    LabelPassword: TLabel;
    InputPassword: TEdit;
    LabelTempatLahir: TLabel;
    InputTempatLahir: TEdit;
    LabelTanggalLahir: TLabel;
    InputTanggalLahir: TDateTimePicker;
    LabelAlamat: TLabel;
    Memo1: TMemo;
    ButtonSimpan: TButton;
    ButtonBatal: TButton;
    UniDataSource1: TUniDataSource;
    QUserProfile: TUniQuery;
    QUserProfileid_user: TIntegerField;
    QUserProfileuser_name: TStringField;
    QUserProfilepassword: TStringField;
    QUserProfilefull_name: TStringField;
    QUserProfiletmpt_lahir: TStringField;
    QUserProfiletgl_lahir: TDateField;
    QUserProfilealamat: TStringField;
    ButtonUpdate: TButton;
    procedure FormActivate(Sender: TObject);
    procedure ButtonTambahUserClick(Sender: TObject);
    procedure ButtonBatalClick(Sender: TObject);
    procedure ButtonUbahUserClick(Sender: TObject);
    procedure ButtonSimpanClick(Sender: TObject);
    procedure ButtonUpdateClick(Sender: TObject);
    procedure ButtonHapusUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProfile: TFormProfile;

implementation

uses UMain;

{$R *.dfm}

procedure TFormProfile.FormActivate(Sender: TObject);
begin
  QUserProfile.Close;
  QUserProfile.Open
end;

procedure TFormProfile.ButtonTambahUserClick(Sender: TObject);
begin
  INputName.Clear;
  InputUserName.Clear;
  InputPassword.Clear;
  InputTempatLahir.Clear;
  InputTanggalLahir.Date:= Now;
  Memo1.Lines.Clear;
  ButtonSimpan.Visible := true;
  ButtonUpdate.Visible := false;
  Panel2.Visible:=true
end;

procedure TFormProfile.ButtonBatalClick(Sender: TObject);
begin
  panel2.Visible := false
end;

procedure TFormProfile.ButtonUbahUserClick(Sender: TObject);
begin
  InputName.Text := QUserProfilefull_name.Value;
  InputUserName.Text := QUserProfileuser_name.Value;
  InputPassword.Text := QUserProfilepassword.Value;
  InputTanggalLahir.Date := QUserProfiletgl_lahir.Value;
  InputTempatLahir.Text := QUserProfiletmpt_lahir.Value;
  Memo1.Lines.Text := QUserProfilealamat.Value;
  ButtonSimpan.Visible := false;
  ButtonUpdate.Visible := true;
  Panel2.Visible := true;
end;

procedure TFormProfile.ButtonSimpanClick(Sender: TObject);
begin
  QUserProfile.Append;
  QUserProfilefull_name.Value := Trim(InputName.Text);
  QuserProfileuser_name.Value := Trim(InputUserName.Text);
  QUserProfilepassword.Value := Trim(InputPassword.Text);
  QUserProfiletmpt_lahir.Value := Trim(InputTempatLahir.Text);
  QUserProfiletgl_lahir.Value := InputTanggalLahir.Date;
  QUserProfilealamat.Value := Trim(Memo1.Lines.Text);
  QUserProfile.Post;
  MessageDlg('Data sudah Disimpan', mtInformation, [mbOK], 0);
  Panel2.Visible := False
end;

procedure TFormProfile.ButtonUpdateClick(Sender: TObject);
begin
  QUserProfile.Edit;
  QUserProfilefull_name.Value := Trim(InputName.Text);
  QuserProfileuser_name.Value := Trim(InputUserName.Text);
  QUserProfilepassword.Value := Trim(InputPassword.Text);
  QUserProfiletmpt_lahir.Value := Trim(InputTempatLahir.Text);
  QUserProfiletgl_lahir.Value := InputTanggalLahir.Date;
  QUserProfilealamat.Value := Trim(Memo1.Lines.Text);
  QUserProfile.Post;
  MessageDlg('Data sudah DiUpdate !', mtInformation, [mbOK], 0);
  Panel2.Visible := False
end;

procedure TFormProfile.ButtonHapusUserClick(Sender: TObject);
begin
  QUserProfile.Delete;
  MessageDlg('Data sudah Di Hapus !', mtInformation, [mbOK], 0);
end;

end.
