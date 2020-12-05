unit Cadastro;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.StdCtrls,REST.Types,
  FMX.ComboEdit;

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
  uses DataModule;


procedure TfrmCadastro.RectangleBottomClick(Sender: TObject);
var
 aux : integer;
begin
     DM.RESTRequestCadastro.Params.Clear;
     DM.RESTRequestCadastro.AddParameter('nome',edtNome.Text,TRESTRequestParameterKind.pkGETorPOST);
     DM.RESTRequestCadastro.AddParameter('login',edtlogin.Text,TRESTRequestParameterKind.pkGETorPOST);
     DM.RESTRequestCadastro.AddParameter('email',edtEmail.Text,TRESTRequestParameterKind.pkGETorPOST);
     DM.RESTRequestCadastro.AddParameter('tel',edtTel.Text,TRESTRequestParameterKind.pkGETorPOST);
     DM.RESTRequestCadastro.AddParameter('senha',edtSenha.Text,TRESTRequestParameterKind.pkGETorPOST);
     //if para verificar se for adm ou paciente..
     if(combo.Text = 'Administrador')then
        aux := 2
        else
         aux :=  1;
      edit1.Text := IntToStr(aux);
     DM.RESTRequestCadastro.AddParameter('codtipusu',edit1.Text,TRESTRequestParameterKind.pkGETorPOST);
     DM.RESTRequestCadastro.Execute;


end;

end.
