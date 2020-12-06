unit Login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects,REST.Types;

type
  TfrmLogin = class(TForm)
    imgPrincipal: TImage;
    edtLogin: TEdit;
    edtSenha: TEdit;
    lblLogin: TLabel;
    RectLogin: TRectangle;
    imgLogo: TImage;
    lblRegister: TLabel;
    imgBottom: TImage;
    imgLogin: TImage;
    lblForgotPass: TLabel;
    imgPass: TImage;
    AreaPass: TImage;
    imgRecover: TImage;
    Panel: TPanel;
    imgFechar: TImage;
    procedure RectLoginClick(Sender: TObject);
    procedure imgBottomClick(Sender: TObject);
    procedure imgRecoverClick(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

uses DataModule,Principal,Cadastro,PasswordRecover;


procedure TfrmLogin.imgBottomClick(Sender: TObject);
begin
     if not Assigned(frmCadastro) then
         Application.CreateForm(TFrmCadastro, frmCadastro);
         frmCadastro.Show;
         Application.MainForm := frmCadastro;
         frmLogin.Close;
end;

procedure TfrmLogin.imgFecharClick(Sender: TObject);
begin
    frmLogin.Close;
end;

procedure TfrmLogin.imgRecoverClick(Sender: TObject);
begin
    if not Assigned(frmRecover) then
      Application.CreateForm(TfrmRecover, frmRecover);
      frmRecover.show;
      Application.MainForm := frmRecover;
      frmLogin.Close;
end;

procedure TfrmLogin.RectLoginClick(Sender: TObject);
begin
     DM.RESTRequestValidarLogin.Params.Clear;
    DM.RESTRequestValidarLogin.AddParameter('login',edtLogin.Text,TRESTRequestparameterKind.pkGETorPOST);
    DM.RESTRequestValidarLogin.AddParameter('senha',edtSenha.Text,TrestRequestparameterKind.pkGETorPOST);
    DM.RESTRequestValidarLogin.Execute;

    if(DM.RESTRequestValidarLogin.Response.JSONValue.ToString.Equals('{"retorno":"Certo"}'))then
      begin
        if not Assigned(frmPrincipal) then
          Application.CreateForm(TFrmPrincipal, frmPrincipal);
          frmPrincipal.show;
          Application.MainForm := frmPrincipal;
          frmLogin.Close;
      end
      else
      begin
        showmessage(DM.RESTRequestValidarLogin.Response.JSONValue.ToString);
      end;
end;

end.
