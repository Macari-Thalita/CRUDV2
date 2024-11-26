object frmCidades: TfrmCidades
  Left = 544
  Top = 239
  Width = 398
  Height = 398
  Caption = 'frmCidades'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 8
    Top = 8
    Width = 36
    Height = 13
    Caption = 'C'#243'digo:'
    Enabled = False
  end
  object lblNome: TLabel
    Left = 56
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Nome:'
    Enabled = False
  end
  object lblUF: TLabel
    Left = 336
    Top = 8
    Width = 17
    Height = 13
    Caption = 'UF:'
    Enabled = False
  end
  object btnNovo: TButton
    Left = 8
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 0
    OnClick = btnNovoClick
  end
  object btnAlterar: TButton
    Left = 104
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Alterar'
    Enabled = False
    TabOrder = 1
  end
  object btnApagar: TButton
    Left = 200
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Apagar'
    Enabled = False
    TabOrder = 2
  end
  object btnSalvar: TButton
    Left = 296
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object edtNome: TEdit
    Left = 56
    Top = 24
    Width = 273
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object edtUF: TEdit
    Left = 336
    Top = 24
    Width = 33
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object dbgrdCidades: TDBGrid
    Left = 8
    Top = 88
    Width = 369
    Height = 233
    DataSource = dmConexao.dsCidades
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CIDADE_ID'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE_NOME'
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE_UF'
        Title.Caption = 'UF'
        Visible = True
      end>
  end
  object btnCancelar: TButton
    Left = 304
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 8
    OnClick = btnCancelarClick
  end
end
