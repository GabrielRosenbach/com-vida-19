object frmHome: TfrmHome
  Left = 0
  Top = 0
  Caption = 'Home'
  ClientHeight = 464
  ClientWidth = 1096
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menuHome
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblBemVindo: TLabel
    Left = 1056
    Top = 72
    Width = 56
    Height = 13
    Caption = 'lblBemVindo'
  end
  object Label1: TLabel
    Left = 688
    Top = 342
    Width = 66
    Height = 31
    Caption = 'COM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 760
    Top = 342
    Width = 105
    Height = 31
    Caption = 'VIDA-19'
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object menuHome: TMainMenu
    Left = 424
    Top = 32
    object itmUsuario: TMenuItem
      Caption = 'Usu'#225'rio'
      object itmLogin: TMenuItem
        Caption = 'Login / Cadastro'
        OnClick = itmLoginClick
      end
      object itmAnalisarSintomas: TMenuItem
        Caption = 'Analisar Sintomas'
        Visible = False
      end
      object itmConta: TMenuItem
        Caption = 'Conta'
        Visible = False
        OnClick = itmContaClick
      end
      object itmLogout: TMenuItem
        Caption = 'Logout'
        Visible = False
        OnClick = itmLogoutClick
      end
    end
    object itmConsulta: TMenuItem
      Caption = 'Consulta'
    end
    object itmSair: TMenuItem
      Caption = 'Sair'
    end
    object TMenuItem
    end
  end
end
