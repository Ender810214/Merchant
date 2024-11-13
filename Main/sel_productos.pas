unit sel_productos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvSmoothLabel, CurvyControls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, AdvSmoothButton, dxDateRanges, dxScrollbarAnnotations;

type
  TFsel_producto = class(TForm)
    CurvyPanel1: TCurvyPanel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    CurvyPanel2: TCurvyPanel;
    CurvyPanel3: TCurvyPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    cxGrid1DBTableView1precio_total: TcxGridDBColumn;
    cxGrid1DBTableView1ueb: TcxGridDBColumn;
    cxGrid1DBTableView1precio_cup: TcxGridDBColumn;
    cxGrid1DBTableView1precio_usd: TcxGridDBColumn;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1descripcion: TcxGridDBColumn;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsel_producto: TFsel_producto;

implementation

uses main, anexos;
{$R *.dfm}

procedure TFsel_producto.AdvSmoothButton1Click(Sender: TObject);
begin
  fanexos.UniQuery2productoid.Value := fanexos.UniQuery4productoid.Value;
  fanexos.UniQuery2codproducto.Value := fanexos.UniQuery4codigo.Value;
  fanexos.UniQuery2clienteid.Value := fanexos.UniQuery3clienteid.Value;
  fanexos.UniQuery2contratoid.Value := fanexos.UniQuery3contratoid.Value;
  fanexos.UniQuery2codcliente.Value := fanexos.UniQuery3codcliente.Value;
  fanexos.UniQuery2codcontrato.Value := fanexos.UniQuery3codcontrato.Value;
  close;
end;

procedure TFsel_producto.AdvSmoothButton2Click(Sender: TObject);
begin
  close;
end;

end.
