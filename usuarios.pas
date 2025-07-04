unit usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  CurvyControls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, cxDBNavigator, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxSkinWXI,
  cxContainer, cxTextEdit, cxDBEdit, Vcl.StdCtrls, system.hash;

type
  TFusuarios = class(TForm)
    Qusuarios: TUniQuery;
    CurvyPanel1: TCurvyPanel;
    Qusuarioscatid: TIntegerField;
    Qusuariosnombre: TStringField;
    Qusuariospassword: TStringField;
    Qcat_user: TUniQuery;
    CurvyPanel2: TCurvyPanel;
    cxDBNavigator1: TcxDBNavigator;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Qcat_usercatid: TIntegerField;
    Qcat_userdescripcion: TStringField;
    Qcat_userlevel: TIntegerField;
    cxGrid1DBTableView1descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1level: TcxGridDBColumn;
    CurvyPanel3: TCurvyPanel;
    cxDBNavigator2: TcxDBNavigator;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    CurvyPanel4: TCurvyPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1catid: TcxGridDBColumn;
    cxGrid2DBTableView1nombre: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure QusuariosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fusuarios: TFusuarios;

implementation

{$R *.dfm}

uses main;

procedure TFusuarios.FormCreate(Sender: TObject);
begin
Qcat_user.Open;
Qusuarios.Open;
end;

procedure TFusuarios.QusuariosBeforePost(DataSet: TDataSet);
var Vhash: THashSHA2;
var hashstring :string;

begin
if edit1.Text=edit2.Text then
  begin
    Vhash:=THashSHA2.Create(SHA512_256);
    hashstring:=Vhash.GetHashString(edit1.text);

    Qusuarioscatid.Value:=Qcat_usercatid.Value;
    Qusuariospassword.Value:=hashstring;

  end
  else
  begin
  ShowMessage('Las contraseñas no coinciden, por favor verifique su contraseña');
  Edit1.Text:='';
  Edit2.Text:='';

  end;


end;

end.
