object frmHome: TfrmHome
  Left = 0
  Top = 0
  Caption = 'Home'
  ClientHeight = 266
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menuHome
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblBemVindo: TLabel
    Left = 24
    Top = 64
    Width = 56
    Height = 13
    Caption = 'lblBemVindo'
  end
  object menuHome: TMainMenu
    Left = 232
    Top = 104
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
