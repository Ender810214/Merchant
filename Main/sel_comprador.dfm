object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 338
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 338
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 64
    ExplicitWidth = 200
    ExplicitHeight = 100
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 0
      Width = 693
      Height = 25
      Buttons.CustomButtons = <>
      Buttons.Insert.Enabled = False
      Buttons.Insert.Visible = False
      Buttons.Append.Enabled = False
      Buttons.Delete.Enabled = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Enabled = False
      Buttons.Edit.Visible = False
      Buttons.Post.Enabled = False
      Buttons.Post.Visible = False
      DataSource = DataSource1
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 638
    end
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 284
      Width = 695
      Height = 54
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 224
      ExplicitWidth = 651
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 3
        Top = 6
        Width = 120
        Height = 35
        Appearance.Font.Charset = DEFAULT_CHARSET
        Appearance.Font.Color = clBlack
        Appearance.Font.Height = -11
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = []
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Caption = 'Aceptar'
        Color = 15784647
        ParentFont = False
        TabOrder = 0
        Version = '2.1.1.5'
        TMSStyle = 13
      end
      object AdvSmoothButton2: TAdvSmoothButton
        Left = 555
        Top = 6
        Width = 120
        Height = 35
        Appearance.Font.Charset = DEFAULT_CHARSET
        Appearance.Font.Color = clBlack
        Appearance.Font.Height = -11
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = []
        Status.Caption = '0'
        Status.Appearance.Fill.Color = clRed
        Status.Appearance.Fill.ColorMirror = clNone
        Status.Appearance.Fill.ColorMirrorTo = clNone
        Status.Appearance.Fill.GradientType = gtSolid
        Status.Appearance.Fill.GradientMirrorType = gtSolid
        Status.Appearance.Fill.BorderColor = clGray
        Status.Appearance.Fill.Rounding = 0
        Status.Appearance.Fill.ShadowOffset = 0
        Status.Appearance.Fill.Glow = gmNone
        Status.Appearance.Font.Charset = DEFAULT_CHARSET
        Status.Appearance.Font.Color = clWhite
        Status.Appearance.Font.Height = -11
        Status.Appearance.Font.Name = 'Tahoma'
        Status.Appearance.Font.Style = []
        Caption = 'Cancelar'
        Color = 15784647
        ParentFont = False
        TabOrder = 1
        Version = '2.1.1.5'
        OnClick = AdvSmoothButton2Click
        TMSStyle = 13
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 25
      Width = 695
      Height = 259
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 288
      ExplicitTop = 72
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1clienteid: TcxGridDBColumn
          DataBinding.FieldName = 'clienteid'
        end
        object cxGrid1DBTableView1nombre_comprador: TcxGridDBColumn
          DataBinding.FieldName = 'nombre_comprador'
          Width = 250
        end
        object cxGrid1DBTableView1comprador_ci: TcxGridDBColumn
          DataBinding.FieldName = 'comprador_ci'
          Width = 105
        end
        object cxGrid1DBTableView1comprador_cargo: TcxGridDBColumn
          DataBinding.FieldName = 'comprador_cargo'
          Width = 250
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object UniQuery1: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from ficha_cliente')
    MasterSource = Fmain.DataSource6
    MasterFields = 'clienteid'
    DetailFields = 'clienteid'
    IndexFieldNames = 'clienteid'
    Left = 104
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clienteid'
        Value = nil
      end>
    object UniQuery1clienteid: TIntegerField
      DisplayLabel = 'No. Cliente'
      FieldName = 'clienteid'
      Required = True
    end
    object UniQuery1nombre_comprador: TStringField
      DisplayLabel = 'Nombre del Comprador'
      FieldName = 'nombre_comprador'
      Required = True
      Size = 100
    end
    object UniQuery1comprador_ci: TStringField
      DisplayLabel = 'Carnet de Identidad'
      FieldName = 'comprador_ci'
      Required = True
      Size = 11
    end
    object UniQuery1comprador_cargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'comprador_cargo'
      Required = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 192
    Top = 128
  end
end
