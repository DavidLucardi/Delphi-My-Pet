unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sEdit, sLabel, ExtCtrls, sPanel,
  sSkinProvider, sSkinManager, jpeg, sComboBox, DB, ADODB;

type
  TForm2 = class(TForm)
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sEdit2: TsEdit;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    Image1: TImage;
    sComboBox1: TsComboBox;
    ADOTable1: TADOTable;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.sBitBtn1Click(Sender: TObject);
begin
If sComboBox1.Text <> 'Pilih Pengguna' then
If sEdit2.Text = Edit1.Text then
begin
Application.CreateForm(TForm1, Form1);
Form1.Show;
Form2.Hide;
Form1.sStatusBar1.Panels[3].Text := Form2.sComboBox1.Text;
Form1.sStatusBar1.Panels[4].Text := Form2.Edit2.Text;
end
else
ShowMessage('Password belum diisi');
end;

procedure TForm2.sBitBtn2Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
sComboBox1.Items.Add(ADOTable1.FieldByName('Username').AsString);
end;

procedure TForm2.sComboBox1Change(Sender: TObject);
begin
Edit1.Text := ADOTable1.FieldByName('Password').AsString;
Edit2.Text := Adotable1.FieldByName('Level').AsString;
end;

end.
