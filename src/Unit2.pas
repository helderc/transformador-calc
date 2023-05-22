unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    ComboBox2: TComboBox;
    resistencia2: TEdit;
    secao2: TEdit;
    diametro2: TEdit;
    secao1: TEdit;
    diametro1: TEdit;
    resistencia1: TEdit;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  if combobox1.items[combobox1.itemindex] = '8' then
  begin
    resistencia1.text := '2,07';
    secao1.text := '8,37';
    diametro1.text := '3,21';
  end;
  if combobox1.items[combobox1.itemindex] = '9' then
  begin
    resistencia1.text := '2,59';
    secao1.text := '6,63';
    diametro1.text := '2,91';
  end;
  if combobox1.items[combobox1.itemindex] = '10' then
  begin
    resistencia1.text := '3,27';
    secao1.text := '5,26';
    diametro1.text := '2,59';
  end;
  if combobox1.items[combobox1.itemindex] = '11' then
  begin
    resistencia1.text := '4,15';
    secao1.text := '4,17';
    diametro1.text := '2,30';
  end;
  if combobox1.items[combobox1.itemindex] = '12' then
  begin
    resistencia1.text := '5,22';
    secao1.text := '3,31';
    diametro1.text := '2,05';
  end;
  if combobox1.items[combobox1.itemindex] = '13' then
  begin
    resistencia1.text := '6,56';
    secao1.text := '2,62';
    diametro1.text := '1,83';
  end;
  if combobox1.items[combobox1.itemindex] = '14' then
  begin
    resistencia1.text := '8,26';
    secao1.text := '2,08';
    diametro1.text := '1,63';
  end;
  if combobox1.items[combobox1.itemindex] = '15' then
  begin
    resistencia1.text := '10,40';
    secao1.text := '1,65';
    diametro1.text := '1,45';
  end;
  if combobox1.items[combobox1.itemindex] = '16' then
  begin
    resistencia1.text := '13,20';
    secao1.text := '1,31';
    diametro1.text := '1,29';
  end;
  if combobox1.items[combobox1.itemindex] = '17' then
  begin
    resistencia1.text := '16,60';
    secao1.text := '1,04';
    diametro1.text := '1,15';
  end;
  if combobox1.items[combobox1.itemindex] = '18' then
  begin
    resistencia1.text := '21,10';
    secao1.text := '0,82';
    diametro1.text := '1,02';
  end;
  if combobox1.items[combobox1.itemindex] = '19' then
  begin
    resistencia1.text := '26,50';
    secao1.text := '0,653';
    diametro1.text := '0,91';
  end;
  if combobox1.items[combobox1.itemindex] = '20' then
  begin
    resistencia1.text := '33,50';
    secao1.text := '0,518';
    diametro1.text := '0,81';
  end;
  if combobox1.items[combobox1.itemindex] = '21' then
  begin
    resistencia1.text := '42,30';
    secao1.text := '0,410';
    diametro1.text := '0,72';
  end;
  if combobox1.items[combobox1.itemindex] = '22' then
  begin
    resistencia1.text := '53,60';
    secao1.text := '0,326';
    diametro1.text := '0,64';
  end;
  if combobox1.items[combobox1.itemindex] = '23' then
  begin
    resistencia1.text := '57,60';
    secao1.text := '0,2552';
    diametro1.text := '0,57';
  end;
  if combobox1.items[combobox1.itemindex] = '24' then
  begin
    resistencia1.text := '84,40';
    secao1.text := '0,2043';
    diametro1.text := '0,51';
  end;
  if combobox1.items[combobox1.itemindex] = '25' then
  begin
    resistencia1.text := '108,40';
    secao1.text := '0,1590';
    diametro1.text := '0,45';
  end;
  if combobox1.items[combobox1.itemindex] = '26' then
  begin
    resistencia1.text := '137,0';
    secao1.text := '0,1256';
    diametro1.text := '0,40';
  end;
  if combobox1.items[combobox1.itemindex] = '27' then
  begin
    resistencia1.text := '169,0';
    secao1.text := '0,1018';
    diametro1.text := '0,36';
  end;
  if combobox1.items[combobox1.itemindex] = '28' then
  begin
    resistencia1.text := '214,0';
    secao1.text := '0,0804';
    diametro1.text := '0,32';
  end;
  if combobox1.items[combobox1.itemindex] = '29' then
  begin
    resistencia1.text := '261,0';
    secao1.text := '0,0660';
    diametro1.text := '0,29';
  end;
  if combobox1.items[combobox1.itemindex] = '30' then
  begin
    resistencia1.text := '351,0';
    secao1.text := '0,0491';
    diametro1.text := '0,25';
  end;
  if combobox1.items[combobox1.itemindex] = '31' then
  begin
    resistencia1.text := '415,0';
    secao1.text := '0,0415';
    diametro1.text := '0,23';
  end;
  if combobox1.items[combobox1.itemindex] = '32' then
  begin
    resistencia1.text := '549,0';
    secao1.text := '0,0314';
    diametro1.text := '0,20';
  end;
  if combobox1.items[combobox1.itemindex] = '33' then
  begin
    resistencia1.text := '679,0';
    secao1.text := '0,0254';
    diametro1.text := '0,18';
  end;
  if combobox1.items[combobox1.itemindex] = '34' then
  begin
    resistencia1.text := '858,0';
    secao1.text := '0,0201';
    diametro1.text := '0,16';
  end;
  if combobox1.items[combobox1.itemindex] = '35' then
  begin
    resistencia1.text := '1119,0';
    secao1.text := '0,0154';
    diametro1.text := '0,14';
  end;
  if combobox1.items[combobox1.itemindex] = '36' then
  begin
    resistencia1.text := '1306,0';
    secao1.text := '0,0132';
    diametro1.text := '0,13';
  end;
  if combobox1.items[combobox1.itemindex] = '37' then
  begin
    resistencia1.text := '1815,0';
    secao1.text := '0,0095';
    diametro1.text := '0,11';
  end;
  if combobox1.items[combobox1.itemindex] = '38' then
  begin
    resistencia1.text := '2210,0';
    secao1.text := '0,0078';
    diametro1.text := '0,10';
  end;
  if combobox1.items[combobox1.itemindex] = '39' then
  begin
    resistencia1.text := '2737,0';
    secao1.text := '0,0063';
    diametro1.text := '0,09';
  end;
  if combobox1.items[combobox1.itemindex] = '40' then
  begin
    resistencia1.text := '3448,0';
    secao1.text := '0,0050';
    diametro1.text := '0,08';
  end;
