object Fcheques: TFcheques
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Fcheques'
  ClientHeight = 686
  ClientWidth = 949
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
    Width = 949
    Height = 193
    Align = alTop
    Caption = ''
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 100
      Width = 135
      Height = 13
      Caption = 'No. Cheque o Transferencia'
      FocusControl = cxDBTextEdit1
    end
    object Label2: TLabel
      Left = 165
      Top = 100
      Width = 57
      Height = 13
      Caption = 'No. Factura'
      FocusControl = cxDBSpinEdit1
    end
    object Label3: TLabel
      Left = 292
      Top = 100
      Width = 86
      Height = 13
      Caption = 'C'#243'digo del Cliente'
    end
    object Label4: TLabel
      Left = 419
      Top = 100
      Width = 38
      Height = 13
      Caption = 'Importe'
      FocusControl = cxDBCalcEdit1
    end
    object Label5: TLabel
      Left = 673
      Top = 100
      Width = 52
      Height = 13
      Caption = 'Registrado'
    end
    object Label6: TLabel
      Left = 546
      Top = 100
      Width = 29
      Height = 13
      Caption = 'Fecha'
      FocusControl = cxDBDateEdit1
    end
    object CurvyPanel3: TCurvyPanel
      Left = 0
      Top = 0
      Width = 949
      Height = 81
      Align = alTop
      Caption = ''
      TabOrder = 0
      DesignSize = (
        949
        81)
      object cxDBNavigator1: TcxDBNavigator
        Left = 0
        Top = 0
        Width = 949
        Height = 41
        Buttons.CustomButtons = <>
        DataSource = DataSource1
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 945
      end
      object AdvGlassButton1: TAdvGlassButton
        Left = 846
        Top = 47
        Width = 100
        Height = 32
        Anchors = [akTop, akRight]
        BackColor = clBlack
        Caption = 'Registrar Cheque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ForeColor = clWhite
        GlowColor = 16760205
        ImageIndex = -1
        InnerBorderColor = clBlack
        OuterBorderColor = clWhite
        ParentFont = False
        ShineColor = clWhite
        TabOrder = 1
        Version = '1.3.3.1'
        OnClick = AdvGlassButton1Click
      end
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 24
      Top = 116
      DataBinding.DataField = 'no_cheque'
      DataBinding.DataSource = DataSource1
      TabOrder = 1
      Width = 135
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 165
      Top = 116
      DataBinding.DataField = 'facturaid'
      DataBinding.DataSource = DataSource1
      TabOrder = 2
      Width = 121
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 419
      Top = 116
      DataBinding.DataField = 'importe'
      DataBinding.DataSource = DataSource1
      TabOrder = 3
      Width = 121
    end
    object cxDBLabel1: TcxDBLabel
      Left = 292
      Top = 116
      DataBinding.DataField = 'cod_cliente'
      DataBinding.DataSource = DataSource1
      Height = 21
      Width = 121
    end
    object cxDBLabel2: TcxDBLabel
      Left = 673
      Top = 115
      DataBinding.DataField = 'registrado'
      DataBinding.DataSource = DataSource1
      Height = 21
      Width = 121
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 546
      Top = 116
      DataBinding.DataField = 'fecha'
      DataBinding.DataSource = DataSource1
      TabOrder = 6
      Width = 121
    end
  end
  object CurvyPanel2: TCurvyPanel
    Left = 0
    Top = 193
    Width = 949
    Height = 493
    Align = alClient
    Caption = ''
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 949
      Height = 493
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1no_cheque: TcxGridDBColumn
          DataBinding.FieldName = 'no_cheque'
        end
        object cxGrid1DBTableView1facturaid: TcxGridDBColumn
          DataBinding.FieldName = 'facturaid'
          Width = 63
        end
        object cxGrid1DBTableView1cod_cliente: TcxGridDBColumn
          DataBinding.FieldName = 'cod_cliente'
        end
        object cxGrid1DBTableView1importe: TcxGridDBColumn
          DataBinding.FieldName = 'importe'
        end
        object cxGrid1DBTableView1fecha: TcxGridDBColumn
          Caption = 'Fecha'
          DataBinding.FieldName = 'fecha'
        end
        object cxGrid1DBTableView1registrado: TcxGridDBColumn
          DataBinding.FieldName = 'registrado'
          Width = 58
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object QPagos: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO pagos'
      
        '  ( no_cheque, facturaid, clienteid, cod_cliente, importe, regis' +
        'trado, fecha)'
      'VALUES'
      
        '  (:no_cheque, :facturaid, :clienteid, :cod_cliente, :importe, :' +
        'registrado, :fecha)')
    SQLDelete.Strings = (
      'DELETE FROM pagos'
      'WHERE'
      '  pagoid = :Old_pagoid')
    SQLUpdate.Strings = (
      'UPDATE pagos'
      'SET'
      
        '  pagoid = :pagoid, no_cheque = :no_cheque, facturaid = :factura' +
        'id, clienteid = :clienteid, cod_cliente = :cod_cliente, importe ' +
        '= :importe, registrado = :registrado, fecha = :fecha'
      'WHERE'
      '  pagoid = :Old_pagoid')
    SQLRefresh.Strings = (
      
        'SELECT pagoid, no_cheque, facturaid, clienteid, cod_cliente, imp' +
        'orte, registrado, fecha FROM pagos'
      'WHERE'
      '  pagoid = :pagoid')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from pagos')
    Active = True
    Left = 328
    Top = 425
    object QPagospagoid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'pagoid'
    end
    object QPagosno_cheque: TStringField
      DisplayLabel = 'No. Cheque o Transferencia'
      FieldName = 'no_cheque'
      Required = True
      Size = 25
    end
    object QPagosfacturaid: TIntegerField
      DisplayLabel = 'No. Factura'
      FieldName = 'facturaid'
      Required = True
    end
    object QPagosclienteid: TIntegerField
      FieldName = 'clienteid'
    end
    object QPagoscod_cliente: TStringField
      DisplayLabel = 'C'#243'digo del Cliente'
      FieldName = 'cod_cliente'
      Size = 15
    end
    object QPagosimporte: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'importe'
      Required = True
    end
    object QPagosfecha: TDateField
      FieldName = 'fecha'
      Required = True
    end
    object QPagosregistrado: TStringField
      DisplayLabel = 'Registrado'
      FieldName = 'registrado'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = QPagos
    Left = 464
    Top = 328
  end
end
