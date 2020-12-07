unit UnitConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.WinXPickers;

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
    Label3: TLabel;
    btnSalvar: TButton;
    Label4: TLabel;
    Label5: TLabel;
    edtRua: TDBEdit;
    Label6: TLabel;
    edtNumero: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    cbbEstado: TDBLookupComboBox;
    DatePicker1: TDatePicker;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
  private
    function SalvarEndereco(): Boolean;
    procedure ManipularCidade();
    function BuscarIdCidade(): Integer;
    procedure ManipularEndereco();
  public
    { Public declarations }
  end;

var
  frmConta: TfrmConta;

implementation

{$R *.dfm}

uses dmPrincipal, UnitHome;

procedure TfrmConta.btnSalvarClick(Sender: TObject);
begin
  dmHome.FDQConta.Edit;
  dmHome.FDQConta.Post;



  if (dmHome.FDQPaciente.RowsAffected > 0) then
  begin
    dmHome.FDQPaciente.Insert;
    dmHome.FDQPaciente.FieldByName('codusu').AsInteger := dmHome.FDQConta.Fields.FieldByName('codusu').AsInteger;
    dmHome.FDQPaciente.FieldByName('codend').AsInteger := dmHome.FDQEndereco.Fields.FieldByName('codend').AsInteger;
    dmHome.FDQPaciente.FieldByName('datanasusu').AsDateTime := Now;
    dmHome.FDQPaciente.Post;
  end
  else
  begin
    dmHome.FDQPaciente.Edit;
    dmHome.FDQPaciente.FieldByName('codusu').AsInteger := dmHome.FDQConta.Fields.FieldByName('codusu').AsInteger;
    dmHome.FDQPaciente.FieldByName('codend').AsInteger := dmHome.FDQEndereco.Fields.FieldByName('codend').AsInteger;
    dmHome.FDQPaciente.FieldByName('datanasusu').AsDateTime := Now;
    dmHome.FDQPaciente.Post;
  end;
end;

procedure TfrmConta.ManipularCidade();
begin
  if (dmHome.FDQCidade.RowsAffected > 0) then
  begin
    dmHome.FDQCidade.Insert;
    dmHome.FDQCidade.Post;
  end
  else
  begin
    dmHome.FDQCidade.Edit;
    dmHome.FDQCidade.Post;
  end;
end;

procedure TfrmConta.ManipularEndereco();
begin
  if (dmHome.FDQEndereco.RowsAffected > 0) then
  begin
    dmHome.FDQEndereco.Insert;
    dmHome.FDQEndereco.Post;
  end
  else
  begin
    dmHome.FDQEndereco.Edit;
    dmHome.FDQEndereco.Post;
  end;
end;

function TfrmConta.BuscarIdCidade(): Integer;
begin
  dmHome.FDQSelect.SQL.Clear;
  dmHome.FDQSelect.SQL.Add('select max(codcid) from cidade');
  dmHome.FDQSelect.Post;
end;



function TfrmConta.SalvarEndereco(): Boolean;
begin
  dmHome.FDQPaciente.FieldByName('codusu').AsInteger := dmHome.FDQConta.Fields.FieldByName('codusu').AsInteger;
  dmHome.FDQPaciente.FieldByName('codend').AsInteger := dmHome.FDQEndereco.Fields.FieldByName('codend').AsInteger;
  dmHome.FDQPaciente.FieldByName('datanasusu').AsDateTime := Now;
  dmHome.FDQPaciente.Post;
end;

procedure TfrmConta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmHome.DSEstado.Enabled := FALSE;
  dmHome.FDQEstado.Active := FALSE;
  dmHome.DSCidade.Enabled := FALSE;
  dmHome.FDQCidade.Active := FALSE;
  dmHome.DSEndereco.Enabled := FALSE;
  dmHome.FDQEndereco.Active := FALSE;
  dmHome.DSPaciente.Enabled := FALSE;
  dmHome.FDQPaciente.Active := FALSE;
  dmHome.DSConta.Enabled := FALSE;
  dmHome.FDQConta.Active := FALSE;
  dmHome.FDConnection1.Connected := FALSE;
end;

procedure TfrmConta.FormShow(Sender: TObject);
var
  rua, numero, bairro, cidade, estado: string;
begin
  dmHome.FDConnection1.Connected := TRUE;
  dmHome.FDQConta.Active := TRUE;
  dmHome.DSConta.Enabled := TRUE;
  dmHome.FDQPaciente.Active := TRUE;
  dmHome.DSPaciente.Enabled := TRUE;
  dmHome.FDQEndereco.Active := TRUE;
  dmHome.DSEndereco.Enabled := TRUE;
  dmHome.FDQCidade.Active := TRUE;
  dmHome.DSCidade.Enabled := TRUE;
  dmHome.FDQEstado.Active := TRUE;
  dmHome.DSEstado.Enabled := TRUE;

  dmHome.FDQConta.SQL.Add(' where codusu = :pCodUsuario;');
  dmHome.FDQConta.ParamByName('pCodUsuario').AsInteger := frmHome.Token;
  dmHome.FDQConta.Open;

  dmHome.FDQPaciente.SQL.Add(' where codusu = :pCodUsuario;');
  dmHome.FDQPaciente.ParamByName('pCodUsuario').AsInteger := frmHome.Token;
  dmHome.FDQPaciente.Open;

  dmHome.FDQEndereco.SQL.Add(' where codend = :pCodEndereco;');
  dmHome.FDQEndereco.ParamByName('pCodEndereco').AsInteger := dmHome.FDQPaciente.Fields.FieldByName('codend').AsInteger;
  dmHome.FDQEndereco.Open;

  dmHome.FDQCidade.SQL.Add(' where codcid = :pCodCidade;');
  dmHome.FDQCidade.ParamByName('pCodCidade').AsInteger := dmHome.FDQEndereco.Fields.FieldByName('codcid').AsInteger;
  dmHome.FDQCidade.Open;

  frmConta.cbbEstado.KeyValue := dmHome.FDQCidade.Fields.FieldByName('codest').AsString;


end;

end.