end;

procedure TForm2.ComboBox2Change(Sender: TObject);
begin
  if combobox2.items[combobox2.itemindex] = '8' then
  begin
    resistencia2.text := '2,07';
    secao2.text := '33,48';
    diametro2.text := '3,21';
  end;
  if combobox2.items[combobox2.itemindex] = '9' then
  begin
    resistencia2.text := '2,59';
    secao2.text := '26,52';
    diametro2.text := '2,91';
  end;
  if combobox2.items[combobox2.itemindex] = '10' then
  begin
    resistencia2.text := '3,27';
    secao2.text := '21,04';
    diametro2.text := '2,59';
  end;
  if combobox2.items[combobox2.itemindex] = '11' then
  begin
    resistencia2.text := '4,15';
    secao2.text := '16,08';
    diametro2.text := '2,30';
  end;
  if combobox2.items[combobox2.itemindex] = '12' then
  begin
    resistencia2.text := '5,22';
    secao2.text := '13,24';
    diametro2.text := '2,05';
  end;
  if combobox2.items[combobox2.itemindex] = '13' then
  begin
    resistencia2.text := '6,56';
    secao2.text := '10,48';
    diametro2.text := '1,83';
  end;
  if combobox2.items[combobox2.itemindex] = '14' then
  begin
    resistencia2.text := '8,26';
    secao2.text := '8,32';
    diametro2.text := '1,63';
  end;
  if combobox2.items[combobox2.itemindex] = '15' then
  begin
    resistencia2.text := '10,40';
    secao2.text := '6,60';
    diametro2.text := '1,45';
  end;
  if combobox2.items[combobox2.itemindex] = '16' then
  begin
    resistencia2.text := '13,20';
    secao2.text := '5,24';
    diametro2.text := '1,29';
  end;
  if combobox2.items[combobox2.itemindex] = '17' then
  begin
    resistencia2.text := '16,60';
    secao2.text := '4,16';
    diametro2.text := '1,15';
  end;
  if combobox2.items[combobox2.itemindex] = '18' then
  begin
    resistencia2.text := '21,10';
    secao2.text := '3,28';
    diametro2.text := '1,02';
  end;
  if combobox2.items[combobox2.itemindex] = '19' then
  begin
    resistencia2.text := '26,50';
    secao2.text := '2,612';
    diametro2.text := '0,91';
  end;
  if combobox2.items[combobox2.itemindex] = '20' then
  begin
    resistencia2.text := '33,50';
    secao2.text := '2,072';
    diametro2.text := '0,81';
  end;
  if combobox2.items[combobox2.itemindex] = '21' then
  begin
    resistencia2.text := '42,30';
    secao2.text := '1,640';
    diametro2.text := '0,72';
  end;
  if combobox2.items[combobox2.itemindex] = '22' then
  begin
    resistencia2.text := '53,60';
    secao2.text := '1,250';
    diametro2.text := '0,64';
  end;
  if combobox2.items[combobox2.itemindex] = '23' then
  begin
    resistencia2.text := '57,60';
    secao2.text := '1,0208';
    diametro2.text := '0,57';
  end;
  if combobox2.items[combobox2.itemindex] = '24' then
  begin
    resistencia2.text := '84,40';
    secao2.text := '0,8172';
    diametro2.text := '0,51';
  end;
  if combobox2.items[combobox2.itemindex] = '25' then
  begin
    resistencia2.text := '108,40';
    secao2.text := '0,6360';
    diametro2.text := '0,45';
  end;
  if combobox2.items[combobox2.itemindex] = '26' then
  begin
    resistencia2.text := '137,0';
    secao2.text := '0,5024';
    diametro2.text := '0,40';
  end;
  if combobox2.items[combobox2.itemindex] = '27' then
  begin
    resistencia2.text := '169,0';
    secao2.text := '0,4072';
    diametro2.text := '0,36';
  end;
  if combobox2.items[combobox2.itemindex] = '28' then
  begin
    resistencia2.text := '214,0';
    secao2.text := '0,3216';
    diametro2.text := '0,32';
  end;
  if combobox2.items[combobox2.itemindex] = '29' then
  begin
    resistencia2.text := '261,0';
    secao2.text := '0,2640';
    diametro2.text := '0,29';
  end;
  if combobox2.items[combobox2.itemindex] = '30' then
  begin
    resistencia2.text := '351,0';
    secao2.text := '0,1964';
    diametro2.text := '0,25';
  end;
  if combobox2.items[combobox2.itemindex] = '31' then
  begin
    resistencia2.text := '415,0';
    secao2.text := '0,1660';
    diametro2.text := '0,23';
  end;
  if combobox2.items[combobox2.itemindex] = '32' then
  begin
    resistencia2.text := '549,0';
    secao2.text := '0,1256';
    diametro2.text := '0,20';
  end;
  if combobox2.items[combobox2.itemindex] = '33' then
  begin
    resistencia2.text := '679,0';
    secao2.text := '0,1016';
    diametro2.text := '0,18';
  end;
  if combobox2.items[combobox2.itemindex] = '34' then
  begin
    resistencia2.text := '858,0';
    secao2.text := '0,0804';
    diametro2.text := '0,16';
  end;
  if combobox2.items[combobox2.itemindex] = '35' then
  begin
    resistencia2.text := '1119,0';
    secao2.text := '0,0616';
    diametro2.text := '0,14';
  end;
  if combobox2.items[combobox2.itemindex] = '36' then
  begin
    resistencia2.text := '1306,0';
    secao2.text := '0,0528';
    diametro2.text := '0,13';
  end;
  if combobox2.items[combobox2.itemindex] = '37' then
  begin
    resistencia2.text := '1815,0';
    secao2.text := '0,0380';
    diametro2.text := '0,11';
  end;
  if combobox2.items[combobox2.itemindex] = '38' then
  begin
    resistencia2.text := '2210,0';
    secao2.text := '0,0312';
    diametro2.text := '0,10';
  end;
  if combobox2.items[combobox2.itemindex] = '39' then
  begin
    resistencia2.text := '2737,0';
    secao2.text := '0,0252';
    diametro2.text := '0,09';
  end;
  if combobox2.items[combobox2.itemindex] = '40' then
  begin
    resistencia2.text := '3448,0';
    secao2.text := '0,0200';
    diametro2.text := '0,08';
  end;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.
