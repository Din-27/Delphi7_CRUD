object FormLogin: TFormLogin
  Left = 311
  Top = 151
  Width = 429
  Height = 230
  Caption = 'Login'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LabelUsername: TLabel
    Left = 56
    Top = 40
    Width = 82
    Height = 24
    Caption = 'Username : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
  end
  object LabelPassword: TLabel
    Left = 58
    Top = 80
    Width = 79
    Height = 24
    Caption = 'Password : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
  end
  object InputName: TEdit
    Left = 168
    Top = 32
    Width = 201
    Height = 32
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object InputPassword: TEdit
    Left = 168
    Top = 72
    Width = 201
    Height = 32
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object ButtonBatal: TButton
    Left = 168
    Top = 128
    Width = 97
    Height = 33
    Caption = 'Batal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonBatalClick
  end
  object ButtonLogin: TButton
    Left = 272
    Top = 128
    Width = 97
    Height = 33
    Caption = 'Login'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Franklin Gothic Medium Cond'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = ButtonLoginClick
  end
  object QLoginUser: TUniQuery
    Connection = FormMain.UniConnection1
    SQL.Strings = (
      'select * from user'
      'where user_name =:vuser and password =:vpass')
    Left = 8
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vuser'
      end
      item
        DataType = ftUnknown
        Name = 'vpass'
      end>
    object QLoginUserid_user: TIntegerField
      FieldName = 'id_user'
    end
    object QLoginUseruser_name: TStringField
      FieldName = 'user_name'
      Required = True
      Size = 32
    end
    object QLoginUserpassword: TStringField
      FieldName = 'password'
      Required = True
      Size = 32
    end
    object QLoginUserfull_name: TStringField
      FieldName = 'full_name'
      Required = True
      Size = 32
    end
  end
end
