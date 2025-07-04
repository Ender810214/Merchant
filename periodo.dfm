object FPeriodo: TFPeriodo
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FPeriodo'
  ClientHeight = 640
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 640
    Align = alClient
    Caption = ''
    TabOrder = 0
    ExplicitLeft = 216
    ExplicitTop = 216
    ExplicitWidth = 200
    ExplicitHeight = 100
    object cxDBNavigator1: TcxDBNavigator
      Left = 0
      Top = 0
      Width = 780
      Height = 41
      Buttons.CustomButtons = <>
      DataSource = DataSource1
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 41
      Width = 781
      Height = 599
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 144
      ExplicitTop = 168
      ExplicitWidth = 250
      ExplicitHeight = 200
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1periodoid: TcxGridDBColumn
          DataBinding.FieldName = 'periodoid'
        end
        object cxGrid1DBTableView1desde: TcxGridDBColumn
          DataBinding.FieldName = 'desde'
          PropertiesClassName = 'TdxDateTimeWheelPickerProperties'
          Width = 200
        end
        object cxGrid1DBTableView1hasta: TcxGridDBColumn
          DataBinding.FieldName = 'hasta'
          PropertiesClassName = 'TdxDateTimeWheelPickerProperties'
          Width = 200
        end
        object cxGrid1DBTableView1activo: TcxGridDBColumn
          DataBinding.FieldName = 'activo'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'S'
            'N')
          Width = 100
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Qperiodo: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO periodo'
      '  (periodoid, desde, hasta, activo)'
      'VALUES'
      '  (:periodoid, :desde, :hasta, :activo)')
    SQLDelete.Strings = (
      'DELETE FROM periodo'
      'WHERE'
      '  periodoid = :Old_periodoid')
    SQLUpdate.Strings = (
      'UPDATE periodo'
      'SET'
      
        '  periodoid = :periodoid, desde = :desde, hasta = :hasta, activo' +
        ' = :activo'
      'WHERE'
      '  periodoid = :Old_periodoid')
    SQLRefresh.Strings = (
      'SELECT periodoid, desde, hasta, activo FROM periodo'
      'WHERE'
      '  periodoid = :periodoid')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from periodo')
    Left = 600
    Top = 328
    object Qperiodoperiodoid: TIntegerField
      DisplayLabel = 'Periodo'
      FieldName = 'periodoid'
      Required = True
    end
    object Qperiododesde: TDateField
      DisplayLabel = 'Fecha de Inicio'
      FieldName = 'desde'
      Required = True
    end
    object Qperiodohasta: TDateField
      DisplayLabel = 'Fecha Final'
      FieldName = 'hasta'
      Required = True
    end
    object Qperiodoactivo: TStringField
      DisplayLabel = 'Activo'
      FieldName = 'activo'
      Required = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Qperiodo
    Left = 456
    Top = 408
  end
end
