unit uCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TfrmCidades = class(TForm)
    btnNovo: TButton;
    btnAlterar: TButton;
    btnApagar: TButton;
    btnSalvar: TButton;
    edtNome: TEdit;
    edtUF: TEdit;
    edtCodigo: TEdit;
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblUF: TLabel;
    dbgrdCidades: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.dfm}

end.