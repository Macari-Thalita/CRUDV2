unit uCidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, uConexao, DB;

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
    btnCancelar: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.dfm}

procedure TfrmCidades.btnNovoClick(Sender: TObject);
var
   NovoCodigo: Integer;
begin
   if(dmConexao.cdsCidades.State = dsInsert) then
   begin
      ShowMessage('Finalize o cadastro anterior antes de iniciar um novo!');
      Exit;
   end;

   if(MessageDlg('Deseja incluir um novo cadastro?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then
      Exit;

   if(edtCodigo.Text <> EmptyStr) then
      Exit;

   edtNome.Enabled   := True;
   edtUF.Enabled     := True;
   lblUF.Enabled     := True;
   lblCodigo.Enabled := True;
   lblNome.Enabled   := True;
   btnSalvar.Enabled := True;


   edtNome.Text   := '';
   edtUF.Text     := '';
   edtCodigo.Text := '';

   with (dmConexao.dsGeneratorCidades) do
   begin
      Close;
      CommandText := 'SELECT GEN_ID(GEN_CIDADES_ID, 0) AS NOVO_CODIGO FROM RDB$DATABASE';
      Open;
      NovoCodigo := FieldByName('NOVO_CODIGO').AsInteger + 1;
   end;

   edtCodigo.Text := IntToStr(NovoCodigo);

   if (not dmConexao.cdsCidades.Active) then
      dmConexao.cdsCidades.Open;

   dmConexao.cdsCidades.Insert;
   dmConexao.cdsCidades.FieldByName('CIDADE_ID').AsInteger := StrToInt(edtCodigo.Text);

   edtNome.SetFocus;
end;

procedure TfrmCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if dmConexao.cdsCidades.State = dsInsert then
   begin
      dmConexao.cdsCidades.Cancel;
   end;

   edtCodigo.Text := '';
   edtNome.Text   := '';
   edtUF.Text     := '';
end;

procedure TfrmCidades.FormCloseQuery(Sender: TObject;
var CanClose: Boolean);
begin
   if (dmConexao.cdsCidades.State = dsInsert) then
   begin
      ShowMessage('Finalize o cadastro ou cancele o processo antes de sair!');
      CanClose := False;
   end
   else
      CanClose := True;
end;

procedure TfrmCidades.btnCancelarClick(Sender: TObject);
begin
   if (MessageDlg('Deseja cancelar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
   begin
      if dmConexao.cdsCidades.State = dsInsert then
      begin
        dmConexao.cdsCidades.Cancel;
      end;

      edtCodigo.Text := '';
      edtNome.Text   := '';
      edtUF.Text     := '';

      if dmConexao.cdsCidades.Active then
         dmConexao.cdsCidades.Close;

     Close;
   end;
end;

procedure TfrmCidades.btnSalvarClick(Sender: TObject);
var
   NovoCodigo: Integer;
begin
   if (edtNome.Text = EmptyStr) or (edtUF.Text = EmptyStr) or (edtCodigo.Text = EmptyStr) then
   begin
      ShowMessage('Preencha todos os campos corretamente!');
      Exit;
   end;

   if not (dmConexao.cdsCidades.State in [dsInsert, dsEdit]) then
   begin
      ShowMessage('Preencha todos os campos corretamente!');
      Exit;
   end;

   try
      with dmConexao.dsGeneratorCidades do
      begin
         Close;
         CommandText := 'SELECT GEN_ID(GEN_CIDADES_ID, 1) AS NOVO_CODIGO FROM RDB$DATABASE';
         Open;
         NovoCodigo := FieldByName('NOVO_CODIGO').AsInteger;
      end;

      dmConexao.cdsCidades.FieldByName('CIDADE_ID').AsInteger := NovoCodigo;
      dmConexao.cdsCidades.FieldByName('CIDADE_NOME').AsString := edtNome.Text;
      dmConexao.cdsCidades.FieldByName('CIDADE_UF').AsString := edtUF.Text;
      dmConexao.cdsCidades.Post;
      dmConexao.cdsCidades.ApplyUpdates(0);

      ShowMessage('Registro salvo com sucesso!');
   except
      on E: Exception do
      begin
         ShowMessage('Erro ao salvar: ' + E.Message);
         Exit;
      end;
   end;

   edtCodigo.Text := '';
   edtNome.Text   := '';
   edtUF.Text     := '';
   edtNome.Enabled   := False;
   edtUF.Enabled     := False;
   btnSalvar.Enabled := False;
   btnNovo.Enabled   := True;
end;

procedure TfrmCidades.FormShow(Sender: TObject);
begin
   if (not dmConexao.cdsCidades.Active) then
      dmConexao.cdsCidades.Open;
end;

end.
