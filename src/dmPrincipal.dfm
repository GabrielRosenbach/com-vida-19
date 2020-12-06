object dmHome: TdmHome
  OldCreateOrder = False
  Height = 390
  Width = 785
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=com-vida'
      'User_Name=postgres'
      'Password=123456'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 64
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 
      'D:\Ci'#234'ncias da Computa'#231#227'o\Mat'#233'rias\4'#186' Semestre\Systema ComVida-1' +
      '9\src'
    VendorLib = 'libpq.dll'
    Left = 160
    Top = 64
  end
  object FDQEntrar: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM usuario;')
    Left = 32
    Top = 168
    object FDQEntrarcodusu: TIntegerField
      FieldName = 'codusu'
      Origin = 'codusu'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQEntrarnomeusu: TWideStringField
      FieldName = 'nomeusu'
      Origin = 'nomeusu'
      Size = 50
    end
  end
  object DSEntrar: TDataSource
    DataSet = FDQEntrar
    Left = 32
    Top = 240
  end
  object FDQConta: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      '   * '
      'from '
      '   usuario usu '
      'left join paciente pac on'
      '   usu.codusu = pac.codusu'
      'left join endereco ende on '
      '   pac.codend = ende.codend;'
      '  ')
    Left = 112
    Top = 168
    object FDQContacodusu: TIntegerField
      FieldName = 'codusu'
      Origin = 'codusu'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQContacodtipusu: TIntegerField
      FieldName = 'codtipusu'
      Origin = 'codtipusu'
    end
    object FDQContanomeusu: TWideStringField
      FieldName = 'nomeusu'
      Origin = 'nomeusu'
      Size = 50
    end
    object FDQContaemailusu: TWideStringField
      FieldName = 'emailusu'
      Origin = 'emailusu'
      Size = 50
    end
    object FDQContatelusu: TWideStringField
      FieldName = 'telusu'
      Origin = 'telusu'
    end
    object FDQContaloginusu: TWideStringField
      FieldName = 'loginusu'
      Origin = 'loginusu'
    end
    object FDQContasenhausu: TWideStringField
      FieldName = 'senhausu'
      Origin = 'senhausu'
    end
    object FDQContacodpac: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codpac'
      Origin = 'codpac'
    end
    object FDQContacodusu_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codusu_1'
      Origin = 'codusu'
    end
    object FDQContacodend: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codend'
      Origin = 'codend'
    end
    object FDQContaaltpac: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'altpac'
      Origin = 'altpac'
      Precision = 3
      Size = 2
    end
    object FDQContapesopac: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'pesopac'
      Origin = 'pesopac'
      Precision = 5
      Size = 2
    end
    object FDQContadatanaspac: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanaspac'
      Origin = 'datanaspac'
    end
    object FDQContacodend_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codend_1'
      Origin = 'codend'
    end
    object FDQContacodcid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codcid'
      Origin = 'codcid'
    end
    object FDQContaruaend: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ruaend'
      Origin = 'ruaend'
      Size = 50
    end
    object FDQContanumend: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numend'
      Origin = 'numend'
    end
    object FDQContabaiend: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'baiend'
      Origin = 'baiend'
      Size = 50
    end
  end
  object DSConta: TDataSource
    DataSet = FDQConta
    Left = 112
    Top = 240
  end
end
