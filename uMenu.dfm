object frmMenu: TfrmMenu
  Left = 575
  Top = 201
  Width = 765
  Height = 587
  Caption = 'Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mmPrincipal
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmPrincipal: TMainMenu
    Left = 320
    Top = 136
    object mnClientes: TMenuItem
      Caption = 'Clientes'
      object mnManutencaoClientes: TMenuItem
        Caption = 'Manuten'#231#227'o'
        OnClick = mnManutencaoClientesClick
      end
      object mnRelatorioClientes: TMenuItem
        Caption = 'Relat'#243'rio'
      end
    end
    object mnCidades: TMenuItem
      Caption = 'Cidades'
      object mnManutencaoCidades: TMenuItem
        Caption = 'Manuten'#231#227'o'
        OnClick = mnManutencaoCidadesClick
      end
      object mnRelatorioCidades: TMenuItem
        Caption = 'Relat'#243'rio'
      end
    end
  end
end
