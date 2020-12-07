unit UnitHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmHome = class(TForm)
    menuHome: TMainMenu;
    itmUsuario: TMenuItem;
    itmConsulta: TMenuItem;
    itmSair: TMenuItem;
    itmLogin: TMenuItem;
    itmLogout: TMenuItem;
    itmAnalisarSintomas: TMenuItem;
    itmConta: TMenuItem;
    lblBemVindo: TLabel;
    procedure UsuarioLogado();
    procedure UsuarioDeslogado();
    procedure itmLoginClick(Sender: TObject);
    procedure itmLogoutClick(Sender: TObject);
    procedure itmContaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    var
      Token: Integer;
      NomeUsuario: string;
  end;

var
  frmHome: TfrmHome;

implementation

{$R *.dfm}

uses UnitLogin, UnitConta;

procedure TfrmHome.UsuarioLogado();
begin
  TMenuItem(FindComponent('itmLogin')).Visible:= FALSE;
  TMenuItem(FindComponent('itmLogout')).Visible:= TRUE;
  TMenuItem(FindComponent('itmAnalisarSintomas')).Visible:= TRUE;
  TMenuItem(FindComponent('itmConta')).Visible:= TRUE;
  TMenuItem(FindComponent('itmConsulta')).Visible:= TRUE;

  lblBemVindo.Caption:= NomeUsuario + ', que bom vê-lo(a) novamente!';
end;

procedure TfrmHome.FormShow(Sender: TObject);
begin
 UsuarioDeslogado();
end;

procedure TfrmHome.itmContaClick(Sender: TObject);
begin
  frmConta.ShowModal;
end;

procedure TfrmHome.itmLoginClick(Sender: TObject);
begin
  frmLogin.ShowModal();
  if (Token <> null) then
    UsuarioLogado();
end;

procedure TfrmHome.itmLogoutClick(Sender: TObject);
begin
  UsuarioDeslogado();
end;

procedure TfrmHome.UsuarioDeslogado();
begin
  Token := 0;
  NomeUsuario := '';

  lblBemVindo.Caption:= 'Você é novo por aqui? Efetue o cadastro!';

  TMenuItem(FindComponent('itmLogin')).Visible:= TRUE;
  TMenuItem(FindComponent('itmLogout')).Visible:= FALSE;
  TMenuItem(FindComponent('itmAnalisarSintomas')).Visible:= FALSE;
  TMenuItem(FindComponent('itmConta')).Visible:= FALSE;
  TMenuItem(FindComponent('itmConsulta')).Visible:= FALSE;
end;

end.
