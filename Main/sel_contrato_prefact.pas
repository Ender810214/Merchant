unit sel_contrato_prefact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, MemDS,
  DBAccess, Uni, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDBNavigator, CurvyControls, AdvSmoothButton, dxScrollbarAnnotations;

type
  TFsel_cont_prefact = class(TForm)
    CurvyPanel1: TCurvyPanel;
    CurvyPanel2: TCurvyPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    UniQuery1: TUniQuery;
    UniQuery1clienteid: TIntegerField;
    UniQuery1nombre: TStringField;
    UniQuery1codigo: TStringField;
    DataSource1: TDataSource;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1nombre: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    UniQuery2: TUniQuery;
    UniQuery2contratoid: TIntegerField;
    UniQuery2clienteid: TIntegerField;
    UniQuery2tipo: TStringField;
    UniQuery2estado: TStringField;
    UniQuery2codigo: TStringField;
    DataSource2: TDataSource;
    cxGrid2DBTableView1codigo: TcxGridDBColumn;
    cxGrid2DBTableView1tipo: TcxGridDBColumn;
    cxGrid2DBTableView1estado: TcxGridDBColumn;
    CurvyPanel3: TCurvyPanel;
    CurvyPanel4: TCurvyPanel;
    CurvyPanel5: TCurvyPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxDBNavigator2: TcxDBNavigator;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsel_cont_prefact: TFsel_cont_prefact;

implementation

uses main, prefacturas;
{$R *.dfm}

procedure TFsel_cont_prefact.AdvSmoothButton1Click(Sender: TObject);
begin
  Fprefacturas.UniQuery1clienteid.Value := UniQuery2clienteid.Value;
  Fprefacturas.UniQuery1contratoid.Value := UniQuery2contratoid.Value;
  Close;
end;

procedure TFsel_cont_prefact.AdvSmoothButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFsel_cont_prefact.FormCreate(Sender: TObject);
begin
  UniQuery1.Open;
  UniQuery2.Open;
end;

end.
