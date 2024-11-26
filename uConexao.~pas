unit uConexao;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, Provider, DBClient;

type
  TdmConexao = class(TDataModule)
    Conexao: TSQLConnection;
    dsCidadesSQL: TSQLDataSet;
    dspCidades: TDataSetProvider;
    cdsCidades: TClientDataSet;    
    dsCidadesSQLCIDADE_ID: TIntegerField;
    dsCidadesSQLCIDADE_NOME: TStringField;
    dsCidadesSQLCIDADE_UF: TStringField;
    cdsCidadesCIDADE_ID: TIntegerField;
    cdsCidadesCIDADE_NOME: TStringField;
    cdsCidadesCIDADE_UF: TStringField;
    dsCidades: TDataSource;
    dsGeneratorCidades: TSQLDataSet;
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
