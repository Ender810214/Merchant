object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 392
  ClientWidth = 1045
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
    Width = 1045
    Height = 392
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 772
    ExplicitHeight = 321
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 0
      Width = 1045
      Height = 41
      Buttons.CustomButtons = <>
      Buttons.Insert.Enabled = False
      Buttons.Insert.Visible = False
      Buttons.Delete.Enabled = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Enabled = False
      Buttons.Edit.Visible = False
      Buttons.Post.Enabled = False
      Buttons.Post.Visible = False
      DataSource = DataSource1
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 759
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 41
      Width = 1045
      Height = 260
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 927
      ExplicitHeight = 336
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1codcliente: TcxGridDBColumn
          DataBinding.FieldName = 'codcliente'
        end
        object cxGrid1DBTableView1nomcliente: TcxGridDBColumn
          DataBinding.FieldName = 'nomcliente'
          Width = 242
        end
        object cxGrid1DBTableView1codcontrato: TcxGridDBColumn
          DataBinding.FieldName = 'codcontrato'
          Width = 102
        end
        object cxGrid1DBTableView1codproducto: TcxGridDBColumn
          DataBinding.FieldName = 'codproducto'
        end
        object cxGrid1DBTableView1desproducto: TcxGridDBColumn
          AlternateCaption = '350'
          DataBinding.FieldName = 'desproducto'
          Width = 246
        end
        object cxGrid1DBTableView1cantidad_contratada: TcxGridDBColumn
          DataBinding.FieldName = 'cantidad_contratada'
          Width = 107
        end
        object cxGrid1DBTableView1fecha_entrega: TcxGridDBColumn
          DataBinding.FieldName = 'fecha_entrega'
          Width = 103
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 301
      Width = 1045
      Height = 91
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 528
      DesignSize = (
        1045
        91)
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 16
        Top = 32
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
        Version = '2.1.1.9'
        TMSStyle = 13
      end
      object AdvSmoothButton2: TAdvSmoothButton
        Left = 888
        Top = 32
        Width = 120
        Height = 35
        Anchors = [akTop, akRight]
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
        Version = '2.1.1.9'
        TMSStyle = 13
      end
    end
  end
  object UniQuery1: TUniQuery
    SQLRefresh.Strings = (
      
        'SELECT contratoid, clienteid, anexoid, plazoid, productoid, cant' +
        'idad_contratada, fecha_entrega, cant_facturada, numero_factura F' +
        'ROM plazos_entrega'
      'WHERE'
      
        '  contratoid = :contratoid AND clienteid = :clienteid AND anexoi' +
        'd = :anexoid AND plazoid = :plazoid AND productoid = :productoid')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      
        'select clienteid,contratoid, productoid,fecha_entrega,cantidad_c' +
        'ontratada,'
      
        '(select codigo from clientes where clienteid=plazos_entrega.clie' +
        'nteid) as codcliente,'
      
        '(select nombre from clientes where clienteid=plazos_entrega.clie' +
        'nteid) as nomcliente,'
      
        '(select codigo from contratos where clienteid=plazos_entrega.cli' +
        'enteid and contratoid=plazos_entrega.contratoid) as codcontrato,'
      
        '(select codigo from productos where productoid=plazos_entrega.pr' +
        'oductoid) as codproducto,'
      
        '(select descripcion from productos where productoid=plazos_entre' +
        'ga.productoid) as desproducto'
      ' from plazos_entrega')
    Active = True
    Left = 176
    Top = 168
    object UniQuery1clienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object UniQuery1contratoid: TIntegerField
      FieldName = 'contratoid'
      Required = True
    end
    object UniQuery1productoid: TIntegerField
      FieldName = 'productoid'
      Required = True
    end
    object UniQuery1fecha_entrega: TDateField
      DisplayLabel = 'Fecha de Entrega'
      FieldName = 'fecha_entrega'
      Required = True
    end
    object UniQuery1codcliente: TStringField
      DisplayLabel = 'C'#243'digo del Cliente'
      FieldName = 'codcliente'
      ReadOnly = True
      Size = 15
    end
    object UniQuery1nomcliente: TStringField
      DisplayLabel = 'Nombre del Cliente'
      FieldName = 'nomcliente'
      ReadOnly = True
      Size = 250
    end
    object UniQuery1codcontrato: TStringField
      DisplayLabel = 'C'#243'digo del Contrato'
      FieldName = 'codcontrato'
      ReadOnly = True
      Size = 15
    end
    object UniQuery1codproducto: TStringField
      DisplayLabel = 'C'#243'digo del Producto'
      FieldName = 'codproducto'
      ReadOnly = True
    end
    object UniQuery1desproducto: TStringField
      DisplayLabel = 'Descripci'#243'n del  Producto'
      FieldName = 'desproducto'
      ReadOnly = True
      Size = 250
    end
    object UniQuery1cantidad_contratada: TFloatField
      DisplayLabel = 'Cantidad Contratada'
      FieldName = 'cantidad_contratada'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 384
    Top = 256
  end
end
