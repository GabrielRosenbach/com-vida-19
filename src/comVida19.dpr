program comVida19;

uses
  Vcl.Forms,
  UnitHome in 'UnitHome.pas' {frmHome},
  dmPrincipal in 'dmPrincipal.pas' {dmHome: TDataModule},
  UnitLogin in 'formularios\login\UnitLogin.pas' {frmLogin},
  UnitConta in 'formularios\conta\UnitConta.pas' {frmConta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TdmHome, dmHome);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmConta, frmConta);
  Application.Run;
end.
