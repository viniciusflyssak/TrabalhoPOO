unit uCadastroVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uVeiculo;

type
  TCadVeiculos = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    EdtModelo: TEdit;
    EdtAno: TEdit;
    EdtPreco: TEdit;
    EdtMarca: TEdit;
    BtnCadastrarCarro: TButton;
    EdtModeloM: TEdit;
    EdtAnoM: TEdit;
    EdtMarcaM: TEdit;
    EdtPrecoM: TEdit;
    BtnCadastrarMoto: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BtnCadastrarCarroClick(Sender: TObject);
    procedure BtnCadastrarMotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Carro: TVeiculo;
    Moto: TVeiculo;
  end;

var
  CadVeiculos: TCadVeiculos;

implementation

{$R *.dfm}

procedure TCadVeiculos.BtnCadastrarCarroClick(Sender: TObject);
begin
  Carro := TVeiculo.Create;
  if EdtModelo.Text <> '' then
    Carro.Modelo := EdtModelo.Text;
  if EdtAno.Text <> '' then
    Carro.Ano := Strtointdef(EdtAno.Text, 0);
  if EdtPreco.Text <> '' then
    Carro.Preco := Strtofloatdef(EdtPreco.Text, 0);
  if EdtModelo.Text <> '' then
    Carro.Marca := EdtMarca.Text;
  Carro.mensagem;
end;

procedure TCadVeiculos.BtnCadastrarMotoClick(Sender: TObject);
begin
  Carro := TVeiculo.Create;
  if EdtModeloM.Text <> '' then
    Carro.Modelo := EdtModeloM.Text;
  if EdtAnoM.Text <> '' then
    Carro.Ano := Strtointdef(EdtAnoM.Text, 0);
  if EdtPrecoM.Text <> '' then
    Carro.Preco := Strtofloatdef(EdtPrecoM.Text, 0);
  if EdtModeloM.Text <> '' then
    Carro.Marca := EdtMarcaM.Text;
  Carro.mensagem;
end;

end.
