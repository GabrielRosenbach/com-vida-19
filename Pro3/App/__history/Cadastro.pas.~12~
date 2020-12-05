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
    Edit1: TEdit;
    FloatAnimation1: TFloatAnimation;
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

uses DataModule;


procedure TfrmCadastro.RectangleBottomClick(Sender: TObject);
var
 nome,login,senha,email,tel,erro:string;
 codtipusu : string;
  aux : integer;
begin
  if(combo.Text = 'Administrador')then
    aux := 2
      else aux := 1;

  if((edtNome.text<>'')AND(edtLogin.text<>'')AND (edtSenha.text<>'')AND(edtEmail.text<>'') AND(edttel.text<>'')and (aux<>''))then
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
  end
     else
        showmessage('Os campos precisam ser preenchidos.');

end;

end.
