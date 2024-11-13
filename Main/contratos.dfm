object FContratos: TFContratos
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FContratos'
  ClientHeight = 619
  ClientWidth = 885
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
    Width = 885
    Height = 619
    Align = alClient
    Caption = ''
    TabOrder = 0
    object ñ: TAdvSmoothTabPager
      Left = 0
      Top = 0
      Width = 885
      Height = 619
      LineColor = clBlack
      Fill.Color = 16445163
      Fill.ColorTo = 15064023
      Fill.ColorMirror = 14866644
      Fill.ColorMirrorTo = 13748165
      Fill.GradientType = gtVertical
      Fill.GradientMirrorType = gtVertical
      Fill.BorderColor = clBlack
      Fill.Rounding = 0
      Fill.ShadowOffset = 0
      Fill.Glow = gmNone
      Transparent = False
      Align = alClient
      ActivePage = AdvSmoothTabPager11
      TabSettings.StartMargin = 4
      TabReorder = False
      TabOrder = 0
      TMSStyle = 8
      object AdvSmoothTabPager11: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 883
        Height = 591
        Caption = 'Contratos'
        PageAppearance.Color = 16315633
        PageAppearance.ColorTo = 15788259
        PageAppearance.ColorMirror = 15261401
        PageAppearance.ColorMirrorTo = 16250607
        PageAppearance.GradientType = gtVertical
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = clBlack
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Appearance.Font.Color = clBlack
        TabAppearance.Appearance.Font.Height = -11
        TabAppearance.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Appearance.Font.Style = []
        TabAppearance.Appearance.SimpleLayout = False
        TabAppearance.Status.Caption = '0'
        TabAppearance.Status.Appearance.Fill.Color = clRed
        TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
        TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
        TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
        TabAppearance.Status.Appearance.Fill.GradientMirrorType = gtSolid
        TabAppearance.Status.Appearance.Fill.BorderColor = clGray
        TabAppearance.Status.Appearance.Fill.Rounding = 0
        TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
        TabAppearance.Status.Appearance.Fill.Glow = gmNone
        TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Status.Appearance.Font.Color = clWhite
        TabAppearance.Status.Appearance.Font.Height = -11
        TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Status.Appearance.Font.Style = []
        TabAppearance.BevelColor = clBlack
        TabAppearance.BevelColorDown = 15195349
        TabAppearance.BevelColorSelected = 15195349
        TabAppearance.BevelColorHot = 15195349
        TabAppearance.BevelColorDisabled = 15195349
        TabAppearance.Color = 16445163
        TabAppearance.ColorDown = 11196927
        TabAppearance.ColorDisabled = 16765357
        TMSStyle = 0
        object CurvyPanel2: TCurvyPanel
          Left = 2
          Top = 2
          Width = 879
          Height = 223
          Align = alTop
          Caption = ''
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 93
            Width = 63
            Height = 13
            Caption = 'No. Contrato'
            FocusControl = cxDBTextEdit1
          end
          object Label2: TLabel
            Left = 143
            Top = 90
            Width = 53
            Height = 13
            Caption = 'No. Cliente'
          end
          object Label3: TLabel
            Left = 270
            Top = 93
            Width = 81
            Height = 13
            Caption = 'Tipo de Contrato'
            FocusControl = cxDBTextEdit3
          end
          object Label5: TLabel
            Left = 421
            Top = 93
            Width = 72
            Height = 13
            Caption = 'Fecha de Inicio'
            FocusControl = cxDBDateEdit1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 548
            Top = 93
            Width = 104
            Height = 13
            Caption = 'Fecha de Vencimiento'
            FocusControl = cxDBDateEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 675
            Top = 92
            Width = 33
            Height = 13
            Caption = 'Estado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 16
            Top = 152
            Width = 133
            Height = 13
            Caption = 'Monto Genreal del Contrato'
            FocusControl = cxDBCalcEdit1
          end
          object Label18: TLabel
            Left = 155
            Top = 151
            Width = 69
            Height = 13
            Caption = 'Monto en CUC'
            FocusControl = cxDBCalcEdit2
          end
          object Label19: TLabel
            Left = 282
            Top = 152
            Width = 68
            Height = 13
            Caption = 'Monto en CUP'
            FocusControl = cxDBCalcEdit3
          end
          object cxDBNavigator1: TcxDBNavigator
            Left = 0
            Top = 41
            Width = 879
            Height = 41
            Buttons.CustomButtons = <>
            DataSource = DataSource1
            Align = alTop
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            ExplicitWidth = 870
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 16
            Top = 109
            DataBinding.DataField = 'codigo'
            DataBinding.DataSource = DataSource1
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 270
            Top = 109
            DataBinding.DataField = 'tipo'
            DataBinding.DataSource = DataSource1
            TabOrder = 2
            Width = 145
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 421
            Top = 109
            DataBinding.DataField = 'fecha_inicio'
            DataBinding.DataSource = DataSource1
            TabOrder = 3
            Width = 121
          end
          object cxDBDateEdit2: TcxDBDateEdit
            Left = 548
            Top = 109
            DataBinding.DataField = 'fecha_vencimiento'
            DataBinding.DataSource = DataSource1
            TabOrder = 4
            Width = 121
          end
          object DBComboBox1: TDBComboBox
            Left = 675
            Top = 108
            Width = 145
            Height = 21
            DataField = 'estado'
            DataSource = DataSource1
            Items.Strings = (
              'Activo'
              'En Proceso'
              'Terminado')
            TabOrder = 5
          end
          object JvDBComboEdit1: TJvDBComboEdit
            Left = 143
            Top = 109
            Width = 121
            Height = 21
            DataField = 'clienteid'
            DataSource = DataSource1
            TabOrder = 6
            OnButtonClick = JvDBComboEdit1ButtonClick
          end
          object cxDBCalcEdit1: TcxDBCalcEdit
            Left = 16
            Top = 168
            DataBinding.DataField = 'monto_general'
            DataBinding.DataSource = DataSource1
            TabOrder = 7
            Width = 133
          end
          object cxDBCalcEdit2: TcxDBCalcEdit
            Left = 155
            Top = 167
            DataBinding.DataField = 'monto_cuc'
            DataBinding.DataSource = DataSource1
            TabOrder = 8
            Width = 121
          end
          object cxDBCalcEdit3: TcxDBCalcEdit
            Left = 282
            Top = 168
            DataBinding.DataField = 'monto_cup'
            DataBinding.DataSource = DataSource1
            TabOrder = 9
            Width = 121
          end
          object CurvyPanel5: TCurvyPanel
            Left = 0
            Top = 0
            Width = 879
            Height = 41
            Align = alTop
            Caption = ''
            TabOrder = 10
            object SpeedButton1: TSpeedButton
              Left = 632
              Top = 13
              Width = 225
              Height = 22
              Caption = 'Lista de Contratos Activos fuera de fecha'
              Flat = True
            end
          end
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 225
          Width = 879
          Height = 364
          Align = alClient
          TabOrder = 1
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid1DBTableView1codigo: TcxGridDBColumn
              Caption = 'C'#243'digo del Contrato'
              DataBinding.FieldName = 'codigo'
            end
            object cxGrid1DBTableView1clienteid: TcxGridDBColumn
              Caption = 'ID del Cliente'
              DataBinding.FieldName = 'clienteid'
              Width = 92
            end
            object cxGrid1DBTableView1tipo: TcxGridDBColumn
              DataBinding.FieldName = 'tipo'
              Width = 146
            end
            object cxGrid1DBTableView1fecha_inicio: TcxGridDBColumn
              DataBinding.FieldName = 'fecha_inicio'
            end
            object cxGrid1DBTableView1fecha_vencimiento: TcxGridDBColumn
              DataBinding.FieldName = 'fecha_vencimiento'
            end
            object cxGrid1DBTableView1estado: TcxGridDBColumn
              DataBinding.FieldName = 'estado'
            end
            object cxGrid1DBTableView1monto_general: TcxGridDBColumn
              DataBinding.FieldName = 'monto_general'
              Width = 139
            end
            object cxGrid1DBTableView1monto_cuc: TcxGridDBColumn
              DataBinding.FieldName = 'monto_cuc'
              Width = 88
            end
            object cxGrid1DBTableView1monto_cup: TcxGridDBColumn
              DataBinding.FieldName = 'monto_cup'
              Width = 82
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object AdvSmoothTabPager12: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 883
        Height = 591
        Caption = 'Formas de Pago'
        PageAppearance.Color = 16315633
        PageAppearance.ColorTo = 15788259
        PageAppearance.ColorMirror = 15261401
        PageAppearance.ColorMirrorTo = 16250607
        PageAppearance.GradientType = gtVertical
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = clBlack
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Appearance.Font.Color = clBlack
        TabAppearance.Appearance.Font.Height = -11
        TabAppearance.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Appearance.Font.Style = []
        TabAppearance.Appearance.SimpleLayout = False
        TabAppearance.Status.Caption = '0'
        TabAppearance.Status.Appearance.Fill.Color = clRed
        TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
        TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
        TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
        TabAppearance.Status.Appearance.Fill.GradientMirrorType = gtSolid
        TabAppearance.Status.Appearance.Fill.BorderColor = clGray
        TabAppearance.Status.Appearance.Fill.Rounding = 0
        TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
        TabAppearance.Status.Appearance.Fill.Glow = gmNone
        TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Status.Appearance.Font.Color = clWhite
        TabAppearance.Status.Appearance.Font.Height = -11
        TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Status.Appearance.Font.Style = []
        TabAppearance.BevelColor = clBlack
        TabAppearance.BevelColorDown = 15195349
        TabAppearance.BevelColorSelected = 15195349
        TabAppearance.BevelColorHot = 15195349
        TabAppearance.BevelColorDisabled = 15195349
        TabAppearance.Color = 16445163
        TabAppearance.ColorDown = 11196927
        TabAppearance.ColorDisabled = 16765357
        TMSStyle = 0
        object CurvyPanel3: TCurvyPanel
          Left = 2
          Top = 2
          Width = 879
          Height = 191
          Align = alTop
          Caption = ''
          TabOrder = 0
          object Label4: TLabel
            Left = 32
            Top = 88
            Width = 63
            Height = 13
            Caption = 'No. Contrato'
          end
          object Label8: TLabel
            Left = 159
            Top = 88
            Width = 53
            Height = 13
            Caption = 'No. Cliente'
          end
          object Label9: TLabel
            Left = 270
            Top = 88
            Width = 72
            Height = 13
            Caption = 'Forma de Pago'
            FocusControl = cxDBTextEdit5
          end
          object Label20: TLabel
            Left = 32
            Top = 133
            Width = 69
            Height = 13
            Caption = 'Pago A (D'#237'as):'
            FocusControl = cxDBSpinEdit2
          end
          object cxDBNavigator2: TcxDBNavigator
            Left = 0
            Top = 0
            Width = 879
            Height = 58
            Buttons.CustomButtons = <>
            DataSource = DataSource3
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 870
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 270
            Top = 107
            DataBinding.DataField = 'tipo_pago'
            DataBinding.DataSource = DataSource3
            TabOrder = 1
            Width = 435
          end
          object cxDBLabel1: TcxDBLabel
            Left = 32
            Top = 107
            DataBinding.DataField = 'codigo'
            DataBinding.DataSource = DataSource1
            Height = 21
            Width = 105
          end
          object cxDBLabel2: TcxDBLabel
            Left = 159
            Top = 107
            DataBinding.DataField = 'clienteid'
            DataBinding.DataSource = DataSource3
            Height = 21
            Width = 105
          end
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 32
            Top = 149
            DataBinding.DataField = 'pago_a'
            DataBinding.DataSource = DataSource3
            TabOrder = 4
            Width = 121
          end
        end
        object cxGrid2: TcxGrid
          Left = 2
          Top = 193
          Width = 879
          Height = 396
          Align = alClient
          TabOrder = 1
          object cxGrid2DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DataSource3
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid2DBTableView1contratoid: TcxGridDBColumn
              DataBinding.FieldName = 'contratoid'
            end
            object cxGrid2DBTableView1clienteid: TcxGridDBColumn
              DataBinding.FieldName = 'clienteid'
            end
            object cxGrid2DBTableView1tipo_pago: TcxGridDBColumn
              DataBinding.FieldName = 'tipo_pago'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
      object AdvSmoothTabPager13: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 883
        Height = 591
        Caption = 'Suplementos'
        PageAppearance.Color = 16315633
        PageAppearance.ColorTo = 15788259
        PageAppearance.ColorMirror = 15261401
        PageAppearance.ColorMirrorTo = 16250607
        PageAppearance.GradientType = gtVertical
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = clBlack
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Appearance.Font.Color = clBlack
        TabAppearance.Appearance.Font.Height = -11
        TabAppearance.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Appearance.Font.Style = []
        TabAppearance.Appearance.SimpleLayout = False
        TabAppearance.Status.Caption = '0'
        TabAppearance.Status.Appearance.Fill.Color = clRed
        TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
        TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
        TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
        TabAppearance.Status.Appearance.Fill.GradientMirrorType = gtSolid
        TabAppearance.Status.Appearance.Fill.BorderColor = clGray
        TabAppearance.Status.Appearance.Fill.Rounding = 0
        TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
        TabAppearance.Status.Appearance.Fill.Glow = gmNone
        TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Status.Appearance.Font.Color = clWhite
        TabAppearance.Status.Appearance.Font.Height = -11
        TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Status.Appearance.Font.Style = []
        TabAppearance.BevelColor = clBlack
        TabAppearance.BevelColorDown = 15195349
        TabAppearance.BevelColorSelected = 15195349
        TabAppearance.BevelColorHot = 15195349
        TabAppearance.BevelColorDisabled = 15195349
        TabAppearance.Color = 16445163
        TabAppearance.ColorDown = 11196927
        TabAppearance.ColorDisabled = 16765357
        TMSStyle = 0
        object CurvyPanel4: TCurvyPanel
          Left = 2
          Top = 2
          Width = 879
          Height = 303
          Align = alTop
          Caption = ''
          TabOrder = 0
          object Label10: TLabel
            Left = 270
            Top = 64
            Width = 76
            Height = 13
            Caption = 'No. Suplemento'
          end
          object Label11: TLabel
            Left = 16
            Top = 64
            Width = 63
            Height = 13
            Caption = 'No. Contrato'
          end
          object Label12: TLabel
            Left = 143
            Top = 64
            Width = 53
            Height = 13
            Caption = 'No. Cliente'
          end
          object Label13: TLabel
            Left = 397
            Top = 64
            Width = 94
            Height = 13
            Caption = 'Tipo de Suplemento'
            FocusControl = cxDBTextEdit6
          end
          object Label14: TLabel
            Left = 16
            Top = 153
            Width = 54
            Height = 13
            Caption = 'Descripcion'
          end
          object Label15: TLabel
            Left = 16
            Top = 110
            Width = 101
            Height = 13
            Caption = 'Fecha de Aprobaci'#243'n'
            FocusControl = cxDBDateEdit3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 143
            Top = 109
            Width = 104
            Height = 13
            Caption = 'Fecha de Vencimiento'
            FocusControl = cxDBDateEdit4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cxDBNavigator3: TcxDBNavigator
            Left = 0
            Top = 0
            Width = 879
            Height = 41
            Buttons.CustomButtons = <>
            DataSource = DataSource4
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 870
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 397
            Top = 80
            DataBinding.DataField = 'tipo'
            DataBinding.DataSource = DataSource4
            TabOrder = 1
            Width = 276
          end
          object cxDBDateEdit3: TcxDBDateEdit
            Left = 16
            Top = 126
            DataBinding.DataField = 'fecha_inicio'
            DataBinding.DataSource = DataSource4
            TabOrder = 2
            Width = 121
          end
          object cxDBDateEdit4: TcxDBDateEdit
            Left = 143
            Top = 125
            DataBinding.DataField = 'fecha_ven'
            DataBinding.DataSource = DataSource4
            TabOrder = 3
            Width = 121
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 270
            Top = 80
            DataBinding.DataField = 'complementoid'
            DataBinding.DataSource = DataSource4
            TabOrder = 4
            Width = 121
          end
          object cxDBLabel3: TcxDBLabel
            Left = 16
            Top = 80
            DataBinding.DataField = 'contratoid'
            DataBinding.DataSource = DataSource4
            Height = 21
            Width = 121
          end
          object cxDBLabel4: TcxDBLabel
            Left = 143
            Top = 80
            DataBinding.DataField = 'clienteid'
            DataBinding.DataSource = DataSource4
            Height = 21
            Width = 121
          end
          object DBRichEdit1: TDBRichEdit
            Left = 16
            Top = 172
            Width = 657
            Height = 109
            DataField = 'descripcion'
            DataSource = DataSource4
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            TabOrder = 7
          end
        end
        object cxGrid3: TcxGrid
          Left = 2
          Top = 305
          Width = 879
          Height = 284
          Align = alClient
          TabOrder = 1
          object cxGrid3DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = DataSource4
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid3DBTableView1complementoid: TcxGridDBColumn
              DataBinding.FieldName = 'complementoid'
            end
            object cxGrid3DBTableView1contratoid: TcxGridDBColumn
              DataBinding.FieldName = 'contratoid'
            end
            object cxGrid3DBTableView1clienteid: TcxGridDBColumn
              DataBinding.FieldName = 'clienteid'
            end
            object cxGrid3DBTableView1tipo: TcxGridDBColumn
              DataBinding.FieldName = 'tipo'
              Width = 210
            end
            object cxGrid3DBTableView1descripcion: TcxGridDBColumn
              DataBinding.FieldName = 'descripcion'
              Width = 174
            end
            object cxGrid3DBTableView1fecha_inicio: TcxGridDBColumn
              DataBinding.FieldName = 'fecha_inicio'
              Width = 105
            end
            object cxGrid3DBTableView1fecha_ven: TcxGridDBColumn
              DataBinding.FieldName = 'fecha_ven'
              Width = 110
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Fmain.QContratos
    Left = 296
    Top = 336
  end
  object UniQuery1: TUniQuery
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 361
    Top = 418
    object UniQuery1nombre: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'nombre'
      Required = True
      Size = 250
    end
    object UniQuery1organismoid: TStringField
      DisplayLabel = 'Organismo'
      FieldName = 'organismoid'
      Required = True
      Size = 10
    end
    object UniQuery1clienteid: TIntegerField
      FieldName = 'clienteid'
    end
  end
  object DataSource2: TDataSource
    DataSet = UniQuery1
    Left = 464
    Top = 384
  end
  object DataSource3: TDataSource
    DataSet = Fmain.QformasP
    Left = 552
    Top = 392
  end
  object DataSource4: TDataSource
    DataSet = Fmain.Qcomplementos
    Left = 760
    Top = 480
  end
end
