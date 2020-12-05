object DM: TDM
  OldCreateOrder = False
  Encoding = esUtf8
  Height = 392
  Width = 591
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=teste_trabalho'
      'User_Name=postgres'
      'Password=postgres'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 280
    Top = 128
  end
  object Driver: TFDPhysPgDriverLink
    VendorHome = 'C:\Users\ACR\Desktop\Projeto para servidor\Server\Win32\Debug'
    Left = 352
    Top = 168
  end
  object DWServerEvents1: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'login'
            Encoded = False
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovInteger
            ParamName = 'senha'
            Encoded = False
          end>
        JsonMode = jmPureJSON
        Name = 'ValidarLogin'
        EventName = 'ValidarLogin'
        OnlyPreDefinedParams = False
        OnReplyEvent = DWServerEvents1EventsValidarLoginReplyEvent
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'ListarClientes'
        EventName = 'ListarClientes'
        OnlyPreDefinedParams = False
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'nacionalidade'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'ListarPessoas'
        EventName = 'ListarPessoas'
        OnlyPreDefinedParams = False
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'nome'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'filhos'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'AdicionarClientes'
        EventName = 'AdicionarClientes'
        OnlyPreDefinedParams = False
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'nome'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'filhos'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'AtualizarClientes'
        EventName = 'AtualizarClientes'
        OnlyPreDefinedParams = False
      end
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'login'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'senha'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'email'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'tel'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'nome'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovInteger
            ParamName = 'codtipusu'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'Cadastro'
        EventName = 'cadastro'
        OnlyPreDefinedParams = False
        OnReplyEvent = DWServerEvents1EventscadastroReplyEvent
      end>
    Left = 72
    Top = 200
  end
  object FDQUsuario: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT * FROM USUARIO WHERE LOGINusu = '#39'Alan'#39' AND SENHAusu = '#39'12' +
        '345'#39)
    Left = 424
    Top = 272
  end
end
