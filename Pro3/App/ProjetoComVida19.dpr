program ProjetoComVida19;

uses
  System.StartUpCopy,
  FMX.Forms,
  Login in 'Login.pas' {frmLogin},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  Principal in 'Principal.pas' {frmPrincipal},
  Cadastro in 'Cadastro.pas' {frmCadastro},
  PasswordRecover in 'PasswordRecover.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
