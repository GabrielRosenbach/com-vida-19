unit UnitHome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

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
    procedure UsuarioLogado();
    procedure UsuarioDeslogado();
    procedure itmLoginClick(Sender: TObject);
    procedure itmLogoutClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
      Token: Integer;
      NomeUsuario: string;
  end;

var
  frmHome: TfrmHome;
  Token: Integer;

implementation

{$R *.dfm}

uses UnitLogin, UnitConta;

procedure TfrmHome.UsuarioLogado();
begin
  TMenuItem(FindComponent('itmLogin')).Visible:= FALSE;
  TMenuItem(FindComponent('itmLogout')).Visible:= TRUE;
  TMenuItem(FindComponent('itmAnalisarSintomas')).Visible:= TRUE;
  TMenuItem(FindComponent('itmConta')).Visible:= TRUE;
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
  TMenuItem(FindComponent('itmLogin')).Visible:= TRUE;
  TMenuItem(FindComponent('itmLogout')).Visible:= FALSE;
  TMenuItem(FindComponent('itmAnalisarSintomas')).Visible:= FALSE;
  TMenuItem(FindComponent('itmConta')).Visible:= FALSE;
end;

end.
