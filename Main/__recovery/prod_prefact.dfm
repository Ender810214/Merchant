object Fprod_prefact: TFprod_prefact
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Fprod_prefact'
  ClientHeight = 773
  ClientWidth = 1072
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
    Width = 1072
    Height = 773
    Align = alClient
    Caption = ''
    TabOrder = 0
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 0
      Width = 1072
      Height = 161
      Align = alTop
      Caption = ''
      TabOrder = 0
      DesignSize = (
        1072
        161)
      object Label1: TLabel
        Left = 40
        Top = 80
        Width = 57
        Height = 13
        Caption = 'No. Factura'
      end
      object Label2: TLabel
        Left = 119
        Top = 80
        Width = 96
        Height = 13
        Caption = 'C'#243'digo del Producto'
      end
      object Label3: TLabel
        Left = 246
        Top = 80
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label4: TLabel
        Left = 527
        Top = 77
        Width = 96
        Height = 13
        Caption = 'Cantidad a Facturar'
        FocusControl = cxDBCalcEdit1
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 0
        Top = 0
        Width = 1065
        Height = 49
        Buttons.CustomButtons = <>
        DataSource = DataSource1
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 527
        Top = 96
        DataBinding.DataField = 'cantidad_factura'
        DataBinding.DataSource = DataSource1
        TabOrder = 1
        Width = 121
      end
      object cxDBLabel1: TcxDBLabel
        Left = 40
        Top = 99
        DataBinding.DataField = 'facturaid'
        DataBinding.DataSource = DataSource1
        Height = 21
        Width = 121
      end
      object cxDBButtonEdit1: TcxDBButtonEdit
        Left = 119
        Top = 96
        DataBinding.DataField = 'codigo'
        DataBinding.DataSource = DataSource1
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
        TabOrder = 3
        Width = 121
      end
      object cxDBLabel2: TcxDBLabel
        Left = 246
        Top = 96
        DataBinding.DataField = 'descripcion'
        DataBinding.DataSource = DataSource1
        Height = 21
        Width = 275
      end
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 936
        Top = 55
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
        Caption = 'Cerrar'
        Color = 14922381
        ParentFont = False
        TabOrder = 5
        Version = '2.2.3.1'
        OnClick = AdvSmoothButton1Click
        TMSStyle = 8
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 161
      Width = 1072
      Height = 612
      Align = alClient
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1facturaid: TcxGridDBColumn
          DataBinding.FieldName = 'facturaid'
          Width = 84
        end
        object cxGrid1DBTableView1codigo: TcxGridDBColumn
          DataBinding.FieldName = 'codigo'
          Width = 131
        end
        object cxGrid1DBTableView1descripcion: TcxGridDBColumn
          DataBinding.FieldName = 'descripcion'
          Width = 300
        end
        object cxGrid1DBTableView1cantidad_factura: TcxGridDBColumn
          DataBinding.FieldName = 'cantidad_factura'
          Width = 150
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Qprod_prefact: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO prod_prefact'
      
        '  (facturaid, productoid, codigo, descripcion, cantidad_factura,' +
        ' fecha_factura, ubicacionid)'
      'VALUES'
      
        '  (:facturaid, :productoid, :codigo, :descripcion, :cantidad_fac' +
        'tura, :fecha_factura, :ubicacionid)')
    SQLDelete.Strings = (
      'DELETE FROM prod_prefact'
      'WHERE'
      '  facturaid = :Old_facturaid AND productoid = :Old_productoid')
    SQLUpdate.Strings = (
      'UPDATE prod_prefact'
      'SET'
      
        '  facturaid = :facturaid, productoid = :productoid, codigo = :co' +
        'digo, descripcion = :descripcion, cantidad_factura = :cantidad_f' +
        'actura, fecha_factura = :fecha_factura, ubicacionid = :ubicacion' +
        'id'
      'WHERE'
      '  facturaid = :Old_facturaid AND productoid = :Old_productoid')
    SQLRefresh.Strings = (
      
        'SELECT facturaid, productoid, codigo, descripcion, cantidad_fact' +
        'ura, fecha_factura, ubicacionid FROM prod_prefact'
      'WHERE'
      '  facturaid = :facturaid AND productoid = :productoid')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from prod_prefact')
    MasterSource = Fprefacturas.DataSource1
    MasterFields = 'prefacturaid;fecha'
    DetailFields = 'facturaid;fecha_factura'
    Left = 480
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prefacturaid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        Value = nil
      end>
    object Qprod_prefactfacturaid: TIntegerField
      DisplayLabel = 'No. Factura'
      FieldName = 'facturaid'
      Required = True
    end
    object Qprod_prefactproductoid: TIntegerField
      FieldName = 'productoid'
      Required = True
    end
    object Qprod_prefactcodigo: TStringField
      DisplayLabel = 'C'#243'digo del Producto'
      FieldName = 'codigo'
      Required = True
      Size = 15
    end
    object Qprod_prefactdescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'descripcion'
      Required = True
      Size = 150
    end
    object Qprod_prefactcantidad_factura: TFloatField
      DisplayLabel = 'Cantidad a Facturar'
      FieldName = 'cantidad_factura'
      Required = True
    end
    object Qprod_prefactfecha_factura: TDateField
      FieldName = 'fecha_factura'
    end
    object Qprod_prefactubicacionid: TIntegerField
      FieldName = 'ubicacionid'
    end
  end
  object DataSource1: TDataSource
    DataSet = Qprod_prefact
    Left = 480
    Top = 432
  end
end
