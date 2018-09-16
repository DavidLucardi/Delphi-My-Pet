unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, sSkinManager, Menus, ImgList, ComCtrls, ToolWin,
  sToolBar, sStatusBar, jpeg, ExtCtrls, MMSystem, StdCtrls, sLabel;

type
  TForm1 = class(TForm)
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    About1: TMenuItem;
    FormPenitipan1: TMenuItem;
    FormPengambilan1: TMenuItem;
    N1: TMenuItem;
    Keluar1: TMenuItem;
    Pengaturan1: TMenuItem;
    sToolBar1: TsToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    sStatusBar1: TsStatusBar;
    Image1: TImage;
    Timer1: TTimer;
    procedure Keluar1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormPenitipan1Click(Sender: TObject);
    procedure FormPengambilan1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Pengaturan1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TForm1.Keluar1Click(Sender: TObject);
begin
sndPlaySound('notify.wav', SND_ASYNC);
Form1.Hide;
Form2.Show;
Form2.sComboBox1.Text := 'Pilih Pengguna';
Form2.sEdit2.Text := '';
Form2.sEdit2.SetFocus;
end;

procedure TForm1.About1Click(Sender: TObject);
begin
sndPlaySound('notify.wav', SND_ASYNC);
Form3.ShowModal;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
sndPlaySound('notify.wav', SND_ASYNC);
Form1.Hide;
Form2.Show;
Form2.sComboBox1.Text := 'Pilih Pengguna';
Form2.sEdit2.Text := '';
Form2.sEdit2.SetFocus;
end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
sndPlaySound('notify.wav', SND_ASYNC);
Form1.Hide;
Form2.Show;
Form2.sComboBox1.Text := 'Pilih Pengguna';
Form2.sEdit2.Text := '';
Form2.sEdit2.SetFocus;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
const
  Chars = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ!?/*+-';
var
  S: string;
  i, N: integer;
begin
Randomize;
  S := '';
  for i := 1 to 6 do begin   {... menampilkan 6 digit character...}
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Form4.sLabel7.Caption := S;
sndPlaySound('notify.wav', SND_ASYNC);
sStatusBar1.Panels[2].Text := 'Open Form Penitipan';
Form4.ShowModal;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
sndPlaySound('notify.wav', SND_ASYNC);
sStatusBar1.Panels[2].Text := 'Open Form Pengambilan';
Form5.ShowModal;
end;

procedure TForm1.FormPenitipan1Click(Sender: TObject);
begin
sndPlaySound('notify.wav', SND_ASYNC);
sStatusBar1.Panels[2].Text := 'Open Form Penitipan';
Form4.ShowModal;
end;

procedure TForm1.FormPengambilan1Click(Sender: TObject);
begin
sndPlaySound('notify.wav', SND_ASYNC);
sStatusBar1.Panels[2].Text := 'Open Form Pengambilan';
Form5.ShowModal;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
sndPlaySound('notify.wav', SND_ASYNC);
sStatusBar1.Panels[2].Text := 'Open Form Pengaturan';
Form6.ShowModal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
sStatusBar1.Panels[0].Text := FormatDateTime('dd/mm/yyyy', date);
sStatusBar1.Panels[1].Text := TimetoStr(Now);
end;

procedure TForm1.Pengaturan1Click(Sender: TObject);
begin
sndPlaySound('notify.wav', SND_ASYNC);
sStatusBar1.Panels[2].Text := 'Open Form Pengaturan';
Form6.ShowModal;
end;

end.
