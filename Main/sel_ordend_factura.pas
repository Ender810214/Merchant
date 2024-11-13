unit sel_ordend_factura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  CurvyControls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, cxNavigator, cxDBNavigator, Vcl.Grids,
  Vcl.DBGrids, AdvSmoothButton, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxScrollbarAnnotations;

type
  TFsel_ordend_factura = class(TForm)
    CurvyPanel1: TCurvyPanel;
    QDespacho: TUniQuery;
    QDespachoordenid: TIntegerField;
    QDespachoclienteid: TIntegerField;
    QDespachocontratoid: TIntegerField;
    QDespachoestado: TStringField;
    QDespachofacturado: TStringField;
    cxDBNavigator1: TcxDBNavigator;
    CurvyPanel2: TCurvyPanel;
    DataSource1: TDataSource;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ordenid: TcxGridDBColumn;
    cxGrid1DBTableView1clienteid: TcxGridDBColumn;
    cxGrid1DBTableView1contratoid: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1facturado: TcxGridDBColumn;
    UniQuery1: TUniQuery;
    UniQuery1codcliente: TStringField;
    DataSource2: TDataSource;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsel_ordend_factura: TFsel_ordend_factura;

implementation

uses main, facturas;
{$R *.dfm}

procedure TFsel_ordend_factura.AdvSmoothButton1Click(Sender: TObject);
begin;
end;

procedure TFsel_ordend_factura.FormCreate(Sender: TObject);
begin
  QDespacho.ParamByName('in_clienteid').Value := fmain.QFacturasclienteid.Value;
  QDespacho.ParamByName('in_contratoid').Value :=
    fmain.QFacturascontratoid.Value;
  QDespacho.ExecSQL;
  QDespacho.Open
end;

end.
