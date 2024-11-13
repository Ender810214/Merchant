object Fadd_prod: TFadd_prod
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Fadd_prod'
  ClientHeight = 480
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 13
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 480
    Align = alClient
    Caption = ''
    TabOrder = 0
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 0
      Width = 805
      Height = 161
      Align = alTop
      Caption = ''
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 40
        Width = 50
        Height = 13
        Caption = 'No. Orden'
        FocusControl = cxDBSpinEdit1
      end
      object Label2: TLabel
        Left = 151
        Top = 40
        Width = 96
        Height = 13
        Caption = 'C'#243'digo del Producto'
      end
      object Label4: TLabel
        Left = 278
        Top = 40
        Width = 106
        Height = 13
        Caption = 'Cantidad a Despachar'
        FocusControl = cxDBCalcEdit1
      end
      object Label5: TLabel
        Left = 405
        Top = 40
        Width = 121
        Height = 13
        Caption = 'Cantidad real Depachada'
        FocusControl = cxDBCalcEdit2
      end
      object Label6: TLabel
        Left = 24
        Top = 96
        Width = 52
        Height = 13
        Caption = 'Precio CUP'
      end
      object Label7: TLabel
        Left = 151
        Top = 96
        Width = 61
        Height = 13
        Caption = 'Importe CUP'
      end
      object Label8: TLabel
        Left = 278
        Top = 96
        Width = 53
        Height = 13
        Caption = 'Precio CUC'
      end
      object Label9: TLabel
        Left = 405
        Top = 96
        Width = 62
        Height = 13
        Caption = 'Importe CUC'
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 0
        Top = 0
        Width = 805
        Height = 33
        Buttons.CustomButtons = <>
        DataSource = DataSource1
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ExplicitWidth = 795
      end
      object cxDBSpinEdit1: TcxDBSpinEdit
        Left = 24
        Top = 56
        DataBinding.DataField = 'ordenid'
        DataBinding.DataSource = DataSource1
        TabOrder = 1
        Width = 121
      end
      object JvDBComboEdit1: TJvDBComboEdit
        Left = 151
        Top = 56
        Width = 121
        Height = 21
        DataField = 'productoid'
        DataSource = DataSource1
        TabOrder = 2
        OnButtonClick = JvDBComboEdit1ButtonClick
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 278
        Top = 56
        DataBinding.DataField = 'cantidad_despachar'
        DataBinding.DataSource = DataSource1
        TabOrder = 3
        Width = 121
      end
      object cxDBCalcEdit2: TcxDBCalcEdit
        Left = 405
        Top = 56
        DataBinding.DataField = 'cant_real_despachada'
        DataBinding.DataSource = DataSource1
        TabOrder = 4
        Width = 121
      end
      object cxDBLabel1: TcxDBLabel
        Left = 151
        Top = 112
        DataBinding.DataField = 'importe_mn'
        DataBinding.DataSource = DataSource1
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Height = 21
        Width = 121
        AnchorX = 272
      end
      object cxDBLabel2: TcxDBLabel
        Left = 405
        Top = 112
        DataBinding.DataField = 'importe_cuc'
        DataBinding.DataSource = DataSource1
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Height = 21
        Width = 121
        AnchorX = 526
      end
      object cxDBLabel3: TcxDBLabel
        Left = 24
        Top = 110
        DataBinding.DataField = 'precio_mn'
        DataBinding.DataSource = DataSource1
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Height = 21
        Width = 121
        AnchorX = 145
      end
      object cxDBLabel4: TcxDBLabel
        Left = 278
        Top = 110
        DataBinding.DataField = 'precio_cuc'
        DataBinding.DataSource = DataSource1
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Height = 21
        Width = 121
        AnchorX = 399
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 204
      Width = 805
      Height = 276
      Align = alClient
      TabOrder = 1
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
        object cxGrid1DBTableView1productoid: TcxGridDBColumn
          DataBinding.FieldName = 'productoid'
        end
        object cxGrid1DBTableView1cantidad_despachar: TcxGridDBColumn
          DataBinding.FieldName = 'cantidad_despachar'
          Width = 112
        end
        object cxGrid1DBTableView1cant_real_despachada: TcxGridDBColumn
          DataBinding.FieldName = 'cant_real_despachada'
        end
        object cxGrid1DBTableView1precio_mn: TcxGridDBColumn
          DataBinding.FieldName = 'precio_mn'
        end
        object cxGrid1DBTableView1importe_mn: TcxGridDBColumn
          DataBinding.FieldName = 'importe_mn'
        end
        object cxGrid1DBTableView1precio_cuc: TcxGridDBColumn
          DataBinding.FieldName = 'precio_cuc'
        end
        object cxGrid1DBTableView1importe_cuc: TcxGridDBColumn
          DataBinding.FieldName = 'importe_cuc'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object CurvyPanel3: TCurvyPanel
      Left = 0
      Top = 161
      Width = 805
      Height = 43
      Align = alTop
      Caption = ''
      TabOrder = 2
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 682
        Top = 3
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
        Caption = 'Cerrar'
        Color = 15784647
        ParentFont = False
        TabOrder = 0
        Version = '2.2.3.1'
        OnClick = AdvSmoothButton1Click
        TMSStyle = 8
      end
    end
  end
  object Qprod_despacho: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO productos_ordend'
      
        '  (ordenid, productoid, cantidad_despachar, cant_real_despachada' +
        ', precio_mn, importe_mn, precio_cuc, importe_cuc)'
      'VALUES'
      
        '  (:ordenid, :productoid, :cantidad_despachar, :cant_real_despac' +
        'hada, :precio_mn, :importe_mn, :precio_cuc, :importe_cuc)')
    SQLDelete.Strings = (
      'DELETE FROM productos_ordend'
      'WHERE'
      '  ordenid = :Old_ordenid AND productoid = :Old_productoid')
    SQLUpdate.Strings = (
      'UPDATE productos_ordend'
      'SET'
      
        '  ordenid = :ordenid, productoid = :productoid, cantidad_despach' +
        'ar = :cantidad_despachar, cant_real_despachada = :cant_real_desp' +
        'achada, precio_mn = :precio_mn, importe_mn = :importe_mn, precio' +
        '_cuc = :precio_cuc, importe_cuc = :importe_cuc'
      'WHERE'
      '  ordenid = :Old_ordenid AND productoid = :Old_productoid')
    SQLRefresh.Strings = (
      
        'SELECT ordenid, productoid, cantidad_despachar, cant_real_despac' +
        'hada, precio_mn, importe_mn, precio_cuc, importe_cuc FROM produc' +
        'tos_ordend'
      'WHERE'
      '  ordenid = :ordenid AND productoid = :productoid')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select ordenid, productoid, cantidad_despachar,'
      
        'cant_real_despachada, precio_mn, importe_mn, precio_cuc, importe' +
        '_cuc'
      'from  productos_ordend where ordenid=:ordenid')
    Active = True
    OnNewRecord = Qprod_despachoNewRecord
    Left = 168
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ordenid'
        Value = nil
      end>
    object Qprod_despachoordenid: TIntegerField
      DisplayLabel = 'No. Orden'
      FieldName = 'ordenid'
      Required = True
    end
    object Qprod_despachoproductoid: TStringField
      DisplayLabel = 'ID del Producto'
      FieldName = 'productoid'
      Required = True
      Size = 30
    end
    object Qprod_despachocantidad_despachar: TFloatField
      DisplayLabel = 'Cantidad a Despachar'
      FieldName = 'cantidad_despachar'
      Required = True
    end
    object Qprod_despachocant_real_despachada: TFloatField
      DisplayLabel = 'Cantidad real Depachada'
      FieldName = 'cant_real_despachada'
    end
    object Qprod_despachoprecio_mn: TFloatField
      DisplayLabel = 'Precio CUP'
      FieldName = 'precio_mn'
      Required = True
    end
    object Qprod_despachoimporte_mn: TFloatField
      DisplayLabel = 'Importe CUP'
      FieldName = 'importe_mn'
    end
    object Qprod_despachoprecio_cuc: TFloatField
      DisplayLabel = 'Precio CUC'
      FieldName = 'precio_cuc'
      Required = True
    end
    object Qprod_despachoimporte_cuc: TFloatField
      DisplayLabel = 'Importe CUC'
      FieldName = 'importe_cuc'
    end
  end
  object DataSource1: TDataSource
    DataSet = Qprod_despacho
    Left = 376
    Top = 160
  end
end
