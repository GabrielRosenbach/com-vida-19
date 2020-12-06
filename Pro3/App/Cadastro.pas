unit Cadastro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.StdCtrls,REST.Types,
  FMX.ComboEdit, FMX.Ani;

type
  TfrmCadastro = class(TForm)
    imgPrincipal: TImage;
    imgLogo: TImage;
    edtNome: TEdit;
    edtEmail: TEdit;
    edtTel: TEdit;
    edtLogin: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    RectangleBottom: TRectangle;
    Combo: TComboEdit;
    FloatAnimation1: TFloatAnimation;
    Panel1: TPanel;
    procedure RectangleBottomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

uses DataModule,Login;


procedure TfrmCadastro.RectangleBottomClick(Sender: TObject);
var
 nome,login,senha,email,tel,erro:string;
 codtipusu : string;
  aux : integer;

begin
//inicializar o aux e verifiar se é adm ou paciente
 aux := 0;
  if(combo.Text = 'Administrador')then
    aux := 2
      else
         if(combo.Text='Paciente')then
            aux := 1;

  if((edtNome.text<>'')AND(edtLogin.text<>'')AND (edtSenha.text<>'')AND(aux<>0))then
  begin
    nome := edtNome.Text;
    login := edtLogin.Text;
    senha := edtSenha.Text;
    email := edtEmail.Text;
    tel := edtTel.Text;
    codtipusu := IntToStr(aux);

    if(DM.Cadastro(nome,login,senha,email,tel,codtipusu,erro)=false)then
      showmessage('Erro:'+erro)
        else showmessage('Usuário cadastrado');

     if not Assigned(frmCadastro) then
         Application.CreateForm(TFrmLogin, frmLogin);
         frmLogin.Show;
         Application.MainForm := frmLogin;
         frmCadastro.Close;
  end
     else

        showmessage('Os campos [nome] [login][senha][tipo usuário] precisam ser preenchidos.');

end;

end.
