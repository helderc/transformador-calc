unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, grids;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    vp: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    vs: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    wp: TEdit;
    Label6: TLabel;
    ip: TEdit;
    Label9: TLabel;
    fiop: TEdit;
    Label7: TLabel;
    np: TEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    cs: TEdit;
    Label10: TLabel;
    fios: TEdit;
    Label11: TLabel;
    ns: TEdit;
    Label1: TLabel;
    ws: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    an: TEdit;
    ln: TEdit;
    SaveDialog1: TSaveDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    kk: TSpeedButton;
    BitBtn5: TSpeedButton;
    SpeedButton3: TSpeedButton;
    lblLink: TLabel;
    procedure lblLinkClick(Sender: TObject);
    procedure lblLinkMouseLeave(Sender: TObject);
    procedure lblLinkMouseEnter(Sender: TObject);
    procedure vpKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure kkClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  esp: integer;

implementation

uses Unit2, ShellApi;

{$R *.DFM}

procedure TForm1.vpKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in [',', '.'] then
    Key := DecimalSeparator;
  if key in ['a'..'z', 'A'..'Z'] then
    abort;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  combobox1.ItemIndex := 1;
  esp := 37;
end;

procedure TForm1.kkClick(Sender: TObject);
var
  wss: double;
  por, sl, espvolt: real;
begin
  try
    if combobox1.items[combobox1.itemindex] = '60 Hz' then
      esp := 37;
    if combobox1.items[combobox1.itemindex] = '50 Hz' then
      esp := 45;
    por := 20 / 100;
    wss := (strtofloat(an.text) * strtofloat(ln.text)) * (1 - por);
    ws.text := floattostr(trunc((sqr(wss)) * 100) / 100);
    sl := sqrt(strtofloat(ws.text));
    espvolt := esp / sl;
    wp.text := floattostr(trunc((strtofloat(ws.text) * (1.1)) * 100) / 100);
    //X := Trunc(ValorReal * 100) / 100; // X será 135.54
    ip.text := floattostr(trunc((strtofloat(wp.text) / strtofloat(vp.text)) * 100) / 100);
    cs.text := floattostr(trunc((strtofloat(ws.text) / strtofloat(vs.text)) * 100) / 100);
    np.text := floattostr(trunc((espvolt * strtofloat(vp.text)) * 100) / 100);
    ns.text := floattostr(trunc((espvolt * strtofloat(vs.text)) * 100) / 100);
    fiop.text := floattostr(trunc((strtofloat(ip.text) / 4) * 100) / 100);
    fios.text := cs.text;
    bitbtn5.enabled := true;
  except
    Application.MessageBox('Ocorreu um Erro' + #13#13 +
      'Verifique se os valores estão corretos e tente novamente!', 'Erro', mb_Ok + mb_IconError);
  end;
end;

procedure TForm1.lblLinkClick(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow, 'open', 'http://redleh.host.sk', nil, nil, 0);
end;

procedure TForm1.lblLinkMouseEnter(Sender: TObject);
begin
  lblLink.Font.Color := clRed;
end;

procedure TForm1.lblLinkMouseLeave(Sender: TObject);
begin
  lblLink.Font.Color := clBlue;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if Form2 = nil then
    Form2 := TForm2.Create(Application);
  Form2.Show;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TEdit then
    begin
      TEdit(Components[i]).Text := '';
    end;
  bitbtn5.enabled := false;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var
  arq: textfile;
  arqu: string;
begin
  savedialog1.Execute;
  arqu := savedialog1.FileName;
  AssignFile(Arq, arqu);
  Rewrite(Arq);
  Writeln(Arq, '-=> CÁLCULO DE PEQUENOS TRANSFORMADORES v1.6 <=-');
  Writeln(Arq, '');
  Writeln(Arq, '+-----------------------------------------------+');
  Writeln(Arq, '|          helder_cesar@yahoo.com.br            |');
  Writeln(Arq, '+-----------------------------------------------+');
  Writeln(Arq, '');
  Writeln(Arq, 'Tensão Primária (Volts)--> "' + (vp.text) + '"');
  Writeln(Arq, 'Tensão Secundária (Volts)--> "' + (vs.text) + '"');
  Writeln(Arq, '');
  Writeln(Arq, 'Altura do Núcleo (cm)--> "' + (an.text) + '"');
  Writeln(Arq, 'Largura do Núcleo (cm)--> "' + (ln.text) + '"');
  Writeln(Arq, '');
  Writeln(Arq, 'Frequência (Hz)--> "' + (combobox1.items[combobox1.itemindex]) + '"');
  Writeln(Arq, '');
  Writeln(Arq, 'ENROLAMENTO PRIMÁRIO');
  Writeln(Arq, 'Corrente (Ampéres)--> "' + (ip.text) + '"');
  Writeln(Arq, 'Fio (mm²)--> "' + (fiop.text) + '"');
  Writeln(Arq, 'Número de Espiras--> "' + (np.text) + '"');
  Writeln(Arq, 'Potência (Watts)--> "' + (wp.text) + '"');
  Writeln(Arq, '');
  Writeln(Arq, 'ENROLAMENTO SECUNDÁRIO');
  Writeln(Arq, 'Corrente (Ampéres)--> "' + (cs.text) + '"');
  Writeln(Arq, 'Fio (mm²)--> "' + (fios.text) + '"');
  Writeln(Arq, 'Número de Espiras--> "' + (ns.text) + '"');
  Writeln(Arq, 'Potência (Watts)--> "' + (ws.text) + '"');
  CloseFile(Arq);
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

end.

