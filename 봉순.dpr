program ºÀ¼ø;

{$R *.dres}

uses
  Vcl.Forms,
  MainF in 'MainF.pas' {Main};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
