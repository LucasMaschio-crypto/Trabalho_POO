unit uMeioTransporte;

interface

uses Dialogs;

type

TMeioTransporte = class
  Modelo : string;
  Marca : string;
  Ano : integer;
  Preco : integer;
  procedure Cadastro; virtual;
  procedure Venda ; virtual;
end;

implementation

{ TMeioTransporte }
uses uVendas;

procedure TMeioTransporte.Cadastro;
begin
  inherited;
  ShowMessage('Cadastro Efetuado do seu'+ Modelo);
end;

procedure TMeioTransporte.Venda;
begin
  inherited;
  ShowMessage('Foi Vendido' + DescVeiculo + 'Pelo preço' + PrecoVeiculo + 'Por' + CBPagamento + 'parcelas')
end;

end.
