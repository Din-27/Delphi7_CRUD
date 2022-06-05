object FormMain: TFormMain
  Left = 944
  Top = 221
  Width = 928
  Height = 480
  Caption = 'Form Main'
  Color = 8454143
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 128
    Top = 72
    object File1: TMenuItem
      Caption = 'File'
      object Login1: TMenuItem
        Caption = 'Login'
      end
      object Logout1: TMenuItem
        Caption = 'Logout'
        OnClick = Logout1Click
      end
    end
    object About1: TMenuItem
      Caption = 'Master'
    end
    object Profile1: TMenuItem
      Caption = 'Profile'
      OnClick = Profile1Click
    end
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'delphi_login'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 16
    Top = 48
  end
end
