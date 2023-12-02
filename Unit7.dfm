object Form7: TForm7
  Left = 192
  Top = 125
  Width = 1044
  Height = 540
  Caption = 'Form7'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 2
    Top = 14
    Width = 13
    Height = 15
    Caption = 'ID'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l3: TLabel
    Left = 244
    Top = 12
    Width = 68
    Height = 16
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l6: TLabel
    Left = 528
    Top = 8
    Width = 74
    Height = 16
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object l4: TLabel
    Left = 6
    Top = 44
    Width = 37
    Height = 16
    Caption = 'LEVEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 12
    Top = 284
    Width = 760
    Height = 157
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'username'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'password'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'level'
        Width = 127
        Visible = True
      end>
  end
  object b1: TButton
    Left = 116
    Top = 228
    Width = 75
    Height = 29
    Caption = 'Baru'
    TabOrder = 1
    OnClick = b1Click
  end
  object b2: TButton
    Left = 224
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = b2Click
  end
  object b3: TButton
    Left = 332
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Edit'
    TabOrder = 3
    OnClick = b3Click
  end
  object b4: TButton
    Left = 432
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = b4Click
  end
  object b5: TButton
    Left = 540
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Batal'
    TabOrder = 5
    OnClick = b5Click
  end
  object b6: TButton
    Left = 644
    Top = 224
    Width = 75
    Height = 33
    Caption = 'Print'
    TabOrder = 6
    OnClick = b6Click
  end
  object e_1: TEdit
    Left = 96
    Top = 8
    Width = 101
    Height = 21
    TabOrder = 7
  end
  object e_2: TEdit
    Left = 344
    Top = 8
    Width = 149
    Height = 21
    TabOrder = 8
  end
  object e_3: TEdit
    Left = 630
    Top = 8
    Width = 205
    Height = 21
    TabOrder = 9
  end
  object e_4: TEdit
    Left = 98
    Top = 44
    Width = 113
    Height = 21
    TabOrder = 10
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from table_user')
    Params = <>
    Left = 76
    Top = 224
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 40
    Top = 220
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 736
    Top = 38
  end
  object frxrprt1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45097.373740509300000000
    ReportOptions.LastChange = 45258.668091342600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 736
    Top = 80
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 250.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 204.094620000000000000
          Width = 321.260050000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN DATA USER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 151.181200000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Width = 181.417440000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'USERNAME')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 332.598640000000000000
          Width = 177.637910000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PASSWORD')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 510.236550000000000000
          Width = 207.874150000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'LEVEL')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 71.811070000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Width = 151.181200000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 151.181200000000000000
          Width = 181.417440000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'username'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."username"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 510.236550000000000000
          Width = 207.874150000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'level'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."level"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 332.598640000000000000
          Width = 177.637910000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'password'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset."password"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object zqry2: TZQuery
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 736
    Top = 132
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_supermarket'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\USER\Documents\visual\libmysql.dll'
    Left = 2
    Top = 226
  end
end
