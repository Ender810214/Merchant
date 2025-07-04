object Freportes: TFreportes
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Freportes'
  ClientHeight = 855
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnShow = FormShow
  DesignSize = (
    1089
    855)
  TextHeight = 13
  object JvGradient1: TJvGradient
    Left = 0
    Top = 0
    Width = 1089
    Height = 57
    Align = alTop
    StartColor = clSkyBlue
    EndColor = clMoneyGreen
    ExplicitTop = -6
    ExplicitWidth = 889
  end
  object AdvSmoothButton1: TAdvSmoothButton
    Left = 961
    Top = 8
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
    Caption = 'Mostrar Reporte'
    Color = 15784647
    ParentFont = False
    TabOrder = 0
    Version = '2.2.3.1'
    OnClick = AdvSmoothButton1Click
    TMSStyle = 8
  end
  object JvScrollMax1: TJvScrollMax
    Left = 0
    Top = 57
    Width = 1089
    Height = 798
    ButtonFont.Charset = ANSI_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -19
    ButtonFont.Name = 'Times New Roman'
    ButtonFont.Style = [fsBold]
    AutoHeight = False
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
  end
  object UniStoredProc1: TUniStoredProc
    StoredProcName = 'listado_contratos1'
    SQL.Strings = (
      'SELECT * FROM listado_contratos1()')
    Connection = Fmain.UniConnection1
    Left = 168
    Top = 304
    CommandStoredProcName = 'listado_contratos1'
    StoredProcIsQuery = True
    object UniStoredProc1out_proveedor: TMemoField
      FieldName = 'out_proveedor'
      ReadOnly = True
      BlobType = ftMemo
    end
    object UniStoredProc1out_prov: TMemoField
      FieldName = 'out_prov'
      ReadOnly = True
      BlobType = ftMemo
    end
    object UniStoredProc1out_contratoid: TMemoField
      FieldName = 'out_contratoid'
      ReadOnly = True
      BlobType = ftMemo
    end
    object UniStoredProc1out_formap: TMemoField
      FieldName = 'out_formap'
      ReadOnly = True
      BlobType = ftMemo
    end
    object UniStoredProc1out_tipoc: TMemoField
      FieldName = 'out_tipoc'
      ReadOnly = True
      BlobType = ftMemo
    end
    object UniStoredProc1fecha_contratacion: TDateField
      FieldName = 'fecha_contratacion'
      ReadOnly = True
    end
    object UniStoredProc1fecha_espiracion: TDateField
      FieldName = 'fecha_espiracion'
      ReadOnly = True
    end
    object UniStoredProc1out_montog: TFloatField
      FieldName = 'out_montog'
      ReadOnly = True
    end
    object UniStoredProc1out_montocuc: TFloatField
      FieldName = 'out_montocuc'
      ReadOnly = True
    end
    object UniStoredProc1out_montocup: TFloatField
      FieldName = 'out_montocup'
      ReadOnly = True
    end
  end
  object ReportManager1: TReportManager
    FrfReport = frxReport1
    ScrollMax = JvScrollMax1
    ReportsColor = clTeal
    ShowBox = False
    ReportCaptionColor = clBlue
    ReportsDescripColor = clBlue
    UserGroup = 0
    Left = 640
    Top = 464
  end
  object frxReport1: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.Author = 'Ender'
    ReportOptions.CreateDate = 45510.412427083300000000
    ReportOptions.Description.Strings = (
      
        'Muestra las Cantidades vendidas de los productos a un cliente se' +
        'lecionado')
    ReportOptions.Name = 'Reporte de Cantidades Vendidas por Clientes '
    ReportOptions.LastChange = 45538.484372280100000000
    ReportOptions.VersionBuild = '0'
    ReportOptions.VersionMajor = '1'
    ReportOptions.VersionMinor = '0'
    ReportOptions.VersionRelease = '0'
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Button1OnClick(Sender: TfrxComponent);'
      'begin'
      '  UniDACQuery2.ExecSQL;                   '
      
        '  UniDACQuery2.Open;                                            ' +
        '          '
      
        '  UniDACQuery1.ParamByName('#39'inclienteid'#39').Value:= UniDACQuery2.F' +
        'ieldByName('#39'clienteid'#39').Value;           '
      '  UniDACQuery1.ParamByName('#39'infecha1'#39').Value:= DateEdit1.date;'
      '  UniDACQuery1.ParamByName('#39'infecha2'#39').Value:= DateEdit2.date;'
      '            '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 740
    Top = 309
    Datasets = <
      item
        DataSet = frxReport1.UniDACQuery1
        DataSetName = 'UniDACQuery1'
      end
      item
        DataSet = frxReport1.UniDACQuery2
        DataSetName = 'UniDACQuery2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object UniDACQuery1: TfrxUniDACQuery
        UserName = 'UniDACQuery1'
        CloseDataSource = True
        FieldAliases.Strings = (
          'in_fecha1=in_fecha1'
          'in_fecha2=in_fecha2'
          'out_codprod=out_codprod'
          'out_descripcion=out_descripcion'
          'out_costo=out_costo'
          'out_cantidad=out_cantidad'
          'out_precio_cup=out_precio_cup'
          'out_precio_usd=out_precio_usd'
          'out_importe_cup=out_importe_cup'
          'out_importe_usd=out_importe_usd'
          'out_productoid=out_productoid'
          'out_um=out_um'
          'out_fab=out_fab')
        BCDToCurrency = False
        DataSetOptions = []
        IgnoreDupParams = False
        Params = <
          item
            Name = 'inclienteid'
            DataType = ftInteger
          end
          item
            Name = 'infecha1'
            DataType = ftDate
          end
          item
            Name = 'infecha2'
            DataType = ftDate
          end>
        SQL.Strings = (
          
            'select * from rep_productos_vendidos_clientes(:inclienteid,:infe' +
            'cha1,:infecha2);                                                ' +
            '                         ')
        pLeft = 168
        pTop = 124
        Parameters = <
          item
            Name = 'inclienteid'
            DataType = ftInteger
          end
          item
            Name = 'infecha1'
            DataType = ftDate
          end
          item
            Name = 'infecha2'
            DataType = ftDate
          end>
      end
      object UniDACQuery2: TfrxUniDACQuery
        UserName = 'UniDACQuery2'
        CloseDataSource = True
        BCDToCurrency = False
        DataSetOptions = []
        IgnoreDupParams = False
        Params = <>
        SQL.Strings = (
          
            'select * from clientes                                          ' +
            '     ')
        pLeft = 260
        pTop = 156
        Parameters = <>
      end
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 975.118740000000000000
          Height = 75.590600000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Merchant'
            'Reporte de Productos Vendidos en el Periodo')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 789.921770000000000000
          Top = 7.559060000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Inicial: [UniDACQuery1."in_fecha1"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 789.921770000000000000
          Top = 34.015770000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fecha Final: [UniDACQuery1."in_fecha2"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Generado: [Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 219.212740000000000000
        Width = 980.410082000000000000
        DataSet = frxReport1.UniDACQuery1
        DataSetName = 'UniDACQuery1'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[UniDACQuery1."out_codprod"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 7.559060000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[UniDACQuery1."out_descripcion"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[UniDACQuery1."out_cantidad"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 7.559060000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[UniDACQuery1."out_costo"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[UniDACQuery1."out_precio_cup"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[UniDACQuery1."out_precio_usd"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[UniDACQuery1."out_importe_cup"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[UniDACQuery1."out_importe_usd"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 7.559060000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[UniDACQuery1."out_um"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 884.410020000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[UniDACQuery1."out_fab"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 124.724490000000000000
        Width = 980.410082000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 11.338590000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Descripci'#243'n')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Cantidad')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Costo')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Precio CUP')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Precio USD')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Importe CUP')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Importe USD')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 11.338590000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UM')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 884.410020000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UEB')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 325.039580000000000000
        Width = 980.410082000000000000
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<UniDACQuery1."out_importe_cup">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Totales')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 801.260360000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<UniDACQuery1."out_importe_usd">,MasterData1)]')
          ParentFont = False
        end
      end
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      DoubleBuffered = False
      Height = 262.000000000000000000
      ClientHeight = 223.000000000000000000
      Left = 265.000000000000000000
      Top = 150.000000000000000000
      Width = 614.000000000000000000
      Scaled = True
      ClientWidth = 598.000000000000000000
      object Label1: TfrxLabelControl
        Left = 16.000000000000000000
        Top = 88.000000000000000000
        Width = 59.000000000000000000
        Height = 13.000000000000000000
        ShowHint = True
        Caption = 'Fecha Inicial'
        Color = clBtnFace
      end
      object DateEdit1: TfrxDateEditControl
        Left = 92.000000000000000000
        Top = 88.000000000000000000
        Width = 145.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Date = 45510.000000000000000000
        Time = 0.419420902777346800
        WeekNumbers = False
      end
      object Label2: TfrxLabelControl
        Left = 16.000000000000000000
        Top = 120.000000000000000000
        Width = 54.000000000000000000
        Height = 13.000000000000000000
        ShowHint = True
        Caption = 'Fecha Final'
        Color = clBtnFace
      end
      object DateEdit2: TfrxDateEditControl
        Left = 92.000000000000000000
        Top = 120.000000000000000000
        Width = 145.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        Color = clWindow
        Date = 45510.000000000000000000
        Time = 0.419710706017212900
        WeekNumbers = False
      end
      object Button1: TfrxButtonControl
        Left = 16.000000000000000000
        Top = 176.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = 'Aceptar'
        ModalResult = 1
        OnClick = 'Button1OnClick'
      end
      object Button2: TfrxButtonControl
        Left = 160.000000000000000000
        Top = 176.000000000000000000
        Width = 75.000000000000000000
        Height = 25.000000000000000000
        ShowHint = True
        Caption = 'Cancelar'
        ModalResult = 3
      end
      object Label3: TfrxLabelControl
        Left = 36.000000000000000000
        Top = 44.000000000000000000
        Width = 37.000000000000000000
        Height = 13.000000000000000000
        ShowHint = True
        Caption = 'Cliente:'
        Color = clBtnFace
      end
      object DBLookupComboBox1: TfrxDBLookupComboBox
        Left = 92.000000000000000000
        Top = 40.000000000000000000
        Width = 457.000000000000000000
        Height = 21.000000000000000000
        ShowHint = True
        AutoOpenDataSet = True
        DataSet = frxReport1.UniDACQuery2
        DataSetName = 'UniDACQuery2'
        ListField = 'nombre'
        KeyField = 'clienteid'
        DropDownWidth = 0
        DropDownRows = 7
      end
    end
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 900
    Top = 701
  end
  object frxPPTXExport1: TfrxPPTXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 932
    Top = 613
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 708
    Top = 701
  end
  object frxUniDACComponents1: TfrxUniDACComponents
    DefaultDatabase = Fmain.UniConnection1
    Left = 532
    Top = 621
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 748
    Top = 565
  end
  object fsPascal1: TfsPascal
    Left = 884
    Top = 525
  end
end
