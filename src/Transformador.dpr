program Transformador;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Transformador v1.6';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

