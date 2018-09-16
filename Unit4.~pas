unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sSpinEdit, sComboBox, sEdit, sLabel,
  ExtCtrls, sPanel, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, ComCtrls, DB, ADODB,
  PrnDbgeh, PrViewEh, Printers;

type
  TForm4 = class(TForm)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sComboBox1: TsComboBox;
    sBitBtn1: TsBitBtn;
    sPanel2: TsPanel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    sComboBox2: TsComboBox;
    sBitBtn2: TsBitBtn;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    sLabel7: TsLabel;
    sLabel10: TsLabel;
    ADOTable1NoForm: TWideStringField;
    ADOTable1NamaPemilik: TWideStringField;
    ADOTable1NomerTelepon: TWideStringField;
    ADOTable1Alamat: TWideStringField;
    ADOTable1NamaHewan: TWideStringField;
    ADOTable1JenisHewan: TWideStringField;
    ADOTable1Makanan: TWideStringField;
    ADOTable1TitipTanggal: TWideStringField;
    ADOTable1Username: TWideStringField;
    ADOTable1HargaMakanan: TWideStringField;
    ADOTable1TitipPerHari: TWideStringField;
    DBGridEh1: TDBGridEh;
    DateTimePicker1: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sComboBox1Change(Sender: TObject);
    procedure sComboBox2Change(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit7;

{$R *.dfm}

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.sStatusBar1.Panels[2].Text := 'Ready';
end;

procedure TForm4.sComboBox1Change(Sender: TObject);
begin
If sComboBox1.Text = 'Anjing' then
begin
Edit1.Text := '50000';
ShowMessage('Harga 50.000 per-Hari');
end
else
begin
Edit1.Text := '30000';
ShowMessage('Harga 30.000 per-Hari');
end;
end;

procedure TForm4.sComboBox2Change(Sender: TObject);
begin
If sComboBox2.Text = 'AJ-BIS-Chicken' then
begin
Edit2.Text := '20000';
ShowMessage('Harga 20.000 per-Bungkus');
end;
If sComboBox2.Text = 'AJ-BIS-Lamb' then
begin
Edit2.Text := '70000';
ShowMessage('Harga 70.000 per-Bungkus');
end;
If sComboBox2.Text = 'KC-Friskies Pure Tuna' then
begin
Edit2.Text := '17000';
ShowMessage('Harga 17.000 per-Bungkus');
end;
If sComboBox2.Text = 'KC-Eureka Holistic' then
begin
Edit2.Text := '80000';
ShowMessage('Harga 80.000 per-Bungkus');
end;
end;

procedure TForm4.sBitBtn2Click(Sender: TObject);
Var
  butsel : Integer;
begin
butsel := MessageDlg('Apakah anda yakin ingin menghapus data ini...?',mtConfirmation, [mbYes,mbNO], 0);
  if butsel = mrYes then
  begin
ADOTable1.Delete;
 end;
  end;

procedure TForm4.sBitBtn1Click(Sender: TObject);
const
  Chars = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ!?/*+-';
var
  S: string;
  i, N: integer;
begin
if sEdit1.Text <> '' then
if sEdit2.Text <> '' then
if sEdit3.Text <> '' then
if sEdit4.Text <> '' then
if sComboBox1.Text <> 'Pilih Jenis Hewan' then
if sComboBox2.Text <> 'Pilih Makanan' then
Begin
ADOTable1.Append;
ADOTable1['No Form'] := sLabel7.Caption;
ADOTable1['Nama Pemilik'] := sEdit1.Text;
ADOTable1['Nomer Telepon'] := sEdit2.Text;
ADOTable1['Alamat'] := sEdit3.Text;
ADOTable1['Nama Hewan'] := sEdit4.Text;
ADOTable1['Jenis Hewan'] := sComboBox1.Text;
ADOTable1['Makanan'] := sComboBox2.Text;
ADOTable1['Titip Tanggal'] := DateToStr(DateTimePicker1.Date);
Adotable1['Username'] := Form1.sStatusBar1.Panels[3].Text;
ADOTable1['Harga Makanan'] := Edit2.Text;
ADOTable1['Titip Per-Hari'] := Edit1.Text;
Adotable1.Post;
sEdit1.Text := '';
sEdit2.Text := '';
sEdit3.Text := '';
sEdit4.Text := '';
sComboBox1.Text := 'Pilih Jenis Hewan';
sComboBox2.Text := 'Pilih Makanan';
Randomize;
  S := '';
  for i := 1 to 6 do begin   {... menampilkan 6 digit character...}
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Form4.sLabel7.Caption := S;
end
else
ShowMessage('Harap isi semua form');
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date := Now;
end;

end.
