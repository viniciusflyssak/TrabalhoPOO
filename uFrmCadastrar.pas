unit uFrmCadastrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  uFuncionario, uGestor, uVendedor;

type
  TFrmCadastrar = class(TForm)
    BtGravar: TButton;
    PCadastro: TPanel;
    LNome: TLabel;
    LCPF: TLabel;
    LSalario: TLabel;
    LCargo: TLabel;
    EdtNome: TEdit;
    EdtCPF: TEdit;
    EdtSalario: TEdit;
    CBCargo: TComboBox;
    EdtExtra: TEdit;
    Lextra: TLabel;
    procedure BtGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Funcionarios: array [1 .. 100] of TFuncionario;
  Funcionario: TFuncionario;
  Gestor: TGestor;
  Vendedor: Tvendedor;
  FrmCadastrar: TFrmCadastrar;

implementation

{$R *.dfm}

procedure TFrmCadastrar.BtGravarClick(Sender: TObject);
var
  Contador: Integer;

begin
  Funcionario := TFuncionario.Create;
  Gestor := TGestor.Create;
  Vendedor := Tvendedor.Create;
  for Contador := 1 to 100 do
  begin
    Funcionario.Nome := EdtNome.Text;
    Funcionario.Cpf := EdtCPF.Text;
    Funcionario.Salario := StrToFloat(EdtSalario.Text);
    Funcionario.Cargo := CBCargo.Text;
    if Funcionario.Cargo = 'Gestor' then
      Gestor.HoraExtra := StrToInt(EdtExtra.Text)
    else
      Vendedor.Comissao := StrToFloat(EdtExtra.Text);
    if Funcionario.Cargo = 'Gestor' then
      Funcionario.Ganho := Funcionario.Salario + (Gestor.HoraExtra * 25)
    else
      Funcionario.Ganho := Funcionario.Salario + (Vendedor.Comissao * 0.15);
     Funcionarios[Contador] := Funcionario;
  end;
  ShowMessage('Total ganho: ' + FloatToStr(Funcionario.Ganho) + ' R$');
end;

end.
