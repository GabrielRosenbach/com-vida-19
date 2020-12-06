object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Margins.Left = 1
  Margins.Right = 5
  Caption = 'Login'
  ClientHeight = 573
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 48
    Top = 53
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object Label3: TLabel
    Left = 322
    Top = 56
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Label1: TLabel
    Left = 52
    Top = 319
    Width = 46
    Height = 13
    Caption = 'Telefone:'
  end
  object Label4: TLabel
    Left = 48
    Top = 375
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object Label5: TLabel
    Left = 322
    Top = 319
    Width = 28
    Height = 13
    Caption = 'Email:'
  end
  object Label6: TLabel
    Left = 322
    Top = 378
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object Label7: TLabel
    Left = 48
    Top = 260
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label8: TLabel
    Left = 232
    Top = 16
    Width = 79
    Height = 13
    Caption = 'EFETUAR LOGIN'
  end
  object Label9: TLabel
    Left = 224
    Top = 212
    Width = 103
    Height = 13
    Caption = 'EFETUAR CADASTRO'
  end
  object lblLoginInvalido: TLabel
    Left = 348
    Top = 117
    Width = 151
    Height = 13
    Caption = 'Usu'#225'rio e Senha n'#227'o conferem!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object lblCadastroInvalido: TLabel
    Left = 392
    Top = 446
    Width = 107
    Height = 13
    Caption = 'Este usu'#225'rio j'#225' existe!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel
    Left = 448
    Top = 16
    Width = 103
    Height = 13
    Caption = '* Campo Obrigat'#243'rio!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 94
    Top = 53
    Width = 6
    Height = 16
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 362
    Top = 53
    Width = 6
    Height = 13
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 362
    Top = 375
    Width = 6
    Height = 13
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label21: TLabel
    Left = 94
    Top = 375
    Width = 6
    Height = 13
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label22: TLabel
    Left = 85
    Top = 260
    Width = 6
    Height = 13
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtUsuarioLogin: TEdit
    Left = 106
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'piloto'
  end
  object edtUsuarioCadastro: TEdit
    Left = 106
    Top = 372
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Informe seu usu'#225'rio...'
  end
  object btnCadastro: TButton
    Left = 232
    Top = 441
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 8
    OnClick = btnCadastroClick
  end
  object btnLogin: TButton
    Left = 232
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object edtTelefone: TEdit
    Left = 104
    Top = 316
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Informe seu telefone...'
  end
  object edtSenhaLogin: TEdit
    Left = 378
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '123456'
  end
  object edtEmail: TEdit
    Left = 378
    Top = 316
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Informe seu email...'
  end
  object edtSenhaCadastro: TEdit
    Left = 378
    Top = 375
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Informe sua senha...'
  end
  object edtNome: TEdit
    Left = 104
    Top = 257
    Width = 395
    Height = 21
    TabOrder = 3
    Text = 'Informe seu nome...'
  end
end
