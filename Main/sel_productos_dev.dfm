object Fsel_producto_dev: TFsel_producto_dev
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 669
  ClientWidth = 1064
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
    Width = 1064
    Height = 41
    Align = alTop
    Caption = ''
    TabOrder = 0
    object AdvSmoothLabel1: TAdvSmoothLabel
      Left = 192
      Top = 0
      Width = 280
      Height = 50
      Fill.ColorMirror = clNone
      Fill.ColorMirrorTo = clNone
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtSolid
      Fill.BorderColor = clNone
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Caption.Text = 'Seleccionar Producto'
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clWindowText
      Caption.Font.Height = -21
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      CaptionShadow.Text = 'Seleccionar Producto'
      CaptionShadow.Font.Charset = DEFAULT_CHARSET
      CaptionShadow.Font.Color = clWindowText
      CaptionShadow.Font.Height = -27
      CaptionShadow.Font.Name = 'Tahoma'
      CaptionShadow.Font.Style = []
      Version = '1.6.1.2'
    end
    object AdvSmoothButton1: TAdvSmoothButton
      Left = 3
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
      Color = 9598070
      ParentFont = False
      TabOrder = 0
      Version = '2.2.3.1'
      OnClick = AdvSmoothButton1Click
      TMSStyle = 8
    end
  end
  object CurvyPanel2: TCurvyPanel
    Left = 0
    Top = 41
    Width = 1064
    Height = 136
    Align = alTop
    Caption = ''
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 64
      Width = 72
      Height = 13
      Caption = 'No. Devoluci'#243'n'
    end
    object Label2: TLabel
      Left = 175
      Top = 64
      Width = 43
      Height = 13
      Caption = 'Contrato'
    end
    object Label3: TLabel
      Left = 855
      Top = 64
      Width = 97
      Height = 13
      Caption = 'Cantidad a devolver'
      FocusControl = cxDBCalcEdit1
    end
    object Label4: TLabel
      Left = 302
      Top = 64
      Width = 31
      Height = 13
      Caption = 'Anexo'
    end
    object Label5: TLabel
      Left = 339
      Top = 64
      Width = 38
      Height = 13
      Caption = 'Posici'#243'n'
    end
    object Label6: TLabel
      Left = 495
      Top = 64
      Width = 43
      Height = 13
      Caption = 'Producto'
    end
    object Label7: TLabel
      Left = 383
      Top = 64
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label8: TLabel
      Left = 599
      Top = 64
      Width = 54
      Height = 13
      Caption = 'Descripci'#243'n'
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 855
      Top = 80
      DataBinding.DataField = 'cantidad'
      DataBinding.DataSource = DataSource1
      TabOrder = 0
      Width = 121
    end
    object cxDBButtonEdit1: TcxDBButtonEdit
      Left = 175
      Top = 80
      DataBinding.DataField = 'codcontrato'
      DataBinding.DataSource = DataSource1
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 1
      OnClick = cxDBButtonEdit1Click
      Width = 121
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 0
      Width = 1064
      Height = 41
      Buttons.CustomButtons = <>
      DataSource = DataSource1
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 1050
    end
    object cxDBLabel1: TcxDBLabel
      Left = 302
      Top = 80
      DataBinding.DataField = 'anexo'
      DataBinding.DataSource = DataSource1
      Height = 21
      Width = 31
    end
    object cxDBLabel2: TcxDBLabel
      Left = 339
      Top = 80
      DataBinding.DataField = 'posicion_anexo'
      DataBinding.DataSource = DataSource1
      Height = 21
      Width = 31
    end
    object cxDBLabel3: TcxDBLabel
      Left = 495
      Top = 80
      DataBinding.DataField = 'codproducto'
      DataBinding.DataSource = DataSource1
      Height = 21
      Width = 98
    end
    object cxDBLabel4: TcxDBLabel
      Left = 383
      Top = 80
      DataBinding.DataField = 'posicion_anexo'
      DataBinding.DataSource = DataSource1
      Height = 21
      Width = 106
    end
    object cxDBLabel5: TcxDBLabel
      Left = 599
      Top = 80
      DataBinding.DataField = 'descripcion'
      DataBinding.DataSource = DataSource1
      Height = 21
      Width = 250
    end
    object cxDBLabel6: TcxDBLabel
      Left = 48
      Top = 80
      DataBinding.DataField = 'devolucionid'
      DataBinding.DataSource = DataSource1
      Height = 21
      Width = 121
    end
  end
  object CurvyPanel3: TCurvyPanel
    Left = 0
    Top = 177
    Width = 1064
    Height = 492
    Align = alClient
    Caption = ''
    TabOrder = 2
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 1064
      Height = 492
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1devolucionid: TcxGridDBColumn
          DataBinding.FieldName = 'devolucionid'
        end
        object cxGrid1DBTableView1ubicacionid: TcxGridDBColumn
          DataBinding.FieldName = 'ubicacionid'
        end
        object cxGrid1DBTableView1codcontrato: TcxGridDBColumn
          DataBinding.FieldName = 'codcontrato'
        end
        object cxGrid1DBTableView1anexo: TcxGridDBColumn
          DataBinding.FieldName = 'anexo'
        end
        object cxGrid1DBTableView1posicion_anexo: TcxGridDBColumn
          DataBinding.FieldName = 'posicion_anexo'
        end
        object cxGrid1DBTableView1codcliente: TcxGridDBColumn
          DataBinding.FieldName = 'codcliente'
        end
        object cxGrid1DBTableView1codproducto: TcxGridDBColumn
          DataBinding.FieldName = 'codproducto'
        end
        object cxGrid1DBTableView1descripcion: TcxGridDBColumn
          DataBinding.FieldName = 'descripcion'
          Width = 350
        end
        object cxGrid1DBTableView1cantidad: TcxGridDBColumn
          Caption = 'Cantidad a Devolver'
          DataBinding.FieldName = 'cantidad'
          Width = 115
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = QProd_dev
    Left = 112
    Top = 273
  end
  object QProd_dev: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO productos_devoluciones'
      
        '  (devolucionid, productoid, clienteid, contratoid, anexo, posic' +
        'ion_anexo, ubicacionid, cantidad, codcontrato, codcliente, codpr' +
        'oducto, descripcion)'
      'VALUES'
      
        '  (:devolucionid, :productoid, :clienteid, :contratoid, :anexo, ' +
        ':posicion_anexo, :ubicacionid, :cantidad, :codcontrato, :codclie' +
        'nte, :codproducto, :descripcion)')
    SQLDelete.Strings = (
      'DELETE FROM productos_devoluciones'
      'WHERE'
      
        '  devolucionid = :Old_devolucionid AND productoid = :Old_product' +
        'oid')
    SQLUpdate.Strings = (
      'UPDATE productos_devoluciones'
      'SET'
      
        '  devolucionid = :devolucionid, productoid = :productoid, client' +
        'eid = :clienteid, contratoid = :contratoid, anexo = :anexo, posi' +
        'cion_anexo = :posicion_anexo, ubicacionid = :ubicacionid, cantid' +
        'ad = :cantidad, codcontrato = :codcontrato, codcliente = :codcli' +
        'ente, codproducto = :codproducto, descripcion = :descripcion'
      'WHERE'
      
        '  devolucionid = :Old_devolucionid AND productoid = :Old_product' +
        'oid')
    SQLLock.Strings = (
      'SELECT * FROM productos_devoluciones'
      'WHERE'
      
        '  devolucionid = :Old_devolucionid AND productoid = :Old_product' +
        'oid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT devolucionid, productoid, clienteid, contratoid, anexo, p' +
        'osicion_anexo, ubicacionid, cantidad, codcontrato, codcliente, c' +
        'odproducto, descripcion FROM productos_devoluciones'
      'WHERE'
      '  devolucionid = :devolucionid AND productoid = :productoid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM productos_devoluciones'
      ''
      ') t')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from productos_devoluciones')
    MasterSource = FDevoluciones.DataSource1
    MasterFields = 'devid'
    DetailFields = 'devolucionid'
    Left = 248
    Top = 305
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'devid'
        Value = nil
      end>
    object QProd_devdevolucionid: TStringField
      FieldName = 'devolucionid'
      Required = True
      Size = 10
    end
    object QProd_devproductoid: TIntegerField
      DisplayLabel = 'No. Producto'
      FieldName = 'productoid'
      Required = True
    end
    object QProd_devclienteid: TIntegerField
      FieldName = 'clienteid'
      Required = True
    end
    object QProd_devcontratoid: TIntegerField
      FieldName = 'contratoid'
      Required = True
    end
    object QProd_devubicacionid: TIntegerField
      FieldName = 'ubicacionid'
      Required = True
    end
    object QProd_devcantidad: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'cantidad'
      Required = True
    end
    object QProd_devanexo: TIntegerField
      DisplayLabel = 'Anexo'
      FieldName = 'anexo'
      Required = True
    end
    object QProd_devposicion_anexo: TIntegerField
      DisplayLabel = 'Posici'#243'n'
      FieldName = 'posicion_anexo'
      Required = True
    end
    object QProd_devcodcontrato: TStringField
      DisplayLabel = 'Contrato'
      FieldName = 'codcontrato'
      Required = True
      Size = 15
    end
    object QProd_devcodcliente: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'codcliente'
      Required = True
      Size = 15
    end
    object QProd_devcodproducto: TStringField
      DisplayLabel = 'Producto'
      FieldName = 'codproducto'
      Required = True
      Size = 15
    end
    object QProd_devdescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'descripcion'
      Size = 250
    end
  end
  object DataSource2: TDataSource
    Left = 448
    Top = 321
  end
end
