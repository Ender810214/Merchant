unit sel_prod_plazo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CurvyControls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxNavigator,
  cxDBNavigator, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, MemDS, DBAccess,
  Uni, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, AdvSmoothButton,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges,
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
  TFsel_prod_plazo = class(TForm)
    CurvyPanel1: TCurvyPanel;
    CurvyPanel2: TCurvyPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    UniQuery1: TUniQuery;
    cxGrid1DBTableView1contratoid: TcxGridDBColumn;
    cxGrid1DBTableView1clienteid: TcxGridDBColumn;
    cxGrid1DBTableView1anexoid: TcxGridDBColumn;
    cxGrid1DBTableView1productoid: TcxGridDBColumn;
    cxGrid1DBTableView1plazoid: TcxGridDBColumn;
    cxGrid1DBTableView1cantidad_contratada: TcxGridDBColumn;
    cxGrid1DBTableView1fecha_entrega: TcxGridDBColumn;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    UniQuery1contratoid: TIntegerField;
    UniQuery1clienteid: TIntegerField;
    UniQuery1anexoid: TFloatField;
    UniQuery1plazoid: TIntegerField;
    UniQuery1productoid: TIntegerField;
    UniQuery1cantidad_contratada: TFloatField;
    UniQuery1fecha_entrega: TDateField;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsel_prod_plazo: TFsel_prod_plazo;

implementation

uses main, entradas;
{$R *.dfm}

procedure TFsel_prod_plazo.AdvSmoothButton1Click(Sender: TObject);
begin

  Close;
end;

procedure TFsel_prod_plazo.AdvSmoothButton2Click(Sender: TObject);
begin
  Close;
end;

end.
