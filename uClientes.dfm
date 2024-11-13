object frfmClientes: TfrfmClientes
  Left = 561
  Top = 255
  Width = 510
  Height = 245
  Caption = 'Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 16
    Top = 16
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblNome: TLabel
    Left = 80
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblNascimento: TLabel
    Left = 16
    Top = 64
    Width = 59
    Height = 13
    Caption = 'Nascimento:'
  end
  object lblCidade: TLabel
    Left = 16
    Top = 112
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object lblNomeCidade: TLabel
    Left = 104
    Top = 112
    Width = 81
    Height = 13
    Caption = 'Nome da cidade:'
  end
  object lblUF: TLabel
    Left = 440
    Top = 112
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object edtCodigo: TEdit
    Left = 16
    Top = 32
    Width = 49
    Height = 21
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 80
    Top = 32
    Width = 401
    Height = 21
    TabOrder = 1
  end
  object edtNascimento: TEdit
    Left = 16
    Top = 80
    Width = 89
    Height = 21
    TabOrder = 2
    Text = '__/__/____'
  end
  object edtCidade: TEdit
    Left = 16
    Top = 128
    Width = 49
    Height = 21
    TabOrder = 3
  end
  object btnCidades: TButton
    Left = 68
    Top = 128
    Width = 26
    Height = 17
    Caption = ',,,'
    TabOrder = 4
  end
  object edtNomeCidade: TEdit
    Left = 104
    Top = 128
    Width = 329
    Height = 21
    TabOrder = 5
  end
  object edtUF: TEdit
    Left = 440
    Top = 128
    Width = 41
    Height = 21
    TabOrder = 6
  end
  object btnNovo: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 7
  end
  object btnAlterar: TButton
    Left = 88
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 8
  end
  object btnSalvar: TButton
    Left = 168
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 9
  end
  object btnCancelar: TButton
    Left = 248
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 10
  end
  object btnPesquisar: TButton
    Left = 328
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 11
    OnClick = btnPesquisarClick
  end
  object btnRelatorio: TButton
    Left = 408
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Relat'#243'rio'
    TabOrder = 12
  end
end
