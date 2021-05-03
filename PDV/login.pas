unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    pnlLogin: TPanel;
    Image2: TImage;
    txtUsuario: TEdit;
    txtSenha: TEdit;
    ButtonOK: TSpeedButton;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure ButtonOKClick(Sender: TObject);
  private
    { Private declarations }
    Procedure centralizarPainel;
    Procedure login;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses Menu;

procedure TFrmLogin.ButtonOKClick(Sender: TObject);
begin
  if Trim(txtUsuario.Text) = '' then
  begin
      MessageDlg('Preencha o usu�rio!', mtInformation, mbOKCancel,0);
      txtUsuario.SetFocus;
      exit;
  end;

   if Trim(txtSenha.Text) = '' then
  begin
      MessageDlg('Preencha a senha!', mtInformation, mbOKCancel,0);
      txtSenha.SetFocus;
      exit;
  end;

  login;
end;

procedure TFrmLogin.centralizarPainel;
begin
   pnlLogin.Top := (FrmLogin.Height div 2) - (pnlLogin.Height div 2);
   pnlLogin.Left := (FrmLogin.Width div 2)  - (pnlLogin.Width div 2);

end;

procedure TFrmLogin.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  centralizarPainel;
end;

procedure TFrmLogin.login;
begin
// AQUI VIR� O C�DIGO DE LOGIN
FrmMenu := TFrmMenu.Create(FrmLogin);
FrmMenu.showModal;
end;

end.
