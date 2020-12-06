unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.Components,
  Data.Bind.DBScope, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.DB, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors;

type
  TfrmLogin = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    edtUsuarioLogin: TEdit;
    edtUsuarioCadastro: TEdit;
    btnCadastro: TButton;
    btnLogin: TButton;
    Label1: TLabel;
    edtTelefone: TEdit;
    Label4: TLabel;
    edtSenhaLogin: TEdit;
    Label5: TLabel;
    edtEmail: TEdit;
    Label6: TLabel;
    edtSenhaCadastro: TEdit;
    Label7: TLabel;
    edtNome: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    lblLoginInvalido: TLabel;
    lblCadastroInvalido: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCadastroClick(Sender: TObject);
  private
    procedure MensagemErro(mensagem: string; compMensagem: TLabel);
    function VerificarLogin(usuario, senha: string): Boolean;
    function EfetuarCadastro(nome, email, telefone, usuario, senha: string): Boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses dmPrincipal, UnitHome;

procedure TfrmLogin.btnCadastroClick(Sender: TObject);
var
  nomeText, telefoneText, emailText, usuarioText, senhaText: string;
begin
  nomeText := edtNome.Text;

  if (nomeText = '') then
  begin
    MensagemErro('Campo "Nome" n�o pode ser vazio!', lblCadastroInvalido);
    edtNome.SetFocus;
    exit;
  end;

  usuarioText := edtUsuarioCadastro.Text;

  if (nomeText = '') then
  begin
    MensagemErro('Campo "Usu�rio" n�o pode ser vazio!', lblCadastroInvalido);
    edtUsuarioCadastro.SetFocus;
    exit;
  end;

  senhaText := edtSenhaCadastro.Text;

  if (senhaText = '') then
  begin
    MensagemErro('Campo "Senha" n�o pode ser vazio!', lblCadastroInvalido);
    edtSenhaCadastro.SetFocus;
    exit;
  end;

  emailText:= edtEmail.Text;
  telefoneText:= edtTelefone.Text;

  if (VerificarLogin(usuarioText, senhaText)) then
  begin
    MensagemErro('Este usu�rio j� existe!', lblCadastroInvalido);
    exit;
  end;

  if (EfetuarCadastro(nomeText, emailText, telefoneText, usuarioText, senhaText)) then
  begin
    VerificarLogin(usuarioText, senhaText);
    frmHome.Token := dmHome.FDQEntrar.Fields[0].Value;
    frmHome.NomeUsuario := dmHome.FDQEntrar.Fields[1].Value;
    frmLogin.Close;
  end
  else
  begin
    MensagemErro('N�o foi poss�vel realizar essa opera��o! Tente mais tarde!', lblCadastroInvalido);
    exit;
  end;

end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  usuarioText, senhaText: string;
  retorno: Boolean;
begin
  usuarioText := edtUsuarioLogin.Text;

  if (usuarioText = '') then
  begin
    MensagemErro('Campo "Usu�rio" n�o pode ser vazio!', lblLoginInvalido);
    edtUsuarioLogin.SetFocus;
    exit;
  end;

  senhaText := edtSenhaLogin.Text;

  if (senhaText = '') then
  begin
    MensagemErro('Campo "Senha" n�o pode ser vazio!', lblLoginInvalido);
    edtSenhaLogin.SetFocus;
    exit;
  end;

  retorno := VerificarLogin(usuarioText, senhaText);

  if (NOT retorno) then
  begin
    MensagemErro('"Usu�rio" e "Senha" n�o conferem!', lblLoginInvalido);
    exit;
  end;

  frmHome.Token := dmHome.FDQEntrar.Fields[0].Value;
  frmHome.NomeUsuario := dmHome.FDQEntrar.Fields[1].Value;
  frmLogin.Close;
end;

function TfrmLogin.EfetuarCadastro(nome, email, telefone, usuario, senha: string): Boolean;
begin
  dmHome.FDQEntrar.SQL.Clear;
  dmHome.FDQEntrar.SQL.Add('insert into usuario (codtipusu, nomeusu, emailusu, telusu, loginusu, senhausu) values (1, :pNome, :pEmail, :pTelefone, :pUsuario, :pSenha)');
  dmHome.FDQEntrar.ParamByName('pNome').AsString := nome;
  dmHome.FDQEntrar.ParamByName('pEmail').AsString := email;
  dmHome.FDQEntrar.ParamByName('pTelefone').AsString := telefone;
  dmHome.FDQEntrar.ParamByName('pUsuario').AsString := usuario;
  dmHome.FDQEntrar.ParamByName('pSenha').AsString := senha;
  dmHome.FDQEntrar.ExecSQL;

  Result:= dmHome.FDQEntrar.RowsAffected > 0;
end;

function TfrmLogin.VerificarLogin(usuario, senha: string): Boolean;
begin
  dmHome.FDQEntrar.SQL.Clear;
  dmHome.FDQEntrar.SQL.Add('select codusu, nomeusu from usuario where loginusu = :pUsuario and senhausu = :pSenha');
  dmHome.FDQEntrar.ParamByName('pUsuario').AsString := usuario;
  dmHome.FDQEntrar.ParamByName('pSenha').AsString := senha;
  dmHome.FDQEntrar.Open;

  Result:= dmHome.FDQEntrar.RowsAffected > 0;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmHome.DSEntrar.Enabled := FALSE;
  dmHome.FDQEntrar.Active := FALSE;
  dmHome.FDConnection1.Connected := FALSE;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  edtUsuarioLogin.Clear;
  edtSenhaLogin.Clear;
  edtNome.Clear;
  edtTelefone.Clear;
  edtEmail.Clear;
  edtUsuarioCadastro.Clear;
  edtSenhaCadastro.Clear;
  dmHome.FDConnection1.Connected := TRUE;
  dmHome.FDQEntrar.Active := TRUE;
  dmHome.DSEntrar.Enabled := TRUE;
end;

procedure TfrmLogin.MensagemErro(mensagem: string; compMensagem: TLabel);
begin
  compMensagem.Caption := mensagem;
  compMensagem.Visible := TRUE;
end;
end.
