unit facturadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxNavigator, cxDBNavigator, CurvyControls,
  Data.DB, MemDS,
  DBAccess, Uni, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, AdvSmoothButton, dxDateRanges,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxScrollbarAnnotations;

type
  TFFacturadores = class(TForm)
    CurvyPanel1: TCurvyPanel;
    CurvyPanel2: TCurvyPanel;
    cxDBNavigator1: TcxDBNavigator;
    Qfacturadores: TUniQuery;
    Qfacturadoresfacturador_ci: TStringField;
    Qfacturadoresnombre_apellidos: TStringField;
    Qfacturadorescargo: TStringField;
    Qfacturadoresid: TIntegerField;
    DataSource1: TDataSource;
    Qfacturador_fac: TUniQuery;
    DataSource2: TDataSource;
    AdvSmoothButton1: TAdvSmoothButton;
    Qfacturador_facfacturaid: TIntegerField;
    Qfacturador_facfacturadorid: TIntegerField;
    CurvyPanel3: TCurvyPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1facturador_ci: TcxGridDBColumn;
    cxGrid1DBTableView1nombre_apellidos: TcxGridDBColumn;
    cxGrid1DBTableView1cargo: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    CurvyPanel4: TCurvyPanel;
    cxDBNavigator2: TcxDBNavigator;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1facturaid: TcxGridDBColumn;
    cxGrid2DBTableView1facturadorid: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    Qfacturador_facfecha_factura: TDateField;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qfacturador_facAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFacturadores: TFFacturadores;

implementation

{$R *.dfm}

uses main, facturas;

procedure TFFacturadores.AdvSmoothButton1Click(Sender: TObject);
begin
  close;
end;

procedure TFFacturadores.AdvSmoothButton2Click(Sender: TObject);
begin
  close;
end;

procedure TFFacturadores.FormCreate(Sender: TObject);
begin
  Qfacturadores.Open;
  Qfacturador_fac.Open;
end;

procedure TFFacturadores.Qfacturador_facAfterInsert(DataSet: TDataSet);
begin

  Qfacturador_facfacturadorid.Value := Qfacturadoresid.Value;

end;

end.
