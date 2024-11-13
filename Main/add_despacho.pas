unit add_despacho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CurvyControls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.DBCtrls, AdvSmoothButton,
  JvDBControls;

type
  TFadd_despacho = class(TForm)
    CurvyPanel1: TCurvyPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    AdvSmoothButton1: TAdvSmoothButton;
    AdvSmoothButton2: TAdvSmoothButton;
    JvDBComboEdit1: TJvDBComboEdit;
    JvDBComboEdit2: TJvDBComboEdit;
    DBComboBox1: TDBComboBox;
    procedure AdvSmoothButton1Click(Sender: TObject);
    procedure AdvSmoothButton2Click(Sender: TObject);
    procedure JvComboEdit1ButtonClick(Sender: TObject);
    procedure JvComboEdit2ButtonClick(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fadd_despacho: TFadd_despacho;

implementation

{$R *.dfm}

uses main, despacho, add_cliente, add_contrato;

procedure TFadd_despacho.AdvSmoothButton1Click(Sender: TObject);
begin
  FDespacho.QDespacho.Post;
  FDespacho.QDespacho.Refresh;
  close;
end;

procedure TFadd_despacho.AdvSmoothButton2Click(Sender: TObject);
begin
  FDespacho.QDespacho.Cancel;
  close;
end;

procedure TFadd_despacho.DBComboBox1Change(Sender: TObject);
begin
  FDespacho.QDespachoestado.Value := DBComboBox1.Text;
end;

procedure TFadd_despacho.FormCreate(Sender: TObject);
begin
  FDespacho.QDespacho.Append;
end;

procedure TFadd_despacho.JvComboEdit1ButtonClick(Sender: TObject);
begin
  Fadd_cliente := Tfadd_cliente.Create(Application);
  Fadd_cliente.ShowModal;
end;

procedure TFadd_despacho.JvComboEdit2ButtonClick(Sender: TObject);
begin
  Fadd_contrato := TFadd_contrato.Create(Application);
  Fadd_contrato.ShowModal;
end;

end.
