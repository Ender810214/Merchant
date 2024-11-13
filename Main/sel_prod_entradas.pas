unit sel_prod_entradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni,
  cxDBNavigator, CurvyControls, AdvSmoothButton, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxScrollbarAnnotations;

type
  TFSel_prod_Entradas = class(TForm)
    CurvyPanel1: TCurvyPanel;
    cxDBNavigator1: TcxDBNavigator;
    Qplazos: TUniQuery;
    Qplazosclienteid: TIntegerField;
    Qplazoscontratoid: TIntegerField;
    Qplazosproductoid: TIntegerField;
    Qplazosfecha_entrega: TDateField;
    Qplazoscodcliente: TStringField;
    Qplazosnomcliente: TStringField;
    Qplazoscodcontrato: TStringField;
    Qplazoscodproducto: TStringField;
    Qplazosdesproducto: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    cxGrid1DBTableView1fecha_entrega: TcxGridDBColumn;
    cxGrid1DBTableView1codcliente: TcxGridDBColumn;
    cxGrid1DBTableView1nomcliente: TcxGridDBColumn;
    cxGrid1DBTableView1codcontrato: TcxGridDBColumn;
    cxGrid1DBTableView1codproducto: TcxGridDBColumn;
    cxGrid1DBTableView1desproducto: TcxGridDBColumn;
    Qplazoscantidad_contratada: TFloatField;
    cxGrid1DBTableView1cantidad_contratada: TcxGridDBColumn;
    CurvyPanel2: TCurvyPanel;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    Qplazosplazoid: TIntegerField;
    Qplazosanexoid: TIntegerField;
    Qplazosposicion_anexo: TIntegerField;
    cxGrid1DBTableView1posicion_anexo: TcxGridDBColumn;
    cxGrid1DBTableView1anexoid: TcxGridDBColumn;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSel_prod_Entradas: TFSel_prod_Entradas;

implementation

{$R *.dfm}

uses main, entradas, prod_entradas;

procedure TFSel_prod_Entradas.AdvSmoothButton1Click(Sender: TObject);
begin
  Fprod_entradas.QProd_Entradasclienteid.Value := Qplazosclienteid.Value;
  Fprod_entradas.QProd_Entradascontratoid.Value := Qplazoscontratoid.Value;
  Fprod_entradas.QProd_Entradasanexoid.Value := Qplazosanexoid.Value;
  Fprod_entradas.QProd_Entradasplazoid.Value := Qplazosplazoid.Value;
  Fprod_entradas.QProd_Entradasproductoid.Value := Qplazosproductoid.Value;
  Fprod_entradas.QProd_Entradasposicion_anexo.Value :=
    Qplazosposicion_anexo.Value;
  Close;

end;

procedure TFSel_prod_Entradas.AdvSmoothButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFSel_prod_Entradas.FormCreate(Sender: TObject);
begin
  Qplazos.Open;
end;

end.
