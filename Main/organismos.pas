unit organismos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CurvyControls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCustomData,
  cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxDBNavigator, cxTextEdit, cxDBEdit, Vcl.StdCtrls, cxStyles,
  dxDateRanges, dxSkinsCore, dxSkinsDefaultPainters, dxScrollbarAnnotations;

type
  TForganismos = class(TForm)
    CurvyPanel1: TCurvyPanel;
    DataSource1: TDataSource;
    CurvyPanel2: TCurvyPanel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1organismoid: TcxGridDBColumn;
    cxGrid1DBTableView1descripcion: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forganismos: TForganismos;

implementation

uses main;
{$R *.dfm}

end.
