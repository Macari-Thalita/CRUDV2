object frmCidades: TfrmCidades
  Left = 544
  Top = 239
  Width = 407
  Height = 372
  Caption = 'frmCidades'
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
    Left = 8
    Top = 8
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object lblNome: TLabel
    Left = 56
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lblUF: TLabel
    Left = 344
    Top = 8
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object btnNovo: TButton
    Left = 16
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
  end
  object btnAlterar: TButton
    Left = 112
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 1
  end
  object btnApagar: TButton
    Left = 208
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Apagar'
    TabOrder = 2
  end
  object btnSalvar: TButton
    Left = 304
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
  end
  object edtNome: TEdit
    Left = 56
    Top = 24
    Width = 281
    Height = 21
    TabOrder = 4
  end
  object edtUF: TEdit
    Left = 344
    Top = 24
    Width = 33
    Height = 21
    TabOrder = 5
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    TabOrder = 6
  end
  object dbgrdCidades: TDBGrid
    Left = 8
    Top = 88
    Width = 369
    Height = 233
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
