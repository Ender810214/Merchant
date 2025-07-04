unit sel_prod_transf1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, CurvyControls, AdvSmoothButton, dxScrollbarAnnotations;

type
  TFsel_prod_transf = class(TForm)
    Qubicaciones: TUniQuery;
    CurvyPanel1: TCurvyPanel;
    CurvyPanel2: TCurvyPanel;
    cxDBNavigator1: TcxDBNavigator;
    CurvyPanel3: TCurvyPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    cxGrid1DBTableView1ubicacionid: TcxGridDBColumn;
    cxGrid1DBTableView1existencia: TcxGridDBColumn;
    cxGrid1DBTableView1precio_cup: TcxGridDBColumn;
    cxGrid1DBTableView1precio_usd: TcxGridDBColumn;
    cxGrid1DBTableView1codigo_producto: TcxGridDBColumn;
    cxGrid1DBTableView1descripcion_producto: TcxGridDBColumn;
    cxGrid1DBTableView1costo_unitario: TcxGridDBColumn;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    cxGrid1DBTableView1codcontrato: TcxGridDBColumn;
    cxGrid1DBTableView1codcliente: TcxGridDBColumn;
    cxGrid1DBTableView1anexo: TcxGridDBColumn;
    cxGrid1DBTableView1posicion_anexo: TcxGridDBColumn;
    Qubicacionesalmacenid: TStringField;
    Qubicacionesubicacionid: TIntegerField;
    Qubicacionescontratoid: TIntegerField;
    Qubicacionesclienteid: TIntegerField;
    Qubicacionesproductoid: TIntegerField;
    Qubicacionescodcontrato: TStringField;
    Qubicacionesanexo: TIntegerField;
    Qubicacionesposicion_anexo: TIntegerField;
    Qubicacionescant_facturada: TFloatField;
    Qubicacionesfacturado: TStringField;
    Qubicacionesreservado: TFloatField;
    Qubicacionesprecio_cup: TCurrencyField;
    Qubicacionesprecio_cuc: TCurrencyField;
    Qubicacionesprecio_usd: TCurrencyField;
    Qubicacionescodigo_producto: TStringField;
    Qubicacionesdescripcion_producto: TStringField;
    Qubicacionesexistencia: TFloatField;
    Qubicacionescosto_unitario: TCurrencyField;
    Qubicacionescosto_total: TCurrencyField;
    Qubicacionescodcliente: TStringField;
    Qubicacionesfecha_entrada: TDateField;
    Qubicacionesvale: TStringField;
    Qubicacionesueb: TStringField;
    Qubicacionestranfid: TIntegerField;
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsel_prod_transf: TFsel_prod_transf;

implementation

{$R *.dfm}

uses main, transferencias;

procedure TFsel_prod_transf.AdvSmoothButton1Click(Sender: TObject);
begin
  FTransferencias.Qtransfubicacionf.Value := Qubicacionesubicacionid.Value;
 // FTransferencias.Qubicacion.Close;
 // FTransferencias.Qubicacion.ParamByName('ubicacionid').Value :=
 //   Qubicacionesubicacionid.Value;
  //FTransferencias.Qubicacion.ExecSQL;
  //FTransferencias.Qubicacion.Open;
  Close;

end;

procedure TFsel_prod_transf.AdvSmoothButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFsel_prod_transf.FormCreate(Sender: TObject);
begin
  Qubicaciones.Open;
end;

end.
