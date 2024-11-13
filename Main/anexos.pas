unit anexos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, cxDBNavigator, CurvyControls,
  AdvSmoothTabPager, cxContainer, cxEdit, Data.DB, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxDBEdit, Vcl.StdCtrls, cxLabel, cxDBLabel, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxButtonEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni, AdvSmoothPanel,
  cxCalendar, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges, cxSpinEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxScrollbarAnnotations, AdvSmoothButton,
  dxSkinWXI;

type
  TFanexos = class(TForm)
    AdvSmoothTabPager1: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    UniTable1: TUniTable;
    UniTable1descripcion: TStringField;
    UniTable1um: TStringField;
    UniTable1precio_cup: TFloatField;
    UniTable1precio_cuc: TFloatField;
    UniTable1ueb: TStringField;
    UniTable1costo: TFloatField;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    UniTable1codigo: TStringField;
    UniTable1cod_pieza: TStringField;
    UniTable1productoid: TIntegerField;
    AdvSmoothTabPage1: TAdvSmoothTabPage;
    AdvSmoothTabPage2: TAdvSmoothTabPage;
    CurvyPanel5: TCurvyPanel;
    cxDBNavigator1: TcxDBNavigator;
    AdvSmoothPanel1: TAdvSmoothPanel;
    CurvyPanel3: TCurvyPanel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1contratoid: TcxGridDBColumn;
    cxGrid2DBTableView1clienteid: TcxGridDBColumn;
    cxGrid2DBTableView1anexoid: TcxGridDBColumn;
    cxGrid2DBTableView1productoid: TcxGridDBColumn;
    cxGrid2DBTableView1cantidad_contratada: TcxGridDBColumn;
    cxGrid2DBTableView1fecha_entrega: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    CurvyPanel4: TCurvyPanel;
    Label9: TLabel;
    Label10: TLabel;
    cxDBNavigator3: TcxDBNavigator;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    CurvyPanel2: TCurvyPanel;
    cxDBNavigator2: TcxDBNavigator;
    CurvyPanel1: TCurvyPanel;
    CurvyPanel6: TCurvyPanel;
    Label11: TLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    Label12: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBNavigator4: TcxDBNavigator;
    DBGrid2: TDBGrid;
    UniQuery1: TUniQuery;
    DataSource5: TDataSource;
    UniQuery2: TUniQuery;
    DataSource6: TDataSource;
    UniQuery3: TUniQuery;
    DataSource7: TDataSource;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cxDBLabel8: TcxDBLabel;
    cxDBLabel9: TcxDBLabel;
    CurvyPanel7: TCurvyPanel;
    Label1: TLabel;
    JvDBComboEdit1: TJvDBComboEdit;
    Label2: TLabel;
    cxDBLabel1: TcxDBLabel;
    Label3: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CurvyPanel8: TCurvyPanel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBLabel2: TcxDBLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    JvDBComboEdit2: TJvDBComboEdit;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid1DBTableView1anexoid: TcxGridDBColumn;
    cxGrid1DBTableView1codcontrato: TcxGridDBColumn;
    cxGrid1DBTableView1codcliente: TcxGridDBColumn;
    UniQuery4: TUniQuery;
    UniQuery4precio_total: TFloatField;
    UniQuery4ueb: TStringField;
    UniQuery4precio_cup: TFloatField;
    UniQuery4precio_usd: TFloatField;
    UniQuery4codigo: TStringField;
    UniQuery4productoid: TIntegerField;
    UniQuery2contratoid: TIntegerField;
    UniQuery2clienteid: TIntegerField;
    UniQuery2anexoid: TFloatField;
    UniQuery2productoid: TIntegerField;
    UniQuery2codcliente: TStringField;
    UniQuery2codcontrato: TStringField;
    UniQuery2codproducto: TStringField;
    UniQuery3contratoid: TIntegerField;
    UniQuery3clienteid: TIntegerField;
    UniQuery3anexoid: TFloatField;
    UniQuery3codcliente: TStringField;
    UniQuery1contratoid: TIntegerField;
    UniQuery1clienteid: TIntegerField;
    UniQuery1tipo: TStringField;
    UniQuery1fecha_inicio: TDateField;
    UniQuery1fecha_vencimiento: TDateField;
    UniQuery1estado: TStringField;
    UniQuery1monto_general: TFloatField;
    UniQuery1monto_cuc: TFloatField;
    UniQuery1monto_cup: TFloatField;
    cxGrid3DBTableView1codcliente: TcxGridDBColumn;
    cxGrid3DBTableView1codcontrato: TcxGridDBColumn;
    cxGrid3DBTableView1codproducto: TcxGridDBColumn;
    UniTable1precio_usd: TFloatField;
    UniQuery5: TUniQuery;
    UniQuery5contratoid: TIntegerField;
    UniQuery5clienteid: TIntegerField;
    UniQuery5anexoid: TIntegerField;
    UniQuery5productoid: TIntegerField;
    UniQuery5cantidad_contratada: TFloatField;
    UniQuery5fecha_entrega: TDateField;
    UniQuery5cant_facturada: TIntegerField;
    UniQuery5numero_factura: TIntegerField;
    UniQuery5codcontrato: TStringField;
    UniQuery5codcliente: TStringField;
    UniQuery5codproducto: TStringField;
    UniQuery4descripcion: TStringField;
    UniQuery2posicion: TIntegerField;
    Label17: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    UniQuery5posicion_anexo: TIntegerField;
    cxGrid3DBTableView1posicion: TcxGridDBColumn;
    cxDBLabel10: TcxDBLabel;
    DataSource8: TDataSource;
    Label18: TLabel;
    cxDBLabel11: TcxDBLabel;
    Label19: TLabel;
    UniQuery3activo: TStringField;
    Label20: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    UniQuery1codigo: TStringField;
    UniQuery3codcontrato: TStringField;
    UniStoredProc1: TUniStoredProc;
    UniQuery5plazoid: TIntegerField;
    UniStoredProc1out_cantidad_comprada: TFloatField;
    UniStoredProc1out_cantidad_sin_comprar: TFloatField;
    UniStoredProc1out_cantidad_facturada: TFloatField;
    UniStoredProc1out_cantidad_contratada: TFloatField;
    cxDBLabel12: TcxDBLabel;
    Label21: TLabel;
    AdvSmoothButton1: TAdvSmoothButton;
    UniStoredProc1out_cambio_contrato: TFloatField;
    Label22: TLabel;
    cxDBLabel13: TcxDBLabel;
    Label23: TLabel;
    UniStoredProc1out_cantidad_contratada_total: TFloatField;
    cxDBLabel14: TcxDBLabel;
    UniStoredProc1out_cantidad_dev: TFloatField;
    Label24: TLabel;
    cxDBLabel15: TcxDBLabel;
    UniStoredProc1out_cantidad_sobrecomprada: TFloatField;
    Label25: TLabel;
    cxDBLabel16: TcxDBLabel;
    Label26: TLabel;
    procedure JvDBComboEdit1ButtonClick(Sender: TObject);
    procedure JvDBComboEdit2ButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothTabPager1Change(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure AdvSmoothTabPage1Show(Sender: TObject);
    procedure AdvSmoothTabPage2Show(Sender: TObject);
    procedure UniQuery5BeforePost(DataSet: TDataSet);
    procedure AdvSmoothButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fanexos: TFanexos;

implementation

uses main, sel_contrato, sel_productos;
{$R *.dfm}

procedure TFanexos.AdvSmoothButton1Click(Sender: TObject);
begin
  cxDBLabel10.Caption := '';
  cxDBLabel11.Caption := '';
  cxDBLabel12.Caption := '';
  UniStoredProc1.ParamByName('in_contratoid').Value :=
    UniQuery5contratoid.Value;
  UniStoredProc1.ParamByName('in_anexoid').Value := UniQuery5anexoid.Value;
  UniStoredProc1.ParamByName('in_productoid').Value :=
    UniQuery5productoid.Value;
  UniStoredProc1.ParamByName('in_posicion').Value :=
    UniQuery5posicion_anexo.Value;
  UniStoredProc1.ParamByName('in_plazoid').Value := UniQuery5plazoid.Value;
  UniStoredProc1.ParamByName('in_fecha_entrega').Value :=
    UniQuery5fecha_entrega.Value;
  UniStoredProc1.ExecProc;
end;

procedure TFanexos.AdvSmoothTabPage1Show(Sender: TObject);
begin
  // ShowMessage(UniQuery1codigo.Value);
  UniQuery2.Close;
  UniQuery2.ExecSQL;
  UniQuery2.Open;

end;

procedure TFanexos.AdvSmoothTabPage2Show(Sender: TObject);
begin
  UniQuery5.Close;
  UniQuery5.ExecSQL;
  UniQuery5.Open;

end;

procedure TFanexos.AdvSmoothTabPager1Change(Sender: TObject);
begin

  // UniQuery3.Close;
  // UniQuery3.ExecSQL;
  // UniQuery3.Open;
end;

procedure TFanexos.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  UniQuery2.ParamByName('vanexoid').Value := fmain.Qanexosanexoid.Value;
  UniQuery2.Close;
  UniQuery2.ExecSQL;
  UniQuery2.Open;
  UniQuery3.Close;
  UniQuery3.ExecSQL;
  UniQuery3.Open;
end;

procedure TFanexos.FormCreate(Sender: TObject);
begin
  UniTable1.Open;
  UniQuery1.Open;
  // UniQuery2.ParamByName('vanexoid').Value:=fmain.Qanexosanexoid.Value;
  UniQuery2.Open;
  UniQuery3.Close;
  UniQuery3.ExecSQL;
  UniQuery3.Open;
  UniQuery4.Open;
end;

procedure TFanexos.JvDBComboEdit1ButtonClick(Sender: TObject);
begin
  Fsel_contrato := TFsel_contrato.Create(Application);
  Fsel_contrato.ShowModal;
end;

procedure TFanexos.JvDBComboEdit2ButtonClick(Sender: TObject);
begin
  Fsel_producto := TFsel_producto.Create(Application);
  Fsel_producto.ShowModal;
end;

procedure TFanexos.UniQuery5BeforePost(DataSet: TDataSet);
begin

  Fanexos.UniQuery5productoid.Value := Fanexos.UniQuery2productoid.Value;
  Fanexos.UniQuery5codproducto.Value := Fanexos.UniQuery2codproducto.Value;
  Fanexos.UniQuery5clienteid.Value := Fanexos.UniQuery2clienteid.Value;
  Fanexos.UniQuery5contratoid.Value := Fanexos.UniQuery2contratoid.Value;
  Fanexos.UniQuery5codcliente.Value := Fanexos.UniQuery2codcliente.Value;
  Fanexos.UniQuery5codcontrato.Value := Fanexos.UniQuery2codcontrato.Value;
  Fanexos.UniQuery5posicion_anexo.Value := Fanexos.UniQuery2posicion.Value;

end;

end.
