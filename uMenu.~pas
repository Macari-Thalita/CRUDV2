unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, uClientes, uCidades;

type
  TfrmMenu = class(TForm)
    mmPrincipal: TMainMenu;
    mnClientes: TMenuItem;
    mnCidades: TMenuItem;
    mnManutencaoClientes: TMenuItem;
    mnRelatorioClientes: TMenuItem;
    mnManutencaoCidades: TMenuItem;
    mnRelatorioCidades: TMenuItem;
    procedure mnManutencaoClientesClick(Sender: TObject);
    procedure mnManutencaoCidadesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu:     TfrmMenu;

implementation

{$R *.dfm}
 

procedure TfrmMenu.mnManutencaoClientesClick(Sender: TObject);
begin
   frfmClientes := TfrfmClientes.Create(Self);
   frfmClientes.ShowModal;
end;

procedure TfrmMenu.mnManutencaoCidadesClick(Sender: TObject);
begin
   frmCidades := TfrmCidades.Create(Self);
   frmCidades.ShowModal;
end;

end.
