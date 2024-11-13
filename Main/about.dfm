object Fabout: TFabout
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 623
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 623
    Align = alClient
    Caption = ''
    TabOrder = 0
    ExplicitWidth = 758
    ExplicitHeight = 624
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 758
      Height = 624
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Merchant'
        'Sistema de Control para Contratos, Contrataci'#243'n y Ventas.'
        ''
        'Versi'#243'n 2.0'
        ''
        'Desarrollador:'
        ''
        'Jorge D. '#193'lvarez N'#225'poles.'
        'Administrador de Redes.'
        'EMI My. General Ignacio Agramonte y Loynaz.'
        'Tel. 32-298365.'
        'Movil: 52152975.')
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
end
