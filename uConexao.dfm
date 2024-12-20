object dmConexao: TdmConexao
  OldCreateOrder = False
  Left = 864
  Top = 297
  Height = 343
  Width = 418
  object Conexao: TSQLConnection
    Connected = True
    ConnectionName = 'CRUD'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=localhost:D:\DB\CRUD.FDB'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'USER_NAME=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 176
    Top = 104
  end
  object dsCidadesSQL: TSQLDataSet
    Active = True
    SQLConnection = Conexao
    CommandText = 'SELECT * FROM CIDADES'
    Params = <>
    Left = 312
    Top = 8
    object dsCidadesSQLCIDADE_ID: TIntegerField
      FieldName = 'CIDADE_ID'
      Required = True
    end
    object dsCidadesSQLCIDADE_NOME: TStringField
      FieldName = 'CIDADE_NOME'
      Required = True
      Size = 50
    end
    object dsCidadesSQLCIDADE_UF: TStringField
      FieldName = 'CIDADE_UF'
      Required = True
      Size = 2
    end
  end
  object dspCidades: TDataSetProvider
    DataSet = dsCidadesSQL
    Constraints = True
    Left = 312
    Top = 64
  end
  object cdsCidades: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidades'
    Left = 312
    Top = 120
    object cdsCidadesCIDADE_ID: TIntegerField
      FieldName = 'CIDADE_ID'
      Required = True
    end
    object cdsCidadesCIDADE_NOME: TStringField
      FieldName = 'CIDADE_NOME'
      Required = True
      Size = 50
    end
    object cdsCidadesCIDADE_UF: TStringField
      FieldName = 'CIDADE_UF'
      Required = True
      Size = 2
    end
  end
  object dsCidades: TDataSource
    DataSet = cdsCidades
    Left = 312
    Top = 176
  end
  object dsGeneratorCidades: TSQLDataSet
    Active = True
    SQLConnection = Conexao
    CommandText = 
      'SELECT GEN_ID(GEN_CIDADES_ID, 1) AS NOVO_CODIGO FROM RDB$DATABAS' +
      'E;'
    Params = <>
    Left = 312
    Top = 232
  end
end
