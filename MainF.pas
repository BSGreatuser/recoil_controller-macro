unit MainF;

interface

uses
  Winapi.Windows, Winapi.Messages, themes, styles, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,   idhttp, IdURI,
  IdBaseComponent, IdComponent, IdTCPConnection, ShellApi, IdTCPClient, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TMain = class(TForm)
    CheckBox1: TCheckBox;
    ��ġ: TTrackBar;
    Recoli1: TLabel;
    Ÿ�̸�: TTimer;
    Timer1: TTimer;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Ÿ�̸�Timer(Sender: TObject);
    procedure ��ġChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.Button1Click(Sender: TObject);
begin
 ShellExecute(0, 'OPEN', 'https://bs777.xyz', nil, nil, SW_SHOW);
end;

procedure TMain.CheckBox1Click(Sender: TObject);
begin
if Checkbox1.Checked = true then begin
Ÿ�̸�.Enabled := true;
��ġ.Enabled := false;
end else begin
Ÿ�̸�.Enabled := false;
��ġ.Enabled := true;
end;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  TStyleManager.SetStyle(TStyleManager.LoadFromResource(HInstance, 'a'));
end;






procedure TMain.Timer1Timer(Sender: TObject);
begin
if GetAsyncKeyState(VK_F1) <> 0 then  begin
  Checkbox1.Checked := false;
end;
end;


procedure TMain.��ġChange(Sender: TObject);
begin
 Recoli1.Caption := 'Recoli' + ':' + InTtostr(��ġ.Position);
end;

procedure TMain.Ÿ�̸�Timer(Sender: TObject);
begin
 {$I .\Include\Virtualizer_Start.inc}
 if (GetAsyncKeyState(VK_LBUTTON) <> 0 ) then
 mouse_event(MOUSEEVENTF_Move,0,(Main.��ġ.Position),0,0);
   {$I .\Include\Virtualizer_End.inc}
end;

end.
