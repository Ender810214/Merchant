unit prod_prefact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CurvyControls, Data.DB, MemDS, DBAccess,
  Uni, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxNavigator, cxDBNavigator, cxContainer, cxEdit, cxLabel, cxDBLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, Vcl.StdCtrls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, dxDateRanges,
  cxDBData, cxButtonEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  AdvSmoothButton, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxScrollbarAnnotations;

type
  TFprod_prefact = class(TForm)
    CurvyPanel1: TCurvyPanel;
    CurvyPanel2: TCurvyPanel;
    Qprod_prefact: TUniQuery;
    Qprod_prefactfacturaid: TIntegerField;
    Qprod_prefactcodigo: TStringField;
    Qprod_prefactdescripcion: TStringField;
    Qprod_prefactcantidad_factura: TFloatField;
    cxDBNavigator1: TcxDBNavigator;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBLabel1: TcxDBLabel;
    Qprod_prefactproductoid: TIntegerField;
    cxDBButtonEdit1: TcxDBButtonEdit;
    cxDBLabel2: TcxDBLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1facturaid: TcxGridDBColumn;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1cantidad_factura: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    AdvSmoothButton1: TAdvSmoothButton;
    Qprod_prefactfecha_factura: TDateField;
    Qprod_prefactubicacionid: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fprod_prefact: TFprod_prefact;

implementation

uses main, prefacturas, sel_prod_prefact;
{$R *.dfm}

procedure TFprod_prefact.AdvSmoothButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFprod_prefact.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Fsel_prod_prefact := TFsel_prod_prefact.Create(Application);
  Fsel_prod_prefact.ShowModal;
end;

procedure TFprod_prefact.FormCreate(Sender: TObject);
begin
  Qprod_prefact.Open;
end;

end.
