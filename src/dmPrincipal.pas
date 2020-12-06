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
    FDQContacodusu: TIntegerField;
    FDQContacodtipusu: TIntegerField;
    FDQContanomeusu: TWideStringField;
    FDQContatelusu: TWideStringField;
    FDQContaloginusu: TWideStringField;
    FDQContasenhausu: TWideStringField;
    FDQContacodpac: TIntegerField;
    FDQContacodusu_1: TIntegerField;
    FDQContacodend: TIntegerField;
    FDQContaaltpac: TBCDField;
    FDQContapesopac: TBCDField;
    FDQContadatanaspac: TDateField;
    FDQContacodend_1: TIntegerField;
    FDQContacodcid: TIntegerField;
    FDQContaruaend: TWideStringField;
    FDQContanumend: TIntegerField;
    FDQContabaiend: TWideStringField;
    FDQContaemailusu: TWideStringField;
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
