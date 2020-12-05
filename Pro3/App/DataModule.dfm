object DM: TDM
  OldCreateOrder = False
  Height = 480
  Width = 637
  object RESTClient1: TRESTClient
    Authenticator = HTTPBasicAuthenticator1
    Accept = 'application/json;q=0.9,text/plain;q=0.9,text/html'
    AcceptCharset = 'UTF-8'
    BaseURL = 'http://192.168.53.144:8082'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 80
    Top = 192
  end
  object RESTRequestValidarLogin: TRESTRequest
    Accept = 'application/json;q=0.9,text/plain;q=0.9,text/html'
    AcceptCharset = 'UTF-8'
    Client = RESTClient1
    Method = rmPOST
    Params = <
      item
        Name = 'login'
      end
      item
        Name = 'senha'
      end>
    Resource = 'ValidarLogin'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 216
    Top = 224
  end
  object RESTResponse1: TRESTResponse
    Left = 64
    Top = 304
  end
  object HTTPBasicAuthenticator1: THTTPBasicAuthenticator
    Username = 'testserver'
    Password = 'testserver'
    Left = 72
    Top = 240
  end
  object RESTRequestCadastro: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = 'Cadastro'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 216
    Top = 304
  end
end
