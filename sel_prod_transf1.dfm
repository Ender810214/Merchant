object Fsel_prod_transf: TFsel_prod_transf
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Fsel_prod_transf'
  ClientHeight = 410
  ClientWidth = 855
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
    Width = 855
    Height = 410
    Align = alClient
    Caption = ''
    TabOrder = 0
    DesignSize = (
      855
      410)
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 0
      Width = 855
      Height = 41
      Align = alTop
      Caption = ''
      TabOrder = 0
      object cxDBNavigator1: TcxDBNavigator
        Left = 0
        Top = 0
        Width = 855
        Height = 38
        Buttons.CustomButtons = <>
        DataSource = DataSource1
        Align = alTop
        TabOrder = 0
      end
    end
    object CurvyPanel3: TCurvyPanel
      Left = 0
      Top = 41
      Width = 855
      Height = 280
      Align = alTop
      Caption = ''
      TabOrder = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 855
        Height = 280
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1ubicacionid: TcxGridDBColumn
            Caption = 'Ubicacion'
            DataBinding.FieldName = 'ubicacionid'
          end
          object cxGrid1DBTableView1codcontrato: TcxGridDBColumn
            Caption = 'Cod. Contrato'
            DataBinding.FieldName = 'codcontrato'
          end
          object cxGrid1DBTableView1codcliente: TcxGridDBColumn
            Caption = 'Cod. Cliente'
            DataBinding.FieldName = 'codcliente'
          end
          object cxGrid1DBTableView1anexo: TcxGridDBColumn
            DataBinding.FieldName = 'anexo'
          end
          object cxGrid1DBTableView1posicion_anexo: TcxGridDBColumn
            DataBinding.FieldName = 'posicion_anexo'
            Width = 80
          end
          object cxGrid1DBTableView1codigo_producto: TcxGridDBColumn
            Caption = 'Cod. Producto'
            DataBinding.FieldName = 'codigo_producto'
          end
          object cxGrid1DBTableView1descripcion_producto: TcxGridDBColumn
            Caption = 'Descripcion'
            DataBinding.FieldName = 'descripcion_producto'
            Width = 200
          end
          object cxGrid1DBTableView1existencia: TcxGridDBColumn
            Caption = 'Existencia'
            DataBinding.FieldName = 'existencia'
          end
          object cxGrid1DBTableView1precio_cup: TcxGridDBColumn
            Caption = 'Precio CUP'
            DataBinding.FieldName = 'precio_cup'
          end
          object cxGrid1DBTableView1precio_usd: TcxGridDBColumn
            Caption = 'Precio MLC'
            DataBinding.FieldName = 'precio_usd'
          end
          object cxGrid1DBTableView1costo_unitario: TcxGridDBColumn
            Caption = 'Costo'
            DataBinding.FieldName = 'costo_unitario'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object AdvSmoothButton1: TAdvSmoothButton
      Left = 11
      Top = 344
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
      TabOrder = 2
      Version = '2.2.3.1'
      OnClick = AdvSmoothButton1Click
      TMSStyle = 8
    end
    object AdvSmoothButton2: TAdvSmoothButton
      Left = 721
      Top = 344
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
      TabOrder = 3
      Version = '2.2.3.1'
      OnClick = AdvSmoothButton2Click
      TMSStyle = 8
    end
  end
  object Qubicaciones: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      
        'select * from ubicacion where existencia>0                      ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '                                                                ' +
        '                                                      ')
    Active = True
    Left = 224
    Top = 168
    object Qubicacionesalmacenid: TStringField
      FieldName = 'almacenid'
      Required = True
      Size = 10
    end
    object Qubicacionesubicacionid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ubicacionid'
    end
    object Qubicacionescontratoid: TIntegerField
      FieldName = 'contratoid'
      Required = True
    end
    object Qubicacionesclienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object Qubicacionesproductoid: TIntegerField
      FieldName = 'productoid'
      Required = True
    end
    object Qubicacionescodcontrato: TStringField
      FieldName = 'codcontrato'
    end
    object Qubicacionesanexo: TIntegerField
      FieldName = 'anexo'
      Required = True
    end
    object Qubicacionesposicion_anexo: TIntegerField
      FieldName = 'posicion_anexo'
      Required = True
    end
    object Qubicacionescant_facturada: TFloatField
      FieldName = 'cant_facturada'
      Required = True
    end
    object Qubicacionesfacturado: TStringField
      FieldName = 'facturado'
      Required = True
      Size = 1
    end
    object Qubicacionesreservado: TFloatField
      FieldName = 'reservado'
      Required = True
    end
    object Qubicacionesprecio_cup: TCurrencyField
      FieldName = 'precio_cup'
      Required = True
    end
    object Qubicacionesprecio_cuc: TCurrencyField
      FieldName = 'precio_cuc'
    end
    object Qubicacionesprecio_usd: TCurrencyField
      FieldName = 'precio_usd'
      Required = True
    end
    object Qubicacionescodigo_producto: TStringField
      FieldName = 'codigo_producto'
    end
    object Qubicacionesdescripcion_producto: TStringField
      FieldName = 'descripcion_producto'
      Size = 150
    end
    object Qubicacionesexistencia: TFloatField
      FieldName = 'existencia'
      Required = True
    end
    object Qubicacionescosto_unitario: TCurrencyField
      FieldName = 'costo_unitario'
      Required = True
    end
    object Qubicacionescosto_total: TCurrencyField
      FieldName = 'costo_total'
    end
    object Qubicacionescodcliente: TStringField
      FieldName = 'codcliente'
      Size = 15
    end
    object Qubicacionesfecha_entrada: TDateField
      FieldName = 'fecha_entrada'
    end
    object Qubicacionesvale: TStringField
      FieldName = 'vale'
      Required = True
      Size = 10
    end
    object Qubicacionesueb: TStringField
      FieldName = 'ueb'
      Size = 5
    end
    object Qubicacionestranfid: TIntegerField
      FieldName = 'tranfid'
    end
  end
  object DataSource1: TDataSource
    DataSet = Qubicaciones
    Left = 352
    Top = 209
  end
end
