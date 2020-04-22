unit uCarro;

interface

uses uMeioTransporte;

type
  TCarro = class(TMeioTransporte)
    procedure Cadastro();
    procedure Venda();
  end;

implementation

uses Dialogs;

{ TCarro }

procedure TCarro.Cadastro();
begin
  ShowMessage('Foi cadastrado' + Modelo);
end;

procedure TCarro.Venda();
begin
  ShowMessage('Vendido' + Modelo);
end;

end.
