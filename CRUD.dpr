program CRUD;

uses
  Forms,
  uMenu in 'uMenu.pas' {frmMenu},
  uConexao in 'uConexao.pas' {dmConexao: TDataModule},
  uClientes in 'uClientes.pas' {frfmClientes},
  uCidades in 'uCidades.pas' {frmCidades},
  uPesquisarClientes in 'uPesquisarClientes.pas' {frmPesquisarClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPesquisarClientes, frmPesquisarClientes);
  Application.Run;
end.
