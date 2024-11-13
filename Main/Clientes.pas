unit Clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CurvyControls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBNavigator, cxContainer, cxTextEdit, cxDBEdit,
  Vcl.StdCtrls, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, AdvSmoothTabPager, AdvDBLookupComboBox,
  dxSparkline, dxDBSparkline, cxSpinEdit, cxLabel, cxDBLabel, Vcl.Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, JvDBControls, cxCheckBox, cxCalc, AdvCombo, AdvDBComboBox,
  Vcl.DBCtrls, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxDateRanges,
  dxScrollbarAnnotations, AdvSmoothButton, Vcl.Grids, Vcl.DBGrids, MemDS,
  DBAccess, Uni;

type
  TFclientes = class(TForm)
    CurvyPanel1: TCurvyPanel;
    CurvyPanel2: TCurvyPanel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    AdvSmoothTabPager1: TAdvSmoothTabPager;
    AdvSmoothTabPager11: TAdvSmoothTabPage;
    CurvyPanel3: TCurvyPanel;
    CurvyPanel4: TCurvyPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBNavigator1: TcxDBNavigator;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    AdvSmoothTabPager12: TAdvSmoothTabPage;
    CurvyPanel5: TCurvyPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBNavigator2: TcxDBNavigator;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1clienteid: TcxGridDBColumn;
    cxGrid2DBTableView1cuenta_cuc: TcxGridDBColumn;
    cxGrid2DBTableView1cuenta_cup: TcxGridDBColumn;
    cxGrid2DBTableView1sucursal_cuc: TcxGridDBColumn;
    cxGrid2DBTableView1sucuirsa_cup: TcxGridDBColumn;
    cxGrid2DBTableView1direccion_suc_cuc: TcxGridDBColumn;
    cxGrid2DBTableView1direccion_suc_cup: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    AdvSmoothTabPager13: TAdvSmoothTabPage;
    CurvyPanel6: TCurvyPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxDBNavigator3: TcxDBNavigator;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3DBTableView1clienteid: TcxGridDBColumn;
    cxGrid3DBTableView1nombre_comprador: TcxGridDBColumn;
    cxGrid3DBTableView1comprador_ci: TcxGridDBColumn;
    cxGrid3DBTableView1comprador_cargo: TcxGridDBColumn;
    AdvSmoothTabPage1: TAdvSmoothTabPage;
    CurvyPanel7: TCurvyPanel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxDBNavigator4: TcxDBNavigator;
    DataSource6: TDataSource;
    Label22: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    Label23: TLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxGrid4DBTableView1clienteid: TcxGridDBColumn;
    cxGrid4DBTableView1carnet_id: TcxGridDBColumn;
    cxGrid4DBTableView1nombre: TcxGridDBColumn;
    cxGrid4DBTableView1cargo: TcxGridDBColumn;
    cxGrid4DBTableView1director: TcxGridDBColumn;
    Label24: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    Label25: TLabel;
    DBComboBox1: TDBComboBox;
    cxGrid1DBTableView1nombre: TcxGridDBColumn;
    cxGrid1DBTableView1organismoid: TcxGridDBColumn;
    cxGrid1DBTableView1provinciaid: TcxGridDBColumn;
    cxGrid1DBTableView1telefono: TcxGridDBColumn;
    cxGrid1DBTableView1fax: TcxGridDBColumn;
    cxGrid1DBTableView1correo: TcxGridDBColumn;
    cxGrid1DBTableView1nit: TcxGridDBColumn;
    cxGrid1DBTableView1fecha_acr: TcxGridDBColumn;
    cxGrid1DBTableView1tipo_cliente: TcxGridDBColumn;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGrid1DBTableView1codigo: TcxGridDBColumn;
    cxGrid1DBTableView1direccion: TcxGridDBColumn;
    Label10: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    AdvSmoothTabPage2: TAdvSmoothTabPage;
    Qfiltro: TUniQuery;
    Qfiltrocuenta_cup: TStringField;
    Qfiltronombre: TStringField;
    Qfiltrocodigo: TStringField;
    CurvyPanel8: TCurvyPanel;
    Label17: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DataSource7: TDataSource;
    AdvSmoothButton1: TAdvSmoothButton;
    procedure AdvSmoothButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fclientes: TFclientes;

implementation

uses main;
{$R *.dfm}

procedure TFclientes.AdvSmoothButton1Click(Sender: TObject);
begin
Qfiltro.ParamByName('incuenta').Value:=edit1.Text;
Qfiltro.ExecSQL;
end;

end.
