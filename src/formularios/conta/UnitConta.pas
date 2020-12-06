unit UnitConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmConta = class(TForm)
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtNome: TDBEdit;
    Label2: TLabel;
    edtEmail: TDBEdit;
    Label13: TLabel;
    edtTelefone: TDBEdit;
    Label14: TLabel;
    edtLogin: TDBEdit;
    Label15: TLabel;
    edtSenha: TDBEdit;
    Label16: TLabel;
    edtAltura: TDBEdit;
    Label17: TLabel;
    edtPeso: TDBEdit;
    Label18: TLabel;
    edtDataNasc: TDBEdit;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConta: TfrmConta;

implementation

{$R *.dfm}

uses dmPrincipal;

end.
