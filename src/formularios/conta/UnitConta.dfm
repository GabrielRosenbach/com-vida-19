object frmConta: TfrmConta
  Left = 0
  Top = 0
  Caption = 'Conta'
  ClientHeight = 622
  ClientWidth = 573
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
  object Label1: TLabel
    Left = 272
    Top = 24
    Width = 35
    Height = 13
    Caption = 'CONTA'
  end
  object Label11: TLabel
    Left = 253
    Top = 296
    Width = 54
    Height = 13
    Caption = 'ENDERE'#199'O'
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
    Left = 288
    Top = 104
    Width = 46
    Height = 13
    Caption = 'Telefone:'
    FocusControl = edtTelefone
  end
  object Label14: TLabel
    Left = 38
    Top = 144
    Width = 29
    Height = 13
    Caption = 'Login:'
    FocusControl = edtLogin
  end
  object Label15: TLabel
    Left = 289
    Top = 144
    Width = 34
    Height = 13
    Caption = 'Senha:'
    FocusControl = edtSenha
  end
  object Label16: TLabel
    Left = 36
    Top = 240
    Width = 33
    Height = 13
    Caption = 'Altura:'
    FocusControl = edtAltura
  end
  object Label17: TLabel
    Left = 194
    Top = 240
    Width = 27
    Height = 13
    Caption = 'Peso:'
    FocusControl = edtPeso
  end
  object Label18: TLabel
    Left = 371
    Top = 224
    Width = 38
    Height = 13
    Caption = 'Data de'
  end
  object Label3: TLabel
    Left = 371
    Top = 243
    Width = 59
    Height = 13
    Caption = 'Nascimento:'
  end
  object Label4: TLabel
    Left = 242
    Top = 200
    Width = 105
    Height = 13
    Caption = 'DADOS DO PACIENTE'
  end
  object Label5: TLabel
    Left = 38
    Top = 336
    Width = 23
    Height = 13
    Caption = 'Rua:'
    FocusControl = edtRua
  end
  object Label6: TLabel
    Left = 37
    Top = 384
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
    FocusControl = edtNumero
  end
  object Label7: TLabel
    Left = 288
    Top = 384
    Width = 32
    Height = 13
    Caption = 'Bairro:'
    FocusControl = DBEdit3
  end
  object Label8: TLabel
    Left = 38
    Top = 432
    Width = 37
    Height = 13
    Caption = 'Cidade:'
    FocusControl = DBEdit4
  end
  object Label9: TLabel
    Left = 289
    Top = 480
    Width = 37
    Height = 13
    Caption = 'Estado:'
  end
  object Label10: TLabel
    Left = 38
    Top = 480
    Width = 23
    Height = 13
    Caption = 'CEP:'
    FocusControl = DBEdit1
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
    Width = 177
    Height = 21
    DataField = 'emailusu'
    DataSource = dmHome.DSConta
    TabOrder = 1
  end
  object edtTelefone: TDBEdit
    Left = 352
    Top = 101
    Width = 169
    Height = 21
    DataField = 'telusu'
    DataSource = dmHome.DSConta
    TabOrder = 2
  end
  object edtLogin: TDBEdit
    Left = 88
    Top = 141
    Width = 177
    Height = 21
    DataField = 'loginusu'
    DataSource = dmHome.DSConta
    TabOrder = 3
  end
  object edtSenha: TDBEdit
    Left = 352
    Top = 141
    Width = 169
    Height = 21
    DataField = 'senhausu'
    DataSource = dmHome.DSConta
    TabOrder = 4
  end
  object edtAltura: TDBEdit
    Left = 88
    Top = 237
    Width = 73
    Height = 21
    DataField = 'altpac'
    DataSource = dmHome.DSPaciente
    TabOrder = 5
  end
  object edtPeso: TDBEdit
    Left = 234
    Top = 237
    Width = 73
    Height = 21
    DataField = 'pesopac'
    DataSource = dmHome.DSPaciente
    TabOrder = 6
  end
  object btnSalvar: TButton
    Left = 194
    Top = 560
    Width = 168
    Height = 25
    Caption = 'Salvar Dados'
    TabOrder = 7
    OnClick = btnSalvarClick
  end
  object edtRua: TDBEdit
    Left = 87
    Top = 333
    Width = 433
    Height = 21
    DataField = 'ruaend'
    DataSource = dmHome.DSEndereco
    TabOrder = 8
  end
  object edtNumero: TDBEdit
    Left = 90
    Top = 381
    Width = 134
    Height = 21
    DataField = 'numend'
    DataSource = dmHome.DSEndereco
    TabOrder = 9
  end
  object DBEdit3: TDBEdit
    Left = 352
    Top = 381
    Width = 168
    Height = 21
    DataField = 'baiend'
    DataSource = dmHome.DSEndereco
    TabOrder = 10
  end
  object DBEdit4: TDBEdit
    Left = 90
    Top = 429
    Width = 430
    Height = 21
    DataField = 'nomcid'
    DataSource = dmHome.DSCidade
    TabOrder = 11
  end
  object cbbEstado: TDBLookupComboBox
    Left = 352
    Top = 477
    Width = 160
    Height = 21
    DataField = 'codest'
    DataSource = dmHome.DSCidade
    KeyField = 'codest'
    ListField = 'nomest'
    ListSource = dmHome.DSEstado
    TabOrder = 12
  end
  object DatePicker1: TDatePicker
    Left = 436
    Top = 237
    Width = 85
    Height = 21
    DateFormat = 'yyyy/MM/dd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    MaxYear = 2020
    TabOrder = 13
  end
  object DBEdit1: TDBEdit
    Left = 90
    Top = 477
    Width = 134
    Height = 21
    DataField = 'cepcid'
    DataSource = dmHome.DSCidade
    TabOrder = 14
  end
end
