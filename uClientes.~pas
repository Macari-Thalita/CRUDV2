unit uClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uPesquisarClientes;

type
  TfrfmClientes = class(TForm)
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblNascimento: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtNascimento: TEdit;
    lblCidade: TLabel;
    edtCidade: TEdit;
    btnCidades: TButton;
    lblNomeCidade: TLabel;
    edtNomeCidade: TEdit;
    lblUF: TLabel;
    edtUF: TEdit;
    btnNovo: TButton;
    btnAlterar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnPesquisar: TButton;
    btnRelatorio: TButton;
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frfmClientes: TfrfmClientes; 

implementation


{$R *.dfm}


procedure TfrfmClientes.btnPesquisarClick(Sender: TObject);
begin
   frmPesquisarClientes := TfrmPesquisarClientes.Create(Self);
   frmPesquisarClientes.ShowModal;
end;

end.

