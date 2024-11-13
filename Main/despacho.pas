unit despacho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CurvyControls, Data.DB, MemDS, DBAccess,
  Uni, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxDBNavigator, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, AdvSmoothButton,
  Vcl.ComCtrls, AdvListV, DBAdvLst, cxDropDownEdit, frxClass, frxDBSet,
  dxScrollbarAnnotations;

type
  TFDespacho = class(TForm)
    CurvyPanel1: TCurvyPanel;
    QDespacho: TUniQuery;
    QDespachoordenid: TIntegerField;
    QDespachoclienteid: TIntegerField;
    QDespachocontratoid: TIntegerField;
    QDespachoestado: TStringField;
    CurvyPanel2: TCurvyPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    cxGrid1DBTableView1ordenid: TcxGridDBColumn;
    cxGrid1DBTableView1clienteid: TcxGridDBColumn;
    cxGrid1DBTableView1contratoid: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxDBNavigator1: TcxDBNavigator;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    AdvSmoothButton3: TAdvSmoothButton;
    AdvSmoothButton4: TAdvSmoothButton;
    frxReport1: TfrxReport;
    UniStoredProc1: TUniStoredProc;
    UniStoredProc1in_ordenid: TIntegerField;
    UniStoredProc1out_codcliente: TMemoField;
    UniStoredProc1out_codcontrato: TMemoField;
    UniStoredProc1out_codprod: TMemoField;
    UniStoredProc1out_desprod: TMemoField;
    UniStoredProc1out_cantidad_despachar: TFloatField;
    UniStoredProc1out_preciocup: TFloatField;
    UniStoredProc1out_preciocuc: TFloatField;
    UniStoredProc1out_importecup: TFloatField;
    UniStoredProc1out_importecuc: TFloatField;
    UniStoredProc1out_monbrecliente: TMemoField;
    frxDBDataset1: TfrxDBDataset;
    UniStoredProc2: TUniStoredProc;
    IntegerField1: TIntegerField;
    MemoField1: TMemoField;
    MemoField2: TMemoField;
    MemoField3: TMemoField;
    MemoField4: TMemoField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    MemoField5: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton3Click(Sender: TObject);
    procedure QDespachoBeforeDelete(DataSet: TDataSet);
    procedure AdvSmoothButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDespacho: TFDespacho;

implementation

{$R *.dfm}

uses main, add_despacho, add_prod_despacho;

procedure TFDespacho.AdvSmoothButton1Click(Sender: TObject);
begin

  Fadd_despacho := TFadd_despacho.Create(Application);
  Fadd_despacho.JvDBComboEdit1.Text := '';
  Fadd_despacho.DBComboBox1.Text := '';
  Fadd_despacho.JvDBComboEdit2.Text := '';
  Fadd_despacho.ShowModal;

end;

procedure TFDespacho.AdvSmoothButton2Click(Sender: TObject);
begin
  if QDespachoestado.Value <> 'Cerrado' then
  begin
    Fadd_prod := TFadd_prod.Create(Application);
    Fadd_prod.ShowModal;
  end
  else
    ShowMessage
      ('La Orden está Cerrada, no puede ser modificada, si desea modificar una orden cerrada contacte al administrador del sistema');
end;

procedure TFDespacho.AdvSmoothButton3Click(Sender: TObject);
begin

  if MessageDlg
    ('Una vez cerrada la Orden de Despacho no podra ser modificada, está seguro que desea continuar?',
    mtWarning, mbOKCancel, 0) = mrok then
  begin
    UniStoredProc2.ParamByName('in_ordenid').Value := QDespachoordenid.Value;
    UniStoredProc2.ExecProc;
    QDespacho.RefreshRecord;
  end;
end;

procedure TFDespacho.AdvSmoothButton4Click(Sender: TObject);
begin
  UniStoredProc1.ParamByName('in_ordenid').Value := QDespachoordenid.Value;
  UniStoredProc1.ExecProc;
  frxReport1.FileName :=
    (Application.ExeName + '\Reportes\rep_orden_despacho.frx');
  frxReport1.PrepareReport();
  frxReport1.ShowReport();

end;

procedure TFDespacho.FormCreate(Sender: TObject);
begin
  QDespacho.Open;
end;

procedure TFDespacho.QDespachoBeforeDelete(DataSet: TDataSet);
begin
  if QDespachoestado.Value = 'Cerrado' then
    ShowMessage('La Orden está Cerrada, no puede ser borrada');
end;

end.
