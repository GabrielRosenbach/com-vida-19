unit Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, uDWAbout, uRESTDWBase, uRESTDWServerEvents,DataModule,
  FMX.Edit, FMX.Objects;

type
  TfrmPrincipal = class(TForm)
    lblAtivoDesativo: TLabel;
    Switch: TSwitch;
    RSPooler: TRESTServicePooler;
    Image1: TImage;
    Rectangle1: TRectangle;
    procedure InativoAtivo(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SwitchSwitch(Sender: TObject);
    procedure ConectaBanco();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

    procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         DM.FDConnection1.Connected := false;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
    RSPooler.ServerMethodClass := TDM;
    RSPooler.Active := Switch.IsChecked;
    ConectaBanco();
end;

procedure TfrmPrincipal.InativoAtivo;
    begin
         if(Switch.isChecked = True)then
         lblAtivoDesativo.Text := 'Servidor Ativado'
         else
          lblAtivoDesativo.Text := 'Servidor Desativado';
    end;


procedure TfrmPrincipal.SwitchSwitch(Sender: TObject);
begin
     RSPooler.Active := Switch.IsChecked;
end;

procedure TfrmPrincipal.ConectaBanco();
begin
  try
    DM.FDConnection1.Params.Values['DriverID'] := 'PG';
    DM.FDConnection1.Params.Values['Database'] := 'teste_trabalho';
    DM.FDConnection1.Params.Values['User_name'] := 'postgres';
    DM.FDConnection1.Params.Values['Password'] := 'postgres';
    DM.FDConnection1.Connected := true;
 except
   showmessage('Erro ao conectar ao Banco de dados.');

 end; end;

end.
