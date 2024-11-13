object FFacturadores: TFFacturadores
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FFacturadores'
  ClientHeight = 556
  ClientWidth = 674
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
    Width = 674
    Height = 556
    Align = alClient
    Caption = ''
    TabOrder = 0
    object CurvyPanel2: TCurvyPanel
      Left = 0
      Top = 490
      Width = 674
      Height = 66
      Align = alBottom
      Caption = ''
      TabOrder = 0
      object AdvSmoothButton1: TAdvSmoothButton
        Left = 283
        Top = 16
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
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 0
      Width = 660
      Height = 33
      Buttons.CustomButtons = <>
      DataSource = DataSource1
      Align = alTop
      TabOrder = 1
    end
    object CurvyPanel3: TCurvyPanel
      Left = 0
      Top = 33
      Width = 674
      Height = 264
      Align = alTop
      Caption = ''
      TabOrder = 2
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 674
        Height = 264
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1id: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 58
          end
          object cxGrid1DBTableView1facturador_ci: TcxGridDBColumn
            DataBinding.FieldName = 'facturador_ci'
            Width = 100
          end
          object cxGrid1DBTableView1nombre_apellidos: TcxGridDBColumn
            DataBinding.FieldName = 'nombre_apellidos'
            Width = 250
          end
          object cxGrid1DBTableView1cargo: TcxGridDBColumn
            DataBinding.FieldName = 'cargo'
            Width = 100
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object CurvyPanel4: TCurvyPanel
      Left = 0
      Top = 297
      Width = 674
      Height = 193
      Align = alClient
      Caption = ''
      TabOrder = 3
      object cxDBNavigator2: TcxDBNavigator
        Left = 0
        Top = 0
        Width = 660
        Height = 33
        Buttons.CustomButtons = <>
        DataSource = DataSource2
        Align = alTop
        TabOrder = 0
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 33
        Width = 674
        Height = 160
        Align = alClient
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid2DBTableView1facturaid: TcxGridDBColumn
            Caption = 'No. Factura'
            DataBinding.FieldName = 'facturaid'
          end
          object cxGrid2DBTableView1facturadorid: TcxGridDBColumn
            Caption = 'ID del Facturador'
            DataBinding.FieldName = 'facturadorid'
            Width = 103
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  object Qfacturadores: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO facturadores'
      '  ( facturador_ci, nombre_apellidos, cargo)'
      'VALUES'
      '  (:facturador_ci, :nombre_apellidos, :cargo)')
    SQLDelete.Strings = (
      'DELETE FROM facturadores'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE facturadores'
      'SET'
      
        '  id = :id, facturador_ci = :facturador_ci, nombre_apellidos = :' +
        'nombre_apellidos, cargo = :cargo'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, facturador_ci, nombre_apellidos, cargo FROM facturado' +
        'res'
      'WHERE'
      '  id = :id')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from facturadores')
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Left = 136
    Top = 96
    object Qfacturadoresfacturador_ci: TStringField
      DisplayLabel = 'Carnet Identidad'
      FieldName = 'facturador_ci'
      Required = True
      Size = 11
    end
    object Qfacturadoresnombre_apellidos: TStringField
      DisplayLabel = 'Nombres y Apellidos'
      FieldName = 'nombre_apellidos'
      Required = True
      Size = 150
    end
    object Qfacturadorescargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Required = True
      Size = 100
    end
    object Qfacturadoresid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
  end
  object DataSource1: TDataSource
    DataSet = Qfacturadores
    Left = 128
    Top = 168
  end
  object Qfacturador_fac: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO facturador_fact'
      '  (facturaid, facturadorid, fecha_factura)'
      'VALUES'
      '  (:facturaid, :facturadorid, :fecha_factura)')
    SQLDelete.Strings = (
      'DELETE FROM facturador_fact'
      'WHERE'
      
        '  facturaid = :Old_facturaid AND facturadorid = :Old_facturadori' +
        'd AND fecha_factura = :Old_fecha_factura')
    SQLUpdate.Strings = (
      'UPDATE facturador_fact'
      'SET'
      
        '  facturaid = :facturaid, facturadorid = :facturadorid, fecha_fa' +
        'ctura = :fecha_factura'
      'WHERE'
      
        '  facturaid = :Old_facturaid AND facturadorid = :Old_facturadori' +
        'd AND fecha_factura = :Old_fecha_factura')
    SQLRefresh.Strings = (
      
        'SELECT facturaid, facturadorid, fecha_factura FROM facturador_fa' +
        'ct'
      'WHERE'
      
        '  facturaid = :facturaid AND facturadorid = :facturadorid AND fe' +
        'cha_factura = :fecha_factura')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from facturador_fact')
    MasterSource = Ffacturas.DataSource5
    MasterFields = 'facturaid;fecha'
    DetailFields = 'facturaid;fecha_factura'
    AfterInsert = Qfacturador_facAfterInsert
    Left = 216
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'facturaid'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'fecha'
        Value = nil
      end>
    object Qfacturador_facfacturaid: TIntegerField
      FieldName = 'facturaid'
      Required = True
    end
    object Qfacturador_facfacturadorid: TIntegerField
      FieldName = 'facturadorid'
      Required = True
    end
    object Qfacturador_facfecha_factura: TDateField
      FieldName = 'fecha_factura'
      Required = True
    end
  end
  object DataSource2: TDataSource
    DataSet = Qfacturador_fac
    Left = 208
    Top = 128
  end
end
