unit uVeiculo;

interface

Type
  TVeiculo = Class
    Modelo: String;
    Marca: String;
    Ano: Integer;
    Preco: real;
    procedure mensagem;
  End;

implementation

uses dialogs,
  System.SysUtils;
{ TCarro }
{ TCarro }

procedure TVeiculo.mensagem;
begin
  showmessage('O ve�culo do modelo ' + Modelo + ', pertencente a marca ' + Marca
    + ', com sua fabrica��o no ano de ' + IntToStr(Ano) + ' e com o valor de ' +
    floatToStr(Preco) + ' reais, foi cadastrado.');
end;

end.
