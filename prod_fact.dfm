object Fprod_fact: TFprod_fact
  Left = 0
  Top = 0
  Align = alCustom
  BorderStyle = bsNone
  Caption = 'Fprod_fact'
  ClientHeight = 696
  ClientWidth = 1069
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label6: TLabel
    Left = 400
    Top = 72
    Width = 63
    Height = 13
    Caption = 'No. Contrato'
  end
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 0
    Width = 1069
    Height = 696
    Align = alClient
    Caption = ''
    TabOrder = 0
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 0
      Width = 1069
      Height = 217
      Align = alTop
      Caption = ''
      TabOrder = 0
      object Label1: TLabel
        Left = 40
        Top = 72
        Width = 57
        Height = 13
        Caption = 'No. Factura'
      end
      object Label2: TLabel
        Left = 160
        Top = 72
        Width = 53
        Height = 13
        Caption = 'No. Cliente'
      end
      object Label3: TLabel
        Left = 280
        Top = 72
        Width = 63
        Height = 13
        Caption = 'No. Contrato'
      end
      object Label4: TLabel
        Left = 640
        Top = 72
        Width = 79
        Height = 13
        Caption = 'C'#243'digo producto'
      end
      object Label5: TLabel
        Left = 767
        Top = 72
        Width = 96
        Height = 13
        Caption = 'Cantidad a Facturar'
        FocusControl = cxDBCalcEdit1
      end
      object Label7: TLabel
        Left = 400
        Top = 72
        Width = 51
        Height = 13
        Caption = 'No. Anexo'
      end
      object Label8: TLabel
        Left = 512
        Top = 72
        Width = 38
        Height = 13
        Caption = 'Posici'#243'n'
      end
      object Label9: TLabel
        Left = 904
        Top = 85
        Width = 6
        Height = 23
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 40
        Top = 136
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label11: TLabel
        Left = 184
        Top = 136
        Width = 48
        Height = 13
        Caption = 'Descrici'#243'n'
      end
      object Label12: TLabel
        Left = 488
        Top = 136
        Width = 52
        Height = 13
        Caption = 'Precio CUP'
      end
      object Label13: TLabel
        Left = 567
        Top = 136
        Width = 52
        Height = 13
        Caption = 'Precio MLC'
      end
      object Label14: TLabel
        Left = 646
        Top = 136
        Width = 68
        Height = 13
        Caption = 'Costo Unitario'
      end
      object cxDBNavigator1: TcxDBNavigator
        Left = 0
        Top = 0
        Width = 1069
        Height = 41
        Buttons.CustomButtons = <>
        DataSource = DataSource1
        Align = alTop
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ExplicitWidth = 1065
      end
      object cxDBLabel1: TcxDBLabel
        Left = 40
        Top = 91
        DataBinding.DataField = 'facturaid'
        DataBinding.DataSource = DataSource1
        Height = 21
        Width = 114
      end
      object cxDBLabel2: TcxDBLabel
        Left = 160
        Top = 91
        DataBinding.DataField = 'clienteid'
        DataBinding.DataSource = DataSource1
        Height = 21
        Width = 114
      end
      object cxDBLabel3: TcxDBLabel
        Left = 280
        Top = 91
        DataBinding.DataField = 'contratoid'
        DataBinding.DataSource = DataSource1
        Height = 21
        Width = 114
      end
      object JvDBComboEdit1: TJvDBComboEdit
        Left = 640
        Top = 91
        Width = 121
        Height = 21
        DataField = 'productoid'
        DataSource = DataSource1
        TabOrder = 4
        OnButtonClick = JvDBComboEdit1ButtonClick
      end
      object cxDBCalcEdit1: TcxDBCalcEdit
        Left = 767
        Top = 91
        DataBinding.DataField = 'cantidad_factura'
        DataBinding.DataSource = DataSource1
        TabOrder = 5
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 904
        Top = 68
        Caption = 'Disponible'
      end
      object cxDBLabel6: TcxDBLabel
        Left = 40
        Top = 155
        DataBinding.DataField = 'codigo_producto'
        DataBinding.DataSource = DataSource2
        Height = 21
        Width = 138
      end
      object cxDBLabel7: TcxDBLabel
        Left = 184
        Top = 155
        DataBinding.DataField = 'descripcion_producto'
        DataBinding.DataSource = DataSource2
        Height = 21
        Width = 298
      end
      object cxDBLabel8: TcxDBLabel
        Left = 488
        Top = 155
        DataBinding.DataField = 'precio_cup'
        DataBinding.DataSource = DataSource2
        Height = 21
        Width = 73
      end
      object cxDBLabel9: TcxDBLabel
        Left = 567
        Top = 155
        DataBinding.DataField = 'precio_usd'
        DataBinding.DataSource = DataSource2
        Height = 21
        Width = 73
      end
      object cxDBLabel10: TcxDBLabel
        Left = 646
        Top = 155
        DataBinding.DataField = 'costo_unitario'
        DataBinding.DataSource = DataSource2
        Height = 21
        Width = 73
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 266
      Width = 1069
      Height = 430
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
        end
        object cxGrid1DBTableView1almacenid: TcxGridDBColumn
          DataBinding.FieldName = 'almacenid'
        end
        object cxGrid1DBTableView1contratoid: TcxGridDBColumn
          DataBinding.FieldName = 'contratoid'
        end
        object cxGrid1DBTableView1clienteid: TcxGridDBColumn
          DataBinding.FieldName = 'clienteid'
        end
        object cxGrid1DBTableView1productoid: TcxGridDBColumn
          DataBinding.FieldName = 'productoid'
        end
        object cxGrid1DBTableView1cantidad_factura: TcxGridDBColumn
          DataBinding.FieldName = 'cantidad_factura'
          Width = 88
        end
        object cxGrid1DBTableView1ubicacionid: TcxGridDBColumn
          Caption = 'Ubicaci'#243'n'
          DataBinding.FieldName = 'ubicacionid'
        end
        object cxGrid1DBTableView1anexoid: TcxGridDBColumn
          Caption = 'Anexo'
          DataBinding.FieldName = 'anexoid'
        end
        object cxGrid1DBTableView1posicion_anexo: TcxGridDBColumn
          Caption = 'Posici'#243'n'
          DataBinding.FieldName = 'posicion_anexo'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object CurvyPanel3: TCurvyPanel
      Left = 0
      Top = 217
      Width = 1069
      Height = 49
      Align = alTop
      Caption = ''
      TabOrder = 2
      DesignSize = (
        1069
        49)
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 945
        Top = 8
        Width = 120
        Height = 35
        Anchors = [akTop, akRight]
        Appearance.Font.Charset = DEFAULT_CHARSET
        Appearance.Font.Color = clBlack
        Appearance.Font.Height = -11
        Appearance.Font.Name = 'Tahoma'
        Appearance.Font.Style = []
        Appearance.SimpleLayout = True
        Appearance.Rounding = 0
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
        Color = 16250613
        ParentFont = False
        TabOrder = 0
        Version = '2.2.3.1'
        OnClick = AdvSmoothButton1Click
        TMSStyle = 8
      end
    end
  end
  object cxDBLabel4: TcxDBLabel
    Left = 400
    Top = 91
    DataBinding.DataField = 'anexoid'
    DataBinding.DataSource = DataSource1
    Height = 21
    Width = 106
  end
  object cxDBLabel5: TcxDBLabel
    Left = 512
    Top = 91
    DataBinding.DataField = 'posicion_anexo'
    DataBinding.DataSource = DataSource1
    Height = 21
    Width = 114
  end
  object DataSource1: TDataSource
    DataSet = QProd_Fact
    Left = 392
    Top = 496
  end
  object QProd_Fact: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO prod_fact'
      
        '  (facturaid, almacenid, contratoid, clienteid, productoid, cant' +
        'idad_factura, ubicacionid, anexoid, posicion_anexo, fecha_factur' +
        'a)'
      'VALUES'
      
        '  (:facturaid, :almacenid, :contratoid, :clienteid, :productoid,' +
        ' :cantidad_factura, :ubicacionid, :anexoid, :posicion_anexo, :fe' +
        'cha_factura)')
    SQLDelete.Strings = (
      'DELETE FROM prod_fact'
      'WHERE'
      
        '  facturaid = :Old_facturaid AND almacenid = :Old_almacenid AND ' +
        'contratoid = :Old_contratoid AND clienteid = :Old_clienteid AND ' +
        'productoid = :Old_productoid AND ubicacionid = :Old_ubicacionid ' +
        'AND anexoid = :Old_anexoid AND posicion_anexo = :Old_posicion_an' +
        'exo')
    SQLUpdate.Strings = (
      'UPDATE prod_fact'
      'SET'
      
        '  facturaid = :facturaid, almacenid = :almacenid, contratoid = :' +
        'contratoid, clienteid = :clienteid, productoid = :productoid, ca' +
        'ntidad_factura = :cantidad_factura, ubicacionid = :ubicacionid, ' +
        'anexoid = :anexoid, posicion_anexo = :posicion_anexo'
      'WHERE'
      
        '  facturaid = :Old_facturaid AND almacenid = :Old_almacenid AND ' +
        'contratoid = :Old_contratoid AND clienteid = :Old_clienteid AND ' +
        'productoid = :Old_productoid AND ubicacionid = :Old_ubicacionid ' +
        'AND anexoid = :Old_anexoid AND posicion_anexo = :Old_posicion_an' +
        'exo')
    SQLRefresh.Strings = (
      
        'SELECT facturaid, almacenid, contratoid, clienteid, productoid, ' +
        'cantidad_factura, ubicacionid, anexoid, posicion_anexo FROM prod' +
        '_fact'
      'WHERE'
      
        '  facturaid = :facturaid AND almacenid = :almacenid AND contrato' +
        'id = :contratoid AND clienteid = :clienteid AND productoid = :pr' +
        'oductoid AND ubicacionid = :ubicacionid AND anexoid = :anexoid A' +
        'ND posicion_anexo = :posicion_anexo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM prod_fact'
      ''
      ') t')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      
        'select * from prod_fact where facturaid=:factura and fecha_factu' +
        'ra=:fecha')
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    AutoCalcFields = False
    AfterInsert = QProd_FactAfterInsert
    Left = 569
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'factura'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'fecha'
        Value = nil
      end>
    object QProd_Factfacturaid: TIntegerField
      FieldName = 'facturaid'
      Required = True
    end
    object QProd_Factalmacenid: TStringField
      FieldName = 'almacenid'
      Required = True
      Size = 10
    end
    object QProd_Factcontratoid: TIntegerField
      FieldName = 'contratoid'
      Required = True
    end
    object QProd_Factclienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object QProd_Factproductoid: TIntegerField
      FieldName = 'productoid'
      Required = True
    end
    object QProd_Factcantidad_factura: TFloatField
      FieldName = 'cantidad_factura'
      Required = True
    end
    object QProd_Factubicacionid: TIntegerField
      FieldName = 'ubicacionid'
      Required = True
    end
    object QProd_Factanexoid: TIntegerField
      FieldName = 'anexoid'
      Required = True
    end
    object QProd_Factposicion_anexo: TIntegerField
      FieldName = 'posicion_anexo'
      Required = True
    end
    object QProd_Factfecha_factura: TDateField
      FieldName = 'fecha_factura'
    end
  end
  object UniQuery1: TUniQuery
    BeforePost = UniQuery1BeforePost
    Left = 496
    Top = 360
  end
  object UniQuery2: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from ubicacion')
    MasterSource = DataSource1
    MasterFields = 'productoid'
    DetailFields = 'productoid'
    Left = 560
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'productoid'
        Value = nil
      end>
    object UniQuery2precio_cup: TFloatField
      FieldName = 'precio_cup'
      Required = True
    end
    object UniQuery2precio_usd: TFloatField
      FieldName = 'precio_usd'
      Required = True
    end
    object UniQuery2codigo_producto: TStringField
      FieldName = 'codigo_producto'
    end
    object UniQuery2descripcion_producto: TStringField
      FieldName = 'descripcion_producto'
      Size = 150
    end
    object UniQuery2costo_unitario: TFloatField
      FieldName = 'costo_unitario'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = UniQuery2
    Left = 504
    Top = 464
  end
end
