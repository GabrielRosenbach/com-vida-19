unit DataModule;

interface

uses
  System.SysUtils, System.Classes,uDWDataModule, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.FMXUI.Wait, Data.DB,
  FireDAC.Comp.Client, uDWAbout, uRESTDWServerEvents,uDWJSONObject,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,System.Json, uDWConsts;

type
  TDM = class(TServerMethodDataModule)
    FDConnection1: TFDConnection;
    Driver: TFDPhysPgDriverLink;
    DWServerEvents1: TDWServerEvents;
    FDQUsuario: TFDQuery;
    procedure DWServerEvents1EventsValidarLoginReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure DWServerEvents1EventscadastroReplyEvent(var Params: TDWParams;
      var Result: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDM.DWServerEvents1EventscadastroReplyEvent(var Params: TDWParams;
  var Result: string);
  var
  FDQCadastro : TFDQuery;
  json : uDWJSONObject.TJSONValue;
begin

  try
   FDQCadastro := TFDQuery.Create(nil);
   FDQCadastro.Connection := DM.FDConnection1;
   json := uDWJSONObject.TJSONValue.Create;

   FDQCadastro.Active := false;
   FDQCadastro.SQL.Clear;
   FDQCadastro.SQL.Add('INSERT INTO USUARIO(LOGINusu,NOMEUSU,SENHAUSU,EMAILUSU,TELUSU,CODTIPUSU');
   FDQCadastro.SQL.Add('Values(login,nome,senha,email,tel,1)');
    FDQCadastro.ParamByName('nome').Value := params.ItemsString['nome'].AsString;
   FDQCadastro.ParamByName('loginusu').Value := params.ItemsString['login'].AsString;
   FDQCadastro.ParamByName('senha').Value := params.ItemsString['senha'].AsString;
   FDQCadastro.ParamByName('email').Value := params.ItemsString['email'].AsString;
   FDQCadastro.ParamByName('tel').Value := params.ItemsString['tel'].AsString;
   FDQCadastro.Active := true;

   json.LoadFromDataset('', FDQCadastro,false,jmPUREJson);

   Result := json.ToJSON;

  finally
      json.DisposeOf;
       FDQCadastro.DisposeOf;
  end;
end;

procedure TDM.DWServerEvents1EventsValidarLoginReplyEvent(var Params: TDWParams;
  var Result: string);
  var
  json : TJsonObject;
begin
    try
       json := TJsonObject.Create;
       if (Params.ItemsString['login'].AsString ='') then
       begin
         json.AddPair('retorno','Usuario n�o informado');
         Result := json.ToString;
         exit;
       end;



      try
      FDQUsuario.Active := false;
      FDQUsuario.SQL.Clear;
      FDQUsuario.SQL.Add('SELECT * FROM USUARIO WHERE  SENHAUSU=:senha and LOGINUSU=:login');
      FDQUsuario.ParamByName('login').Value := params.ItemsString['login'].AsString;
      FDQUsuario.ParamByName('senha').Value := params.ItemsString['senha'].AsString;

      FDQUsuario.Active := true;

      if(FDQUsuario.RecordCount > 0)then
      json.AddPair('retorno','Certo')
      else
      json.AddPair('retorno','Usuario ou senha Invalida');

      Result := json.ToString;

      except
       json.AddPair('retorno','Erro ao validar login');
       Result := json.ToString
     end;

    finally
      json.DisposeOf;
    end;

end;

end.
