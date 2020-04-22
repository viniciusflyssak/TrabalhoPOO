unit uVender;

interface

uses uVeiculo, dialogs, System.SysUtils;

type
  tvender = class(TVeiculo)
    descricao: string;
    parcela: real;
    procedure aviso;
  end;

implementation

{ vender }

procedure tvender.aviso;
begin
  showmessage('O veículo com a descrição ' + descricao + ', no valor de ' +
    floattostr(preco) + ' reais, foi vendido. Suas parcelas são de ' +
    floattostr(parcela) + ' reais.');
end;

end.
