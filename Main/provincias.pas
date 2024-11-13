unit provincias;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
	System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CurvyControls, cxGraphics, cxControls,
	cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
	cxTextEdit, cxDBEdit, Vcl.StdCtrls, Data.DB, cxNavigator,
	cxDBNavigator, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
	cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
	cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
	cxLocalization, dxDateRanges, dxScrollbarAnnotations;

type
	TFProvincias = class(TForm)
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
		cxGrid1DBTableView1provinciaid: TcxGridDBColumn;
		cxGrid1DBTableView1descripcion: TcxGridDBColumn;
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	FProvincias: TFProvincias;

implementation

{$R *.dfm}

uses main;

end.
