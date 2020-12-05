unit PasswordRecover;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Edit;

type
  TfrmRecover = class(TForm)
    Image1: TImage;
    edtLogin: TEdit;
    edtEmail: TEdit;
    Rectangle1: TRectangle;
    lblRecover: TLabel;
    edtSenha: TEdit;
    procedure Rectangle1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecover: TfrmRecover;

implementation

{$R *.fmx}
   uses DataModule,Login;
procedure TfrmRecover.Rectangle1Click(Sender: TObject);
var
login, senha, email : string;
begin
   login := edtLogin.Text;
   senha := edtSenha.Text;
   email := edtEmail.Text;

   if(DM.Recover(login,email,senha)=true)then
        showmessage ('Senha Redefinida');


    if not Assigned(frmLogin) then
         Application.CreateForm(TFrmLogin, frmLogin);
         frmLogin.Show;
         Application.MainForm := frmLogin;
         frmRecover.Close;
end;

end.
