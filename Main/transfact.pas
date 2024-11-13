unit transfact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxNavigator, cxDBNavigator, CurvyControls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, AdvSmoothButton, dxDateRanges,
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
  TFtransportista = class(TForm)
    Qtrans_fac: TUniQuery;
    CurvyPanel1: TCurvyPanel;
    DataSource1: TDataSource;
    Qtransportista: TUniQuery;
    Qtransportistaclienteid: TIntegerField;
    Qtransportistatransp_ci: TStringField;
    Qtransportistanombre_apellidos: TStringField;
    DataSource2: TDataSource;
    CurvyPanel2: TCurvyPanel;
    AdvSmoothButton1: TAdvSmoothButton;
    Qtrans_factranspid: TIntegerField;
    Qtransportistaid: TIntegerField;
    Qtrans_facfacturaid: TIntegerField;
    Qtransportistalic_conduccion: TStringField;
    CurvyPanel3: TCurvyPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1clienteid: TcxGridDBColumn;
    cxGrid1DBTableView1transp_ci: TcxGridDBColumn;
    cxGrid1DBTableView1nombre_apellidos: TcxGridDBColumn;
    cxGrid1DBTableView1lic_conduccion: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    CurvyPanel4: TCurvyPanel;
    cxDBNavigator2: TcxDBNavigator;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1transpid: TcxGridDBColumn;
    cxGrid2DBTableView1facturaid: TcxGridDBColumn;
    Qtrans_facfecha_factura: TDateField;
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qtrans_facAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ftransportista: TFtransportista;

implementation

{$R *.dfm}

uses main, facturas;

procedure TFtransportista.AdvSmoothButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFtransportista.AdvSmoothButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFtransportista.FormCreate(Sender: TObject);
begin
  Qtrans_fac.Open;
  Qtransportista.Open;
end;

procedure TFtransportista.Qtrans_facAfterInsert(DataSet: TDataSet);
begin
  Qtrans_factranspid.Value := Qtransportistaid.Value;
  Qtrans_facfecha_factura.Value := Ffacturas.UniQuery2fecha.Value;

end;

end.
