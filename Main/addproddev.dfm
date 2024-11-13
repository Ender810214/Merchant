object Faddproddev: TFaddproddev
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Faddproddev'
  ClientHeight = 521
  ClientWidth = 1063
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
    Width = 1063
    Height = 521
    Align = alClient
    Caption = ''
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 304
      Width = 96
      Height = 13
      Caption = 'C'#243'digo del Contrato'
    end
    object Label2: TLabel
      Left = 176
      Top = 304
      Width = 86
      Height = 13
      Caption = 'C'#243'digo del Cliente'
    end
    object Label3: TLabel
      Left = 303
      Top = 304
      Width = 90
      Height = 13
      Caption = 'Nombre del Cliente'
    end
    object Label4: TLabel
      Left = 40
      Top = 285
      Width = 136
      Height = 13
      Caption = 'Datos del Contrato y Cliente'
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 0
      Width = 1063
      Height = 33
      Buttons.CustomButtons = <>
      Buttons.Insert.Enabled = False
      Buttons.Insert.Visible = False
      Buttons.Append.Enabled = False
      Buttons.Append.Visible = False
      Buttons.Delete.Enabled = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Enabled = False
      Buttons.Edit.Visible = False
      Buttons.Post.Enabled = False
      Buttons.Post.Visible = False
      DataSource = DataSource1
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 935
    end
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 33
      Width = 1063
      Height = 224
      Align = alTop
      Caption = ''
      TabOrder = 1
      ExplicitWidth = 940
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1063
        Height = 224
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 940
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1ubicacionid: TcxGridDBColumn
            DataBinding.FieldName = 'ubicacionid'
          end
          object cxGrid1DBTableView1codcontrato: TcxGridDBColumn
            Caption = 'Contrato'
            DataBinding.FieldName = 'codcontrato'
          end
          object cxGrid1DBTableView1anexo: TcxGridDBColumn
            Caption = 'Anexo'
            DataBinding.FieldName = 'anexo'
          end
          object cxGrid1DBTableView1posicion_anexo: TcxGridDBColumn
            Caption = 'Posici'#243'n'
            DataBinding.FieldName = 'posicion_anexo'
          end
          object cxGrid1DBTableView1codigo_producto: TcxGridDBColumn
            DataBinding.FieldName = 'codigo_producto'
            Width = 100
          end
          object cxGrid1DBTableView1descripcion_producto: TcxGridDBColumn
            DataBinding.FieldName = 'descripcion_producto'
            Width = 200
          end
          object cxGrid1DBTableView1precio_cup: TcxGridDBColumn
            DataBinding.FieldName = 'precio_cup'
          end
          object cxGrid1DBTableView1precio_usd: TcxGridDBColumn
            DataBinding.FieldName = 'precio_usd'
          end
          object cxGrid1DBTableView1costo_unitario: TcxGridDBColumn
            Caption = 'Costo'
            DataBinding.FieldName = 'costo_unitario'
          end
          object cxGrid1DBTableView1codcliente: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'codcliente'
          end
          object cxGrid1DBTableView1existencia: TcxGridDBColumn
            Caption = 'Existencia'
            DataBinding.FieldName = 'existencia'
          end
          object cxGrid1DBTableView1ueb: TcxGridDBColumn
            Caption = 'UEB'
            DataBinding.FieldName = 'ueb'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxDBLabel1: TcxDBLabel
      Left = 40
      Top = 323
      DataBinding.DataField = 'codigo'
      DataBinding.DataSource = DataSource2
      Height = 21
      Width = 121
    end
    object cxDBLabel2: TcxDBLabel
      Left = 176
      Top = 323
      DataBinding.DataField = 'codcliente'
      DataBinding.DataSource = DataSource2
      Height = 21
      Width = 121
    end
    object cxDBLabel3: TcxDBLabel
      Left = 303
      Top = 323
      DataBinding.DataField = 'nombrecliente'
      DataBinding.DataSource = DataSource2
      Height = 21
      Width = 362
    end
    object AdvSmoothButton1: TAdvSmoothButton
      Left = 40
      Top = 408
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
      Color = 15590880
      ParentFont = False
      TabOrder = 5
      Version = '2.2.3.1'
      OnClick = AdvSmoothButton1Click
      TMSStyle = 8
    end
    object AdvSmoothButton2: TAdvSmoothButton
      Left = 792
      Top = 408
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
      Color = 15590880
      ParentFont = False
      TabOrder = 6
      Version = '2.2.3.1'
      OnClick = AdvSmoothButton2Click
      TMSStyle = 8
    end
  end
  object Qproductos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ubicacion'
      
        '  (almacenid, ubicacionid, contratoid, clienteid, productoid, co' +
        'dcontrato, anexo, posicion_anexo, cant_facturada, facturado, res' +
        'ervado, precio_cup, precio_cuc, precio_usd, codigo_producto, des' +
        'cripcion_producto, existencia, costo_unitario, costo_total, codc' +
        'liente, fecha_entrada, vale, ueb)'
      'VALUES'
      
        '  (:almacenid, :ubicacionid, :contratoid, :clienteid, :productoi' +
        'd, :codcontrato, :anexo, :posicion_anexo, :cant_facturada, :fact' +
        'urado, :reservado, :precio_cup, :precio_cuc, :precio_usd, :codig' +
        'o_producto, :descripcion_producto, :existencia, :costo_unitario,' +
        ' :costo_total, :codcliente, :fecha_entrada, :vale, :ueb)')
    SQLDelete.Strings = (
      'DELETE FROM ubicacion'
      'WHERE'
      
        '  almacenid = :Old_almacenid AND ubicacionid = :Old_ubicacionid ' +
        'AND contratoid = :Old_contratoid AND clienteid = :Old_clienteid ' +
        'AND productoid = :Old_productoid AND anexo = :Old_anexo AND posi' +
        'cion_anexo = :Old_posicion_anexo')
    SQLUpdate.Strings = (
      'UPDATE ubicacion'
      'SET'
      
        '  almacenid = :almacenid, ubicacionid = :ubicacionid, contratoid' +
        ' = :contratoid, clienteid = :clienteid, productoid = :productoid' +
        ', codcontrato = :codcontrato, anexo = :anexo, posicion_anexo = :' +
        'posicion_anexo, cant_facturada = :cant_facturada, facturado = :f' +
        'acturado, reservado = :reservado, precio_cup = :precio_cup, prec' +
        'io_cuc = :precio_cuc, precio_usd = :precio_usd, codigo_producto ' +
        '= :codigo_producto, descripcion_producto = :descripcion_producto' +
        ', existencia = :existencia, costo_unitario = :costo_unitario, co' +
        'sto_total = :costo_total, codcliente = :codcliente, fecha_entrad' +
        'a = :fecha_entrada, vale = :vale, ueb = :ueb'
      'WHERE'
      
        '  almacenid = :Old_almacenid AND ubicacionid = :Old_ubicacionid ' +
        'AND contratoid = :Old_contratoid AND clienteid = :Old_clienteid ' +
        'AND productoid = :Old_productoid AND anexo = :Old_anexo AND posi' +
        'cion_anexo = :Old_posicion_anexo')
    SQLRefresh.Strings = (
      
        'SELECT almacenid, ubicacionid, contratoid, clienteid, productoid' +
        ', codcontrato, anexo, posicion_anexo, cant_facturada, facturado,' +
        ' reservado, precio_cup, precio_cuc, precio_usd, codigo_producto,' +
        ' descripcion_producto, existencia, costo_unitario, costo_total, ' +
        'codcliente, fecha_entrada, vale, ueb FROM ubicacion'
      'WHERE'
      
        '  almacenid = :almacenid AND ubicacionid = :ubicacionid AND cont' +
        'ratoid = :contratoid AND clienteid = :clienteid AND productoid =' +
        ' :productoid AND anexo = :anexo AND posicion_anexo = :posicion_a' +
        'nexo')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from ubicacion')
    Left = 296
    Top = 192
    object Qproductosubicacionid: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Ubicaci'#243'n'
      FieldName = 'ubicacionid'
    end
    object Qproductoscontratoid: TIntegerField
      FieldName = 'contratoid'
      Required = True
    end
    object Qproductosclienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object Qproductosproductoid: TIntegerField
      FieldName = 'productoid'
      Required = True
    end
    object Qproductosprecio_cup: TFloatField
      DisplayLabel = 'Precio CUP'
      FieldName = 'precio_cup'
      Required = True
    end
    object Qproductosprecio_cuc: TFloatField
      DisplayLabel = 'Precio CUC'
      FieldName = 'precio_cuc'
      Required = True
    end
    object Qproductosprecio_usd: TFloatField
      DisplayLabel = 'Precio USD'
      FieldName = 'precio_usd'
    end
    object Qproductoscodigo_producto: TStringField
      DisplayLabel = 'C'#243'digo del Producto'
      FieldName = 'codigo_producto'
      Size = 15
    end
    object Qproductosdescripcion_producto: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'descripcion_producto'
      Size = 150
    end
    object Qproductoscodcontrato: TStringField
      FieldName = 'codcontrato'
      Size = 15
    end
    object Qproductosanexo: TIntegerField
      FieldName = 'anexo'
      Required = True
    end
    object Qproductosposicion_anexo: TIntegerField
      FieldName = 'posicion_anexo'
      Required = True
    end
    object Qproductoscosto_unitario: TFloatField
      FieldName = 'costo_unitario'
      Required = True
    end
    object Qproductoscodcliente: TStringField
      FieldName = 'codcliente'
      Size = 15
    end
    object Qproductosueb: TStringField
      FieldName = 'ueb'
      Size = 5
    end
    object Qproductosexistencia: TFloatField
      FieldName = 'existencia'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Qproductos
    Left = 216
    Top = 408
  end
  object UniQuery1: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select codigo,clienteid,'
      
        '(select codigo from clientes where clienteid=clienteid)as codcli' +
        'ente,'
      
        '(select nombre from clientes where clienteid=clienteid)as nombre' +
        'cliente'
      'from contratos')
    MasterSource = DataSource1
    MasterFields = 'contratoid;clienteid'
    DetailFields = 'codigo;clienteid'
    Left = 448
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'contratoid'
        ParamType = ptInput
        Value = 134
      end
      item
        DataType = ftInteger
        Name = 'clienteid'
        ParamType = ptInput
        Value = 21
      end>
    object UniQuery1codigo: TStringField
      FieldName = 'codigo'
      Required = True
      Size = 15
    end
    object UniQuery1clienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object UniQuery1codcliente: TStringField
      FieldName = 'codcliente'
      ReadOnly = True
      Size = 15
    end
    object UniQuery1nombrecliente: TStringField
      FieldName = 'nombrecliente'
      ReadOnly = True
      Size = 250
    end
  end
  object DataSource2: TDataSource
    DataSet = UniQuery1
    Left = 520
    Top = 392
  end
end
