object Fsel_ordend_factura: TFsel_ordend_factura
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Fsel_ordend_factura'
  ClientHeight = 322
  ClientWidth = 643
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
    Width = 643
    Height = 322
    Align = alClient
    Caption = ''
    TabOrder = 0
    ExplicitLeft = 72
    ExplicitTop = 56
    ExplicitWidth = 200
    ExplicitHeight = 100
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 0
      Width = 630
      Height = 25
      Buttons.CustomButtons = <>
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 160
      ExplicitTop = 80
      ExplicitWidth = 270
    end
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 240
      Width = 643
      Height = 82
      Align = alBottom
      Caption = ''
      TabOrder = 1
      DesignSize = (
        643
        82)
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 3
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
        Left = 510
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
        TMSStyle = 8
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 25
      Width = 643
      Height = 215
      Align = alClient
      TabOrder = 2
      ExplicitLeft = 128
      ExplicitTop = 96
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1ordenid: TcxGridDBColumn
          DataBinding.FieldName = 'ordenid'
        end
        object cxGrid1DBTableView1clienteid: TcxGridDBColumn
          DataBinding.FieldName = 'clienteid'
        end
        object cxGrid1DBTableView1contratoid: TcxGridDBColumn
          DataBinding.FieldName = 'contratoid'
        end
        object cxGrid1DBTableView1estado: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
        end
        object cxGrid1DBTableView1facturado: TcxGridDBColumn
          DataBinding.FieldName = 'facturado'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object QDespacho: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select ordenid,contratoid,clienteid,estado,facturado'
      
        'from orden_despacho where clienteid=:in_clienteid and contratoid' +
        '=:in_contratoid and estado='#39'Cerrado'#39' and facturado='#39'N'#39)
    Left = 288
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'in_clienteid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'in_contratoid'
        Value = nil
      end>
    object QDespachoordenid: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'No. Orden'
      FieldName = 'ordenid'
    end
    object QDespachoclienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object QDespachocontratoid: TIntegerField
      FieldName = 'contratoid'
      Required = True
    end
    object QDespachoestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Required = True
      Size = 15
    end
    object QDespachofacturado: TStringField
      DisplayLabel = 'Facturado'
      FieldName = 'facturado'
      Required = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = QDespacho
    Left = 480
    Top = 128
  end
  object UniQuery1: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      
        'select codigo as codcliente from clientes where clienteid=:incli' +
        'enteid ')
    Left = 232
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inclienteid'
        Value = nil
      end>
    object UniQuery1codcliente: TStringField
      FieldName = 'codcliente'
      Required = True
      Size = 15
    end
  end
  object DataSource2: TDataSource
    DataSet = UniQuery1
    Left = 312
    Top = 200
  end
end
