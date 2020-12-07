unit dmPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TdmHome = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDQEntrar: TFDQuery;
    FDQEntrarcodusu: TIntegerField;
    FDQEntrarnomeusu: TWideStringField;
    DSEntrar: TDataSource;
    FDQConta: TFDQuery;
    DSConta: TDataSource;
    FDQEstado: TFDQuery;
    DSEstado: TDataSource;
    FDQEstadocodest: TIntegerField;
    FDQEstadocodreg: TIntegerField;
    FDQEstadonomest: TWideStringField;
    FDQEstadosigest: TWideStringField;
    FDQPaciente: TFDQuery;
    FDQEndereco: TFDQuery;
    DSPaciente: TDataSource;
    DSEndereco: TDataSource;
    FDQCidade: TFDQuery;
    DSCidade: TDataSource;
    FDQContanomeusu: TWideStringField;
    FDQContaemailusu: TWideStringField;
    FDQContatelusu: TWideStringField;
    FDQContaloginusu: TWideStringField;
    FDQContasenhausu: TWideStringField;
    FDQPacientealtpac: TBCDField;
    FDQPacientepesopac: TBCDField;
    FDQPacientedatanaspac: TDateField;
    FDQEnderecoruaend: TWideStringField;
    FDQEndereconumend: TIntegerField;
    FDQEnderecobaiend: TWideStringField;
    FDQCidadenomcid: TWideStringField;
    FDQCidadecodest: TIntegerField;
    FDQContacodusu: TIntegerField;
    FDQPacientecodpac: TIntegerField;
    FDQPacientecodend: TIntegerField;
    FDQEnderecocodcid: TIntegerField;
    FDQCidadecepcid: TWideStringField;
    FDQPacientecodusu: TIntegerField;
    FDQEnderecocodend: TIntegerField;
    FDQCidadecodcid: TIntegerField;
  private
    { Private declarations }
  public
  end;

var
  dmHome: TdmHome;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.
