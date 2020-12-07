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
      '  codusu, nomeusu, emailusu, telusu, loginusu,'
      '  senhausu'
      'from '
      '   usuario'
      '  ')
    Left = 112
    Top = 168
    object FDQContacodusu: TIntegerField
      FieldName = 'codusu'
      Origin = 'codusu'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  end
  object DSConta: TDataSource
    DataSet = FDQConta
    Left = 112
    Top = 240
  end
  object FDQEstado: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from estado;')
    Left = 408
    Top = 168
    object FDQEstadocodest: TIntegerField
      FieldName = 'codest'
      Origin = 'codest'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQEstadocodreg: TIntegerField
      FieldName = 'codreg'
      Origin = 'codreg'
    end
    object FDQEstadonomest: TWideStringField
      FieldName = 'nomest'
      Origin = 'nomest'
    end
    object FDQEstadosigest: TWideStringField
      FieldName = 'sigest'
      Origin = 'sigest'
      FixedChar = True
      Size = 2
    end
  end
  object DSEstado: TDataSource
    DataSet = FDQEstado
    Left = 408
    Top = 248
  end
  object FDQPaciente: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      '  codpac, codusu, codend, altpac, pesopac, datanaspac'
      'from '
      '   paciente ')
    Left = 184
    Top = 168
    object FDQPacientecodpac: TIntegerField
      FieldName = 'codpac'
      Origin = 'codpac'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQPacientecodend: TIntegerField
      FieldName = 'codend'
      Origin = 'codend'
    end
    object FDQPacientealtpac: TBCDField
      FieldName = 'altpac'
      Origin = 'altpac'
      Precision = 3
      Size = 2
    end
    object FDQPacientepesopac: TBCDField
      FieldName = 'pesopac'
      Origin = 'pesopac'
      Precision = 5
      Size = 2
    end
    object FDQPacientedatanaspac: TDateField
      FieldName = 'datanaspac'
      Origin = 'datanaspac'
    end
    object FDQPacientecodusu: TIntegerField
      FieldName = 'codusu'
      Origin = 'codusu'
    end
  end
  object FDQEndereco: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      '  codend, codcid, ruaend, numend, baiend'
      'from '
      '   endereco'
      '  ')
    Left = 272
    Top = 168
    object FDQEnderecocodcid: TIntegerField
      FieldName = 'codcid'
      Origin = 'codcid'
    end
    object FDQEnderecoruaend: TWideStringField
      FieldName = 'ruaend'
      Origin = 'ruaend'
      Size = 50
    end
    object FDQEndereconumend: TIntegerField
      FieldName = 'numend'
      Origin = 'numend'
    end
    object FDQEnderecobaiend: TWideStringField
      FieldName = 'baiend'
      Origin = 'baiend'
      Size = 50
    end
    object FDQEnderecocodend: TIntegerField
      FieldName = 'codend'
      Origin = 'codend'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object DSPaciente: TDataSource
    DataSet = FDQPaciente
    Left = 184
    Top = 240
  end
  object DSEndereco: TDataSource
    DataSet = FDQEndereco
    Left = 264
    Top = 240
  end
  object FDQCidade: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      '  codcid, nomcid, codest, cepcid'
      'from '
      '   cidade'
      '  ')
    Left = 344
    Top = 168
    object FDQCidadenomcid: TWideStringField
      FieldName = 'nomcid'
      Origin = 'nomcid'
      Size = 50
    end
    object FDQCidadecodest: TIntegerField
      FieldName = 'codest'
      Origin = 'codest'
    end
    object FDQCidadecepcid: TWideStringField
      FieldName = 'cepcid'
      Origin = 'cepcid'
      Size = 10
    end
    object FDQCidadecodcid: TIntegerField
      FieldName = 'codcid'
      Origin = 'codcid'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object DSCidade: TDataSource
    DataSet = FDQCidade
    Left = 344
    Top = 248
  end
  object FDQSelect: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuario;')
    Left = 32
    Top = 312
  end
  object DSSelect: TDataSource
    DataSet = FDQSelect
    Left = 112
    Top = 312
  end
end
