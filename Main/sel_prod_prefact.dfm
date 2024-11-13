object Fsel_prod_prefact: TFsel_prod_prefact
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Fsel_prod_prefact'
  ClientHeight = 370
  ClientWidth = 1085
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
    Width = 1085
    Height = 370
    Align = alClient
    Caption = ''
    TabOrder = 0
    ExplicitWidth = 746
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 0
      Width = 1080
      Height = 33
      Buttons.CustomButtons = <>
      DataSource = DataSource1
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 735
    end
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 280
      Width = 1085
      Height = 90
      Align = alBottom
      Caption = ''
      TabOrder = 1
      ExplicitWidth = 746
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 24
        Top = 32
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
        Left = 608
        Top = 32
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
      Top = 33
      Width = 1085
      Height = 247
      Align = alClient
      TabOrder = 2
      ExplicitWidth = 746
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1codcliente: TcxGridDBColumn
          DataBinding.FieldName = 'codcliente'
        end
        object cxGrid1DBTableView1codcontrato: TcxGridDBColumn
          DataBinding.FieldName = 'codcontrato'
        end
        object cxGrid1DBTableView1anexo: TcxGridDBColumn
          DataBinding.FieldName = 'anexo'
        end
        object cxGrid1DBTableView1posicion_anexo: TcxGridDBColumn
          DataBinding.FieldName = 'posicion_anexo'
          Width = 79
        end
        object cxGrid1DBTableView1codigo_producto: TcxGridDBColumn
          DataBinding.FieldName = 'codigo_producto'
        end
        object cxGrid1DBTableView1descripcion_producto: TcxGridDBColumn
          DataBinding.FieldName = 'descripcion_producto'
          Width = 300
        end
        object cxGrid1DBTableView1precio_cup: TcxGridDBColumn
          DataBinding.FieldName = 'precio_cup'
        end
        object cxGrid1DBTableView1precio_usd: TcxGridDBColumn
          DataBinding.FieldName = 'precio_usd'
        end
        object cxGrid1DBTableView1costo_unitario: TcxGridDBColumn
          DataBinding.FieldName = 'costo_unitario'
        end
        object cxGrid1DBTableView1existencia: TcxGridDBColumn
          DataBinding.FieldName = 'existencia'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object UniQuery1: TUniQuery
    SQLRefresh.Strings = (
      
        'SELECT almacenid, ubicacionid, contratoid, clienteid, productoid' +
        ', codcontrato, anexo, posicion_anexo, cant_facturada, facturado,' +
        ' reservado, precio_cup, precio_cuc, precio_usd, codigo_producto,' +
        ' descripcion_producto, existencia, costo_unitario, costo_total, ' +
        'codcliente, fecha_entrada, vale, ueb, tranfid FROM ubicacion'
      'WHERE'
      
        '  almacenid = :almacenid AND ubicacionid = :ubicacionid AND cont' +
        'ratoid = :contratoid AND clienteid = :clienteid AND productoid =' +
        ' :productoid AND anexo = :anexo AND posicion_anexo = :posicion_a' +
        'nexo')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      
        'select * from ubicacion where existencia > 0 and clienteid=:incl' +
        'ienteid and contratoid=:incontratoid')
    Left = 408
    Top = 184
    ParamData = <
      item
        DataType = ftInteger
        Name = 'inclienteid'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'incontratoid'
        Value = nil
      end>
    object UniQuery1almacenid: TStringField
      FieldName = 'almacenid'
      Required = True
      Size = 10
    end
    object UniQuery1ubicacionid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ubicacionid'
    end
    object UniQuery1contratoid: TIntegerField
      FieldName = 'contratoid'
      Required = True
    end
    object UniQuery1clienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object UniQuery1productoid: TIntegerField
      FieldName = 'productoid'
      Required = True
    end
    object UniQuery1codcontrato: TStringField
      FieldName = 'codcontrato'
    end
    object UniQuery1anexo: TIntegerField
      FieldName = 'anexo'
      Required = True
    end
    object UniQuery1posicion_anexo: TIntegerField
      FieldName = 'posicion_anexo'
      Required = True
    end
    object UniQuery1cant_facturada: TFloatField
      FieldName = 'cant_facturada'
      Required = True
    end
    object UniQuery1facturado: TStringField
      FieldName = 'facturado'
      Required = True
      Size = 1
    end
    object UniQuery1reservado: TFloatField
      FieldName = 'reservado'
      Required = True
    end
    object UniQuery1precio_cup: TFloatField
      FieldName = 'precio_cup'
      Required = True
    end
    object UniQuery1precio_cuc: TFloatField
      FieldName = 'precio_cuc'
    end
    object UniQuery1precio_usd: TFloatField
      FieldName = 'precio_usd'
      Required = True
    end
    object UniQuery1codigo_producto: TStringField
      FieldName = 'codigo_producto'
    end
    object UniQuery1descripcion_producto: TStringField
      FieldName = 'descripcion_producto'
      Size = 150
    end
    object UniQuery1existencia: TFloatField
      FieldName = 'existencia'
      Required = True
    end
    object UniQuery1costo_unitario: TFloatField
      FieldName = 'costo_unitario'
      Required = True
    end
    object UniQuery1costo_total: TFloatField
      FieldName = 'costo_total'
    end
    object UniQuery1codcliente: TStringField
      FieldName = 'codcliente'
      Size = 15
    end
    object UniQuery1fecha_entrada: TDateField
      FieldName = 'fecha_entrada'
    end
    object UniQuery1vale: TStringField
      FieldName = 'vale'
      Required = True
      Size = 10
    end
    object UniQuery1ueb: TStringField
      FieldName = 'ueb'
      Size = 5
    end
    object UniQuery1tranfid: TIntegerField
      FieldName = 'tranfid'
    end
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 216
    Top = 216
  end
end
