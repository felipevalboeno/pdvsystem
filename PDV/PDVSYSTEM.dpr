program PDVSYSTEM;

uses
  Vcl.Forms,
  login in 'login.pas' {FrmLogin},
  Menu in 'Menu.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
