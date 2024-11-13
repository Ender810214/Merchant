object Fsel_cont_prefact: TFsel_cont_prefact
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Fsel_cont_prefact'
  ClientHeight = 599
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 0
    Width = 940
    Height = 599
    Align = alClient
    Caption = ''
    TabOrder = 0
    ExplicitTop = -8
    ExplicitWidth = 797
    ExplicitHeight = 310
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 512
      Width = 940
      Height = 87
      Align = alBottom
      Caption = ''
      TabOrder = 0
      DesignSize = (
        940
        87)
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 16
        Top = 24
        Width = 120
        Height = 35
        Appearance.Font.Charset = DEFAULT_CHARSET
        Appearance.Font.Color = clBlack
        Appearance.Font.Height = -11
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = []
        Appearance.SimpleLayout = False
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
        Color = 14922381
        ParentFont = False
        TabOrder = 0
        Version = '2.2.3.1'
        OnClick = AdvSmoothButton1Click
        TMSStyle = 8
      end
      object AdvSmoothButton2: TAdvSmoothButton
        Left = 808
        Top = 24
        Width = 120
        Height = 35
        Anchors = [akTop, akRight]
        Appearance.Font.Charset = DEFAULT_CHARSET
        Appearance.Font.Color = clBlack
        Appearance.Font.Height = -11
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = []
        Appearance.SimpleLayout = False
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
        Color = 14922381
        ParentFont = False
        TabOrder = 1
        Version = '2.2.3.1'
        OnClick = AdvSmoothButton2Click
        TMSStyle = 8
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 37
      Width = 473
      Height = 475
      Align = alLeft
      TabOrder = 1
      ExplicitTop = 120
      ExplicitHeight = 405
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1codigo: TcxGridDBColumn
          DataBinding.FieldName = 'codigo'
        end
        object cxGrid1DBTableView1nombre: TcxGridDBColumn
          DataBinding.FieldName = 'nombre'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGrid2: TcxGrid
      Left = 471
      Top = 37
      Width = 469
      Height = 475
      Align = alRight
      TabOrder = 2
      ExplicitLeft = 464
      ExplicitTop = 120
      ExplicitHeight = 405
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid2DBTableView1codigo: TcxGridDBColumn
          DataBinding.FieldName = 'codigo'
          Width = 125
        end
        object cxGrid2DBTableView1tipo: TcxGridDBColumn
          DataBinding.FieldName = 'tipo'
          Width = 168
        end
        object cxGrid2DBTableView1estado: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object CurvyPanel3: TCurvyPanel
      Left = 0
      Top = 0
      Width = 940
      Height = 37
      Align = alTop
      Caption = ''
      TabOrder = 3
      object CurvyPanel4: TCurvyPanel
        Left = 0
        Top = 0
        Width = 473
        Height = 37
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = ''
        TabOrder = 0
        ExplicitHeight = 61
        object cxDBNavigator1: TcxDBNavigator
          Left = 0
          Top = 0
          Width = 465
          Height = 33
          Buttons.CustomButtons = <>
          DataSource = DataSource1
          Align = alTop
          TabOrder = 0
        end
      end
      object CurvyPanel5: TCurvyPanel
        Left = 471
        Top = 0
        Width = 469
        Height = 37
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = ''
        TabOrder = 1
        ExplicitLeft = 479
        ExplicitTop = -6
        ExplicitHeight = 67
        object cxDBNavigator2: TcxDBNavigator
          Left = 0
          Top = 0
          Width = 465
          Height = 33
          Buttons.CustomButtons = <>
          DataSource = DataSource2
          Align = alTop
          TabOrder = 0
        end
      end
    end
  end
  object UniQuery1: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 680
    Top = 112
    object UniQuery1clienteid: TIntegerField
      FieldName = 'clienteid'
    end
    object UniQuery1codigo: TStringField
      DisplayLabel = 'C'#243'digo del Cliente'
      FieldName = 'codigo'
      Required = True
      Size = 15
    end
    object UniQuery1nombre: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'nombre'
      Required = True
      Size = 250
    end
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 528
    Top = 184
  end
  object UniQuery2: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from contratos')
    MasterSource = DataSource1
    MasterFields = 'clienteid'
    DetailFields = 'clienteid'
    Left = 512
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clienteid'
        Value = nil
      end>
    object UniQuery2contratoid: TIntegerField
      FieldName = 'contratoid'
    end
    object UniQuery2clienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object UniQuery2codigo: TStringField
      DisplayLabel = 'C'#243'digo del Contrato'
      FieldName = 'codigo'
      Required = True
      Size = 15
    end
    object UniQuery2tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      Size = 50
    end
    object UniQuery2estado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Required = True
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = UniQuery2
    Left = 608
    Top = 208
  end
end
