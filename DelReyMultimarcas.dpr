program DelReyMultimarcas;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  uCadastroVeiculo in 'uCadastroVeiculo.pas' {CadVeiculos},
  uVendas in 'uVendas.pas' {Vendas},
  uMeioTransporte in 'uMeioTransporte.pas',
  uMoto in 'uMoto.pas',
  uCarro in 'uCarro.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TCadVeiculos, CadVeiculos);
  Application.CreateForm(TVendas, Vendas);
  Application.Run;
end.
