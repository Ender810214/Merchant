object FUM: TFUM
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 545
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 545
    Align = alClient
    Caption = ''
    TabOrder = 0
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 0
      Width = 814
      Height = 169
      Align = alTop
      Caption = ''
      TabOrder = 0
      object Label1: TLabel
        Left = 27
        Top = 45
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 179
        Top = 45
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
        FocusControl = cxDBTextEdit2
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 0
        Top = 0
        Width = 810
        Height = 25
        Buttons.CustomButtons = <>
        DataSource = DataSource1
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 27
        Top = 61
        DataBinding.DataField = 'umid'
        DataBinding.DataSource = DataSource1
        TabOrder = 1
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 179
        Top = 61
        DataBinding.DataField = 'descripcion'
        DataBinding.DataSource = DataSource1
        TabOrder = 2
        Width = 121
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 169
      Width = 814
      Height = 376
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1umid: TcxGridDBColumn
          DataBinding.FieldName = 'umid'
          Width = 39
        end
        object cxGrid1DBTableView1descripcion: TcxGridDBColumn
          DataBinding.FieldName = 'descripcion'
          Width = 165
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Fmain.QUM
    Left = 392
    Top = 256
  end
end
