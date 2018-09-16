unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sLabel, ExtCtrls, sPanel;

type
  TForm3 = class(TForm)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sBitBtn1: TsBitBtn;
    procedure sBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.sBitBtn1Click(Sender: TObject);
begin
Form3.Close;
end;

end.
