unit uMoto;

interface

uses uMeioTransporte;

type
  TMoto = class(TMeioTransporte)
    procedure Cadastro();
    procedure Venda();
  end;

implementation

uses Dialogs;

{ TCarro }

procedure TMoto.Cadastro();
begin
  ShowMessage('Foi cadastrado' + Modelo);
end;

procedure TMoto.Venda();
begin
  ShowMessage('Vendido' + Modelo);
end;

end.
