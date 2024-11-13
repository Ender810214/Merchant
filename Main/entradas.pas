unit entradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDBNavigator, CurvyControls, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, AdvSmoothButton, cxContainer, cxCalendar,
  cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxTextEdit, JvDBControls,
  cxLabel, cxDBLabel, UITypes,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  MemDS, DBAccess, Uni, Vcl.CheckLst, Vcl.ExtCtrls, Vcl.DBCtrls, dxDateRanges,
  cxSpinEdit, cxStyles, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxScrollbarAnnotations;

type
  TFentradas = class(TForm)
    CurvyPanel1: TCurvyPanel;
    CurvyPanel2: TCurvyPanel;
    CurvyPanel3: TCurvyPanel;
    cxDBNavigator1: TcxDBNavigator;
    AdvSmoothButton1: TAdvSmoothButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Qentradas: TUniQuery;
    Qentradasalmacenid: TStringField;
    Qentradasfecha_entrada: TDateField;
    Qentradasestado: TStringField;
    Qentradastipovale: TStringField;
    DataSource1: TDataSource;
    cxGrid1DBTableView1almacenid: TcxGridDBColumn;
    cxGrid1DBTableView1no_vale: TcxGridDBColumn;
    cxGrid1DBTableView1fecha_entrada: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1tipovale: TcxGridDBColumn;
    AdvSmoothButton2: TAdvSmoothButton;
    Qentradasentradaid: TIntegerField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Qentradasno_vale: TStringField;
    cxDBTextEdit2: TcxDBTextEdit;
    AdvSmoothButton3: TAdvSmoothButton;
    Qperiodo: TUniQuery;
    Qperiodoperiodoid: TIntegerField;
    Qperiododesde: TDateField;
    Qperiodohasta: TDateField;
    Qperiodoactivo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CheckListBox1Click(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure QentradasBeforePost(DataSet: TDataSet);
    procedure AdvSmoothButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fentradas: TFentradas;

implementation

uses main, prod_entradas;
{$R *.dfm}

procedure TFentradas.AdvSmoothButton1Click(Sender: TObject);
begin
  if Qentradasestado.Value = 'En Proceso' then
  begin
    if MessageDlg
      ('Se Actualizaran las cantidades en el almacen, está seguro de continuar',
      mtWarning, mbOKCancel, 0) = mrok then
    begin
      Qentradas.Edit;
      Qentradasestado.Value := 'En Almacen';
      Qentradas.Post;
    end;
  end
  Else
    ShowMessage
      ('La Entrada ya esta registrada en el Almacen, no se puede MODIFICAR. Si desea modificarla pongase en contacto con su Administrador del Sistema');
end;

procedure TFentradas.AdvSmoothButton2Click(Sender: TObject);
begin
  // ShowMessage(Qentradasestado.Value);
  if Qentradasestado.Value = 'En Proceso' then
  begin

    Fprod_entradas := TFprod_entradas.Create(Application);
    Fprod_entradas.ShowModal;
  end
  else
    ShowMessage
      ('La Entrada ya esta registrada en el Almacen, no se puede MODIFICAR. Si desea modificarla pongase en contacto con su Administrador del Sistema');

end;

procedure TFentradas.AdvSmoothButton3Click(Sender: TObject);
begin
  if MessageDlg
    ('Esta Operación revajará los productos de la entrada seleccionada del almacen, está seguro que desea continuiar?',
    TMsgDlgType.mtWarning, mbYesNo, 0) = mrYes then
  begin
    Qentradas.Edit;
    Qentradasestado.Value := 'En Proceso';
    Qentradas.Post;

  end;
end;

procedure TFentradas.CheckListBox1Click(Sender: TObject);
begin
  { if CheckListBox1.ItemIndex=0 then
    begin
    cxDBCalcEdit1.Enabled:=true;
    fmain.Qentrdas.Edit;
    fmain.Qentrdastipovale.Value:='Despacho';
    end
    else
    fmain.Qentrdas.Edit;
    Fmain.Qentrdasexistencias.Value:=0;
    fmain.Qentrdastipovale.Value:='Servicio' }
end;

procedure TFentradas.DBRadioGroup1Change(Sender: TObject);
begin
  { if DBRadioGroup1.ItemIndex=0 then
    cxDBCalcEdit1.Enabled:=true
    else
    begin
    cxDBCalcEdit1.Enabled:=false;
    if Fmain.Qentrdas.
    Fmain.Qentrdasexistencias.Value:=0;
    end; }

end;

procedure TFentradas.FormCreate(Sender: TObject);
begin
  Qperiodo.Open;
  Qentradas.ParamByName('infecha1').Value := Qperiododesde.Value;
  Qentradas.ParamByName('infecha2').Value := Qperiodohasta.Value;
  Qentradas.ExecSQL;
  Qentradas.Open;
  if userlevel = 4 then
    AdvSmoothButton1.Visible := false;
  { if fmain.Qentrdastipovale.Value='Despacho' then
    CheckListBox1.Checked[0]:=true;
    if fmain.Qentrdastipovale.Value='Servicio' then
    CheckListBox1.Checked[1]:=true; }
end;

procedure TFentradas.QentradasBeforePost(DataSet: TDataSet);
begin
  // if Qentradasestado.Value='En Almacen' then
  begin
    // ShowMessage('La Entrada ya esta registrada en el Almacen, no se puede MODIFICAR. Si desea modificarla pongase en contacto con su Administrador del Sistema');
    // Qentradas.Cancel;

  end;
end;

end.
