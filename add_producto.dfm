object Fadd_producto: TFadd_producto
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Fadd_producto'
  ClientHeight = 421
  ClientWidth = 685
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
    Width = 685
    Height = 421
    Align = alClient
    Caption = ''
    TabOrder = 0
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 0
      Width = 685
      Height = 241
      Align = alTop
      Caption = ''
      TabOrder = 0
      object cxDBNavigator1: TcxDBNavigator
        Left = 0
        Top = 0
        Width = 675
        Height = 25
        Buttons.CustomButtons = <>
        Buttons.Insert.Enabled = False
        Buttons.Delete.Enabled = False
        Buttons.Edit.Enabled = False
        Buttons.Post.Enabled = False
        DataSource = DataSource1
        Align = alTop
        TabOrder = 0
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 25
        Width = 685
        Height = 216
        Align = alClient
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1codclient: TcxGridDBColumn
            Caption = 'C'#243'digo del Cliente'
            DataBinding.FieldName = 'codclient'
          end
          object cxGrid1DBTableView1nomcliente: TcxGridDBColumn
            Caption = 'Nombre del Cliente'
            DataBinding.FieldName = 'nomcliente'
            Width = 65
          end
          object cxGrid1DBTableView1codcontrato: TcxGridDBColumn
            Caption = 'C'#243'digo del Contrato'
            DataBinding.FieldName = 'codcontrato'
          end
          object cxGrid1DBTableView1codigo_producto: TcxGridDBColumn
            Caption = 'C'#243'digo del Producto'
            DataBinding.FieldName = 'codigo_producto'
          end
          object cxGrid1DBTableView1descripcion_producto: TcxGridDBColumn
            Caption = 'Descripci'#243'n del Producto'
            DataBinding.FieldName = 'descripcion_producto'
            Width = 150
          end
          object cxGrid1DBTableView1precio_cuc: TcxGridDBColumn
            Caption = 'Precio CUC'
            DataBinding.FieldName = 'precio_cuc'
          end
          object cxGrid1DBTableView1precio_cup: TcxGridDBColumn
            Caption = 'Precio CUP'
            DataBinding.FieldName = 'precio_cup'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object AdvSmoothButton1: TAdvSmoothButton
      Left = 16
      Top = 320
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
      Color = 15784647
      ParentFont = False
      TabOrder = 1
      Version = '2.2.3.1'
      OnClick = AdvSmoothButton1Click
      TMSStyle = 8
    end
    object AdvSmoothButton2: TAdvSmoothButton
      Left = 488
      Top = 320
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
      Color = 15784647
      ParentFont = False
      TabOrder = 2
      Version = '2.2.3.1'
      OnClick = AdvSmoothButton2Click
      TMSStyle = 8
    end
  end
  object Qproducto: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      
        'select clienteid, contratoid, productoid, precio_cuc, precio_cup' +
        ',codigo_producto, descripcion_producto,'
      
        '(select nombre from clientes where clienteid=:clienteid) as nomc' +
        'liente,'
      
        '(select codigo from clientes where clienteid=:clienteid ) as cod' +
        'client,'
      
        '(select codigo from contratos where contratoid=:contratoid and c' +
        'lienteid=:clienteid) as codcontrato'
      
        ' from ubicacion  where contratoid=:contratoid and clienteid=:cli' +
        'enteid')
    Active = True
    Left = 168
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clienteid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'contratoid'
        Value = nil
      end>
    object Qproductoclienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object Qproductocontratoid: TIntegerField
      FieldName = 'contratoid'
      Required = True
    end
    object Qproductoproductoid: TIntegerField
      FieldName = 'productoid'
      Required = True
    end
    object Qproductoprecio_cuc: TFloatField
      FieldName = 'precio_cuc'
      Required = True
    end
    object Qproductoprecio_cup: TFloatField
      FieldName = 'precio_cup'
      Required = True
    end
    object Qproductocodigo_producto: TStringField
      FieldName = 'codigo_producto'
    end
    object Qproductodescripcion_producto: TStringField
      FieldName = 'descripcion_producto'
      Size = 150
    end
    object Qproductonomcliente: TStringField
      FieldName = 'nomcliente'
      ReadOnly = True
      Size = 250
    end
    object Qproductocodclient: TStringField
      FieldName = 'codclient'
      ReadOnly = True
      Size = 15
    end
    object Qproductocodcontrato: TStringField
      FieldName = 'codcontrato'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Qproducto
    Left = 128
    Top = 176
  end
end
