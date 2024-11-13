object FProvincias: TFProvincias
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 338
  ClientWidth = 651
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
    Width = 651
    Height = 338
    Align = alClient
    Caption = ''
    TabOrder = 0
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 0
      Width = 651
      Height = 129
      Align = alTop
      Caption = ''
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 37
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = cxDBTextEdit1
      end
      object Label2: TLabel
        Left = 168
        Top = 37
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = cxDBTextEdit2
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 24
        Top = 56
        DataBinding.DataField = 'provinciaid'
        DataBinding.DataSource = DataSource1
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 168
        Top = 56
        DataBinding.DataField = 'descripcion'
        DataBinding.DataSource = DataSource1
        TabOrder = 1
        Width = 257
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 0
        Top = 0
        Width = 645
        Height = 25
        Buttons.CustomButtons = <>
        DataSource = DataSource1
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 129
      Width = 651
      Height = 209
      Align = alClient
      TabOrder = 1
      LookAndFeel.SkinName = 'Metropolis'
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1provinciaid: TcxGridDBColumn
          DataBinding.FieldName = 'provinciaid'
          Width = 141
        end
        object cxGrid1DBTableView1descripcion: TcxGridDBColumn
          DataBinding.FieldName = 'descripcion'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Fmain.QProvincias
    Left = 304
    Top = 264
  end
end
