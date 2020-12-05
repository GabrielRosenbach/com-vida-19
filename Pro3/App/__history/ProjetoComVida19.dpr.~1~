program ProjetoComVida19;

uses
  System.StartUpCopy,
  FMX.Forms,
  Login in 'Login.pas' {frmLogin},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  Principal in 'Principal.pas' {frmPrincipal},
  Cadastro in 'Cadastro.pas' {Form1},
  PasswordRecover in 'PasswordRecover.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
