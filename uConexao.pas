unit uConexao;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr;

type
  TdmConexao = class(TDataModule)
    Conexao: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{$R *.dfm}

end.
