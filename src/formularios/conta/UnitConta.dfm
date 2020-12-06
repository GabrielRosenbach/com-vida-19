object frmConta: TfrmConta
  Left = 0
  Top = 0
  Caption = 'Conta'
  ClientHeight = 467
  ClientWidth = 588
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 24
    Width = 35
    Height = 13
    Caption = 'CONTA'
  end
  object Label11: TLabel
    Left = 313
    Top = 224
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label12: TLabel
    Left = 36
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Nome:'
    FocusControl = edtNome
  end
  object Label2: TLabel
    Left = 38
    Top = 104
    Width = 28
    Height = 13
    Caption = 'Email:'
    FocusControl = edtEmail
  end
  object Label13: TLabel
    Left = 36
    Top = 144
    Width = 46
    Height = 13
    Caption = 'Telefone:'
    FocusControl = edtTelefone
  end
  object Label14: TLabel
    Left = 38
    Top = 184
    Width = 29
    Height = 13
    Caption = 'Login:'
    FocusControl = edtLogin
  end
  object Label15: TLabel
    Left = 38
    Top = 224
    Width = 34
    Height = 13
    Caption = 'Senha:'
    FocusControl = edtSenha
  end
  object Label16: TLabel
    Left = 312
    Top = 104
    Width = 33
    Height = 13
    Caption = 'Altura:'
    FocusControl = edtAltura
  end
  object Label17: TLabel
    Left = 312
    Top = 144
    Width = 27
    Height = 13
    Caption = 'Peso:'
    FocusControl = edtPeso
  end
  object Label18: TLabel
    Left = 312
    Top = 173
    Width = 38
    Height = 13
    Caption = 'Data de'
    FocusControl = edtDataNasc
  end
  object Label3: TLabel
    Left = 312
    Top = 192
    Width = 59
    Height = 13
    Caption = 'Nascimento:'
  end
  object edtNome: TDBEdit
    Left = 88
    Top = 61
    Width = 433
    Height = 21
    DataField = 'nomeusu'
    DataSource = dmHome.DSConta
    TabOrder = 0
  end
  object edtEmail: TDBEdit
    Left = 88
    Top = 101
    Width = 184
    Height = 21
    DataField = 'emailusu'
    DataSource = dmHome.DSConta
    TabOrder = 1
  end
  object edtTelefone: TDBEdit
    Left = 88
    Top = 141
    Width = 184
    Height = 21
    DataField = 'telusu'
    DataSource = dmHome.DSConta
    TabOrder = 2
  end
  object edtLogin: TDBEdit
    Left = 88
    Top = 181
    Width = 184
    Height = 21
    DataField = 'loginusu'
    DataSource = dmHome.DSConta
    TabOrder = 3
  end
  object edtSenha: TDBEdit
    Left = 88
    Top = 221
    Width = 184
    Height = 21
    DataField = 'senhausu'
    DataSource = dmHome.DSConta
    TabOrder = 4
  end
  object edtAltura: TDBEdit
    Left = 387
    Top = 101
    Width = 134
    Height = 21
    DataField = 'altpac'
    DataSource = dmHome.DSConta
    TabOrder = 5
  end
  object edtPeso: TDBEdit
    Left = 387
    Top = 141
    Width = 134
    Height = 21
    DataField = 'pesopac'
    DataSource = dmHome.DSConta
    TabOrder = 6
  end
  object edtDataNasc: TDBEdit
    Left = 387
    Top = 181
    Width = 134
    Height = 21
    DataField = 'datanaspac'
    TabOrder = 7
  end
end
