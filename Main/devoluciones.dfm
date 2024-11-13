object FDevoluciones: TFDevoluciones
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FDevoluciones'
  ClientHeight = 607
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 273
    Align = alTop
    Caption = ''
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 112
      Width = 89
      Height = 13
      Caption = 'No. de Documento'
    end
    object Label2: TLabel
      Left = 111
      Top = 112
      Width = 54
      Height = 13
      Caption = 'Descripci'#243'n'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 511
      Top = 112
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label4: TLabel
      Left = 16
      Top = 168
      Width = 82
      Height = 13
      Caption = 'Fecha de Emisi'#243'n'
      FocusControl = cxDBDateEdit1
    end
    object Label5: TLabel
      Left = 143
      Top = 168
      Width = 38
      Height = 13
      Caption = 'Entrega'
      FocusControl = cxDBTextEdit3
    end
    object Label6: TLabel
      Left = 270
      Top = 168
      Width = 32
      Height = 13
      Caption = 'Recibe'
      FocusControl = cxDBTextEdit4
    end
    object Label7: TLabel
      Left = 397
      Top = 168
      Width = 20
      Height = 13
      Caption = 'Tipo'
      FocusControl = cxDBTextEdit4
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 57
      Width = 762
      Height = 42
      Buttons.CustomButtons = <>
      DataSource = DataSource1
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitWidth = 750
    end
    object CurvyPanel3: TCurvyPanel
      Left = 0
      Top = 0
      Width = 762
      Height = 57
      Align = alTop
      Caption = ''
      TabOrder = 1
      DesignSize = (
        762
        57)
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 630
        Top = 11
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
        Caption = 'Actualizar Almacen'
        Color = 15784647
        ParentFont = False
        TabOrder = 0
        Version = '2.2.3.1'
        OnClick = AdvSmoothButton1Click
        TMSStyle = 8
      end
      object AdvSmoothButton2: TAdvSmoothButton
        Left = 3
        Top = 11
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
        Caption = 'A'#241'adir Productos'
        Color = 15784647
        ParentFont = False
        TabOrder = 1
        Version = '2.2.3.1'
        OnClick = AdvSmoothButton2Click
        TMSStyle = 8
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 111
      Top = 128
      DataBinding.DataField = 'descripcion'
      DataBinding.DataSource = DataSource2
      TabOrder = 2
      Width = 394
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 16
      Top = 184
      DataBinding.DataField = 'fecha'
      DataBinding.DataSource = DataSource2
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 143
      Top = 184
      DataBinding.DataField = 'entrega'
      DataBinding.DataSource = DataSource2
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 270
      Top = 184
      DataBinding.DataField = 'recibe'
      DataBinding.DataSource = DataSource2
      TabOrder = 5
      Width = 121
    end
    object cxDBLabel1: TcxDBLabel
      Left = 511
      Top = 128
      DataBinding.DataField = 'estado'
      DataBinding.DataSource = DataSource1
      Height = 21
      Width = 121
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 397
      Top = 184
      DataBinding.DataField = 'tipo'
      DataBinding.DataSource = DataSource1
      Properties.Items.Strings = (
        'C-A'
        'A-F')
      TabOrder = 7
      Width = 121
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 19
      Top = 128
      DataBinding.DataField = 'devid'
      DataBinding.DataSource = DataSource1
      TabOrder = 8
      Width = 86
    end
  end
  object CurvyPanel2: TCurvyPanel
    Left = 0
    Top = 273
    Width = 762
    Height = 334
    Align = alClient
    Caption = ''
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 762
      Height = 334
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1devid: TcxGridDBColumn
          DataBinding.FieldName = 'devid'
        end
        object cxGrid1DBTableView1descripcion: TcxGridDBColumn
          DataBinding.FieldName = 'descripcion'
          Width = 150
        end
        object cxGrid1DBTableView1estado: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
        end
        object cxGrid1DBTableView1fecha: TcxGridDBColumn
          DataBinding.FieldName = 'fecha'
        end
        object cxGrid1DBTableView1entrega: TcxGridDBColumn
          DataBinding.FieldName = 'entrega'
          Width = 150
        end
        object cxGrid1DBTableView1recibe: TcxGridDBColumn
          DataBinding.FieldName = 'recibe'
          Width = 150
        end
        object cxGrid1DBTableView1tipo: TcxGridDBColumn
          DataBinding.FieldName = 'tipo'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Qdevoluciones
    Left = 232
    Top = 385
  end
  object Qdevoluciones: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO devolucion'
      '  (devid, descripcion, estado, fecha, entrega, recibe, tipo)'
      'VALUES'
      
        '  (:devid, :descripcion, :estado, :fecha, :entrega, :recibe, :ti' +
        'po)')
    SQLDelete.Strings = (
      'DELETE FROM devolucion'
      'WHERE'
      '  devid = :Old_devid')
    SQLUpdate.Strings = (
      'UPDATE devolucion'
      'SET'
      
        '  devid = :devid, descripcion = :descripcion, estado = :estado, ' +
        'fecha = :fecha, entrega = :entrega, recibe = :recibe, tipo = :ti' +
        'po'
      'WHERE'
      '  devid = :Old_devid')
    SQLRefresh.Strings = (
      
        'SELECT devid, descripcion, estado, fecha, entrega, recibe, tipo ' +
        'FROM devolucion'
      'WHERE'
      '  devid = :devid')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from devolucion')
    Left = 384
    Top = 473
    object Qdevolucionesdevid: TStringField
      FieldName = 'devid'
      Required = True
      Size = 10
    end
    object Qdevolucionesdescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'descripcion'
      Required = True
      Size = 100
    end
    object Qdevolucionesestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 10
    end
    object Qdevolucionesfecha: TDateField
      DisplayLabel = 'Fecha de Emisi'#243'n'
      FieldName = 'fecha'
      Required = True
    end
    object Qdevolucionesentrega: TStringField
      DisplayLabel = 'Entrega'
      FieldName = 'entrega'
      Required = True
      Size = 50
    end
    object Qdevolucionesrecibe: TStringField
      DisplayLabel = 'Recibe'
      FieldName = 'recibe'
      Required = True
      Size = 50
    end
    object Qdevolucionestipo: TStringField
      FieldName = 'tipo'
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = Qdevoluciones
    Left = 368
    Top = 288
  end
end
