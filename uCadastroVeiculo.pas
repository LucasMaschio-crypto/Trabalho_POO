unit uCadastroVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uMeioTransporte, uCarro, uMoto;

type
  TCadVeiculos = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    EdtModeloCarro: TEdit;
    EdtAnoCarro: TEdit;
    EdtPrecoCarro: TEdit;
    EdtMarcaCarro: TEdit;
    BtnCadastrarCarro: TButton;
    EdtModeloMoto: TEdit;
    EdtAnoMoto: TEdit;
    EdtMarcaMoto: TEdit;
    EdtPrecoMoto: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BtnCadastrarCarroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Carro, Moto : TMeioTransporte
  end;

var
  CadVeiculos: TCadVeiculos;

implementation

{$R *.dfm}

procedure TCadVeiculos.BtnCadastrarCarroClick(Sender: TObject);
begin
 Carro := TCarro.Create;

 if EdtModeloCarro.Text <> '' then
 TCarro(Carro).Modelo := EdtModeloCarro.Text;
 Carro := TCarro.Create;

 if EdtMarcaCarro.Text <> '' then
 Carro.Marca := EdtMarcaCarro.Text;

 if EdtAnoCarro.Text <> '' then
 Carro.Ano := StrToIntDef(EdtAnoCarro.Text, 0);

 if EdtPrecoCarro.Text <> '' then
 Carro.Preco := StrToIntDef(EdtPrecoCarro.Text, 0);

 begin
   Carro.Cadastro;
end;
end;

procedure TCadVeiculos.Button1Click(Sender: TObject);
begin
 Moto := TMoto.Create;

 if EdtModeloMoto.Text = '' then
 Moto.Modelo := EdtModeloMoto.Text;
 Moto := TMoto.Create;

 if EdtMarcaMoto.Text = '' then
 Moto.Marca := EdtMarcaMoto.Text;

 if EdtAnoMoto.Text = '' then
 Moto.Ano := StrToIntDef(EdtAnoMoto.Text, 0);

 if EdtPrecoMoto.Text = '' then
 Moto.Preco := StrToIntDef(EdtPrecoMoto.Text, 0);

 begin
   Moto.Cadastro;
 end;
end;

end.
