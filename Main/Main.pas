unit Main;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
	System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomItemsContainer, AdvPolyList,
	GDIPImageTextItem, GDIPWedgeItem, GDIPCustomItem, GDIPTextItem,
	GDIPSectionItem, CurvyControls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
	FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
	FireDAC.Phys, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys.PG,
	FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, MemDS,
	DBAccess, Uni, UniProvider, PostgreSQLUniProvider,
	AdvSmoothLabel, AdvSmoothButton, UniDacVcl, UniDACPGManager, UItypes,
	JvComponentBase, JvTrayIcon, Vcl.Menus, AdvSmoothMenu, cxClasses,
	cxLocalization, frxClass;

type
	TFmain = class(TForm)
		AdvPolyList1: TAdvPolyList;
		SectionItem1: TSectionItem;
		WedgeItem1: TWedgeItem;
		WedgeItem2: TWedgeItem;
		SectionItem2: TSectionItem;
		CurvyPanel1: TCurvyPanel;
		PostgreSQLUniProvider1: TPostgreSQLUniProvider;
		UniConnection1: TUniConnection;
		QClientes: TUniQuery;
		QClientesnombre: TStringField;
		QClientesorganismoid: TStringField;
		QClientesprovinciaid: TStringField;
		QClientestelefono: TStringField;
		QClientesfax: TStringField;
		QClientescorreo: TStringField;
		WedgeItem3: TWedgeItem;
		SectionItem3: TSectionItem;
		WedgeItem4: TWedgeItem;
		WedgeItem5: TWedgeItem;
		WedgeItem6: TWedgeItem;
		WedgeItem7: TWedgeItem;
		QProvincias: TUniQuery;
		UniTransaction1: TUniTransaction;
		QProvinciasprovinciaid: TStringField;
		QProvinciasdescripcion: TStringField;
		cxLocalizer1: TcxLocalizer;
		CurvyPanel2: TCurvyPanel;
		AdvSmoothLabel1: TAdvSmoothLabel;
		AdvSmoothButton1: TAdvSmoothButton;
		Qorganismos: TUniQuery;
		Qorganismosorganismoid: TStringField;
		Qorganismosdescripcion: TStringField;
		QUM: TUniQuery;
		QUMumid: TStringField;
		QUMdescripcion: TStringField;
		QUO: TUniQuery;
		QUOunidadid: TStringField;
		QUOnombre: TStringField;
		Qproducto: TUniQuery;
		QClientesfecha_acr: TDateField;
		Qclientes_de: TUniQuery;
		DataSource1: TDataSource;
		Qclientes_desucursal_cuc: TStringField;
		Qclientes_desucuirsa_cup: TStringField;
		Qclientes_dedireccion_suc_cuc: TStringField;
		Qclientes_dedireccion_suc_cup: TStringField;
		Qclientes_Compradores: TUniQuery;
		Qclientes_Compradoresnombre_comprador: TStringField;
		Qclientes_Compradorescomprador_ci: TStringField;
		Qclientes_Compradorescomprador_cargo: TStringField;
		QClientes_Rep: TUniQuery;
		QClientes_Repnombre: TStringField;
		QClientes_Repcargo: TStringField;
		QClientes_Repdirector: TBooleanField;
		QClientes_Repcarnet_id: TStringField;
		QContratos: TUniQuery;
		QContratostipo: TStringField;
		QContratosfecha_inicio: TDateField;
		QContratosfecha_vencimiento: TDateField;
		QContratosestado: TStringField;
		QformasP: TUniQuery;
		QformasPtipo_pago: TStringField;
		DataSource2: TDataSource;
		QformasPformaid: TIntegerField;
		Qcomplementos: TUniQuery;
		Qcomplementoscomplementoid: TIntegerField;
		Qcomplementostipo: TStringField;
		Qcomplementosdescripcion: TStringField;
		Qcomplementosfecha_inicio: TDateField;
		Qcomplementosfecha_ven: TDateField;
		WedgeItem8: TWedgeItem;
		Qanexos: TUniQuery;
		Qanexosanexoid: TFloatField;
		Qproductos_anexos: TUniQuery;
		Qplazos_entrega: TUniQuery;
		DataSource3: TDataSource;
		DataSource4: TDataSource;
		DataSource5: TDataSource;
		QContratosmonto_general: TFloatField;
		QContratosmonto_cuc: TFloatField;
		QContratosmonto_cup: TFloatField;
		SectionItem4: TSectionItem;
		WedgeItem9: TWedgeItem;
		WedgeItem10: TWedgeItem;
		WedgeItem11: TWedgeItem;
		DataSource6: TDataSource;
		QClientestipo_cliente: TStringField;
		OpenDialog1: TOpenDialog;
		UniDACInitManager1: TUniDACInitManager;
		WedgeItem12: TWedgeItem;
		Qdevoluciones: TUniQuery;
		Qdevolucionesdocid: TIntegerField;
		Qdevolucionesdescripcion: TStringField;
		Qdevolucionesproductoid: TStringField;
		Qdevolucionescantidad: TFloatField;
		Qdevolucionesanexoid: TFloatField;
		Qdevolucionesestado: TStringField;
		Qdevolucionesfecha: TDateField;
		SectionItem5: TSectionItem;
		PopupMenu1: TPopupMenu;
		Comprobarvencimientodecontratos1: TMenuItem;
		WedgeItem14: TWedgeItem;
		QClientesdireccion: TStringField;
		QClientescodigo: TStringField;
		Qclientes_Compradoresclienteid: TIntegerField;
		Qclientes_declienteid: TIntegerField;
		QClientes_Repclienteid: TIntegerField;
		Qanexosclienteid: TIntegerField;
		QContratosclienteid: TIntegerField;
		Qanexoscontratoid: TIntegerField;
		Qdevolucionesclienteid: TIntegerField;
		Qdevolucionescontratoid: TIntegerField;
		QClientesclienteid: TIntegerField;
		QformasPcontratoid: TIntegerField;
		QformasPclienteid: TIntegerField;
		Qcomplementoscontratoid: TIntegerField;
		Qcomplementosclienteid: TIntegerField;
		WedgeItem15: TWedgeItem;
		Qproductocodigo: TStringField;
		Qproductoum: TStringField;
		Qproductoprecio_cup: TFloatField;
		Qproductoprecio_cuc: TFloatField;
		Qproductoueb: TStringField;
		Qproductocosto: TFloatField;
		Qproductodescripcion: TStringField;
		Qproductocod_pieza: TStringField;
		Qproductos_anexoscontratoid: TIntegerField;
		Qproductos_anexosclienteid: TIntegerField;
		Qproductos_anexosanexoid: TFloatField;
		Qproductos_anexosproductoid: TIntegerField;
		Qplazos_entregacontratoid: TIntegerField;
		Qplazos_entregaclienteid: TIntegerField;
		Qplazos_entregaproductoid: TIntegerField;
		Qplazos_entregacantidad_contratada: TFloatField;
		Qplazos_entregafecha_entrega: TDateField;
		Qclientes_decuenta_cuc: TStringField;
		Qclientes_decuenta_cup: TStringField;
		WedgeItem16: TWedgeItem;
		QContratoscontratoid: TIntegerField;
		Qproductoproductoid: TIntegerField;
		WedgeItem17: TWedgeItem;
		WedgeItem18: TWedgeItem;
		Qplazos_entregaanexoid: TIntegerField;
		Qplazos_entregacant_facturada: TIntegerField;
		Qplazos_entreganumero_factura: TIntegerField;
		Qproductoprecio_usd: TFloatField;
		QClientesnit: TStringField;
		Qanexoscodcontrato: TStringField;
		Qanexoscodcliente: TStringField;
		Qproductos_anexoscodcliente: TStringField;
		Qproductos_anexoscodcontrato: TStringField;
		Qproductos_anexoscodproducto: TStringField;
		Qplazos_entregacodcontrato: TStringField;
		Qplazos_entregacodcliente: TStringField;
		Qplazos_entregacodproducto: TStringField;
		Qplazos_entregaplazoid: TIntegerField;
		Qproductoprecio_total: TFloatField;
		QFacturas: TUniQuery;
		QFacturasfacturaid: TIntegerField;
		QFacturasclienteid: TIntegerField;
		QFacturascontratoid: TIntegerField;
		QFacturascompradorid: TStringField;
		QFacturasestado: TStringField;
		QFacturasfecha: TDateField;
		QFacturastransp_mn: TFloatField;
		QFacturastranspcuc: TFloatField;
		QFacturaspagada: TStringField;
		QFacturascodcliente: TStringField;
		QFacturascodcontrato: TStringField;
		QformasPpago_a: TIntegerField;
		WedgeItem19: TWedgeItem;
		SectionItem6: TSectionItem;
		WedgeItem20: TWedgeItem;
		WedgeItem13: TWedgeItem;
		WedgeItem21: TWedgeItem;
		WedgeItem22: TWedgeItem;
		Qproductonuevo: TStringField;
		Qproductofecha_desarrollo: TDateField;
		WedgeItem23: TWedgeItem;
		QContratoscodigo: TStringField;
    WedgeItem24: TWedgeItem;
		procedure WedgeItem3ItemClick(Sender: TObject; Item: TCustomItem);
		procedure AdvSmoothButton1Click(Sender: TObject);
		procedure WedgeItem4ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem5ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem6ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem7ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem1ItemClick(Sender: TObject; Item: TCustomItem);

		procedure Qclientes_deBeforeOpen(DataSet: TDataSet);
		procedure Qclientes_CompradoresBeforeInsert(DataSet: TDataSet);
		procedure QClientes_RepBeforeInsert(DataSet: TDataSet);
		procedure WedgeItem2ItemClick(Sender: TObject; Item: TCustomItem);
		procedure QformasPBeforeOpen(DataSet: TDataSet);
		procedure QformasPBeforeInsert(DataSet: TDataSet);
		procedure QcomplementosBeforeOpen(DataSet: TDataSet);
		procedure QcomplementosBeforeInsert(DataSet: TDataSet);
		procedure WedgeItem8ItemClick(Sender: TObject; Item: TCustomItem);
		procedure Qproductos_anexosBeforeOpen(DataSet: TDataSet);
		procedure Qplazos_entregaBeforeOpen(DataSet: TDataSet);
		procedure WedgeItem9ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem10ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem11ItemClick(Sender: TObject; Item: TCustomItem);
		procedure QFacturasAfterInsert(DataSet: TDataSet);
		procedure FormCreate(Sender: TObject);
		procedure FormActivate(Sender: TObject);
		procedure WedgeItem12ItemClick(Sender: TObject; Item: TCustomItem);
		procedure QdevolucionesAfterInsert(DataSet: TDataSet);
		procedure WedgeItem13ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem14ItemClick(Sender: TObject; Item: TCustomItem);
		procedure QClientesAfterPost(DataSet: TDataSet);
		procedure DataSource2DataChange(Sender: TObject; Field: TField);
		procedure QContratosAfterPost(DataSet: TDataSet);
		procedure WedgeItem16ItemClick(Sender: TObject; Item: TCustomItem);
		procedure Qproductos_anexosAfterPost(DataSet: TDataSet);
		procedure QentrdasAfterPost(DataSet: TDataSet);
		procedure QentrdasAfterDelete(DataSet: TDataSet);
		procedure WedgeItem17ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem18ItemClick(Sender: TObject; Item: TCustomItem);
		procedure QanexosAfterPost(DataSet: TDataSet);
		procedure WedgeItem19ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem20ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem21ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem22ItemClick(Sender: TObject; Item: TCustomItem);
		procedure WedgeItem23ItemClick(Sender: TObject; Item: TCustomItem);
		procedure FormShow(Sender: TObject);
    procedure WedgeItem24ItemClick(Sender: TObject; Item: TCustomItem);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	Fmain: TFmain;
	factive: TForm;
	userlevel: integer;

implementation

{$R *.dfm}

uses provincias, organismos, um, uo, productos, clientes, contratos,
	reportes, entradas, facturas, anexos, login, devoluciones, sel_productos_dev,
	control711, cheques, prefacturas, entidad, despacho,
	transferencias, cierres, ajustes_ent, ajustes_ubi, about, periodo,usuarios;

procedure TFmain.AdvSmoothButton1Click(Sender: TObject);
begin
	factive.Close;
	factive.free;
	AdvPolyList1.Enabled := true;
	AdvSmoothLabel1.Caption.Text := 'Sistema de Control de Contratos y Ventas';
	AdvSmoothButton1.Visible := false;
end;

procedure TFmain.DataSource2DataChange(Sender: TObject; Field: TField);
begin
	// QContratos.Edit;
end;

procedure TFmain.FormActivate(Sender: TObject);
begin
	cxLocalizer1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'lang.ini');
	cxLocalizer1.Locale := 23562;
	cxLocalizer1.Active := true;
	Flogin := Tflogin.Create(Application);
	Flogin.ShowModal;
end;

procedure TFmain.FormCreate(Sender: TObject);
var
	ininame: string;
	paramsResult: boolean;
begin

	if UniConnection1.Connected = true then
		UniConnection1.Connected := false;

	ininame := ExtractFilePath(Application.ExeName) + 'merchant.ini';

	UniDACInitManager1.OpenFilePath := ininame;
	paramsResult := false;

	if FileExists(ininame) then
		paramsResult := UniDACInitManager1.LoadParameters
	else
		paramsResult := UniDACInitManager1.CreateParameters;

	if FileExists(ininame) = false then
		UniDACInitManager1.SaveParameters;

end;

procedure TFmain.FormShow(Sender: TObject);
var
	ininame: string;
	paramsResult: boolean;
begin

	{ if UniConnection1.Connected=true then
		UniConnection1.Connected:=false;

		ininame:= ExtractFilePath(Application.ExeName)+'merchant.ini';

		UniDACInitManager1.OpenFilePath:= ininame;
		paramsResult:= false;

		if FileExists( ininame) then
		paramsResult:= UniDACInitManager1.LoadParameters
		else
		paramsResult:= UniDACInitManager1.CreateParameters;

		if paramsResult then
		UniDACInitManager1.SaveParameters;

	}

end;

procedure TFmain.QanexosAfterPost(DataSet: TDataSet);
begin
	Fmain.Qanexos.RefreshRecord;
end;

procedure TFmain.QClientesAfterPost(DataSet: TDataSet);
begin
	QClientes.ExecSQL;
end;

procedure TFmain.Qclientes_CompradoresBeforeInsert(DataSet: TDataSet);
begin
	Qclientes_Compradores.ParamByName('clienteid').Value :=
		QClientesclienteid.Value;
end;

procedure TFmain.Qclientes_deBeforeOpen(DataSet: TDataSet);
begin
	Qclientes_de.ParamByName('clienteid').Value := QClientesclienteid.Value;
end;

procedure TFmain.QClientes_RepBeforeInsert(DataSet: TDataSet);
begin
	QClientes_Rep.ParamByName('clienteid').Value := QClientesclienteid.Value;
end;

procedure TFmain.QcomplementosBeforeInsert(DataSet: TDataSet);
begin
	Qcomplementos.ParamByName('contratoid').Value := QContratoscontratoid.Value;
	Qcomplementos.ParamByName('clienteid').Value := QContratosclienteid.Value;
end;

procedure TFmain.QcomplementosBeforeOpen(DataSet: TDataSet);
begin
	Qcomplementos.ParamByName('contratoid').Value := QContratoscontratoid.Value;
	Qcomplementos.ParamByName('clienteid').Value := QContratosclienteid.Value;
end;

procedure TFmain.QContratosAfterPost(DataSet: TDataSet);
begin
	QContratos.ExecSQL;
end;

procedure TFmain.QdevolucionesAfterInsert(DataSet: TDataSet);
begin
	Qdevolucionesestado.Value := 'En Proceso';
end;

procedure TFmain.QentrdasAfterDelete(DataSet: TDataSet);
begin
	fentradas.Qentradas.Close;
	fentradas.Qentradas.ExecSQL;
	fentradas.Qentradas.open;
end;

procedure TFmain.QentrdasAfterPost(DataSet: TDataSet);
begin
	// Fentradas.UniQuery1.RefreshRecord;
end;

procedure TFmain.QFacturasAfterInsert(DataSet: TDataSet);
begin
	QFacturasestado.Value := 'En Trayecto';
end;

procedure TFmain.QformasPBeforeInsert(DataSet: TDataSet);
begin
	QformasP.ParamByName('contratoid').Value := QContratoscontratoid.Value;
	QformasP.ParamByName('clienteid').Value := QContratosclienteid.Value;

end;

procedure TFmain.QformasPBeforeOpen(DataSet: TDataSet);
begin
	QformasP.ParamByName('contratoid').Value := QContratoscontratoid.Value;
	QformasP.ParamByName('clienteid').Value := QContratosclienteid.Value;
end;

procedure TFmain.Qplazos_entregaBeforeOpen(DataSet: TDataSet);
begin
	Qplazos_entrega.ParamByName('contratoid').Value :=
		Qproductos_anexoscontratoid.Value;
	Qplazos_entrega.ParamByName('clienteid').Value :=
		Qproductos_anexosclienteid.Value;
	Qplazos_entrega.ParamByName('anexoid').Value :=
		Qproductos_anexosanexoid.Value;
	Qplazos_entrega.ParamByName('productoid').Value :=
		Qproductos_anexosproductoid.Value;
end;

procedure TFmain.Qproductos_anexosAfterPost(DataSet: TDataSet);
begin
	fanexos.UniQuery2.Close;
	fanexos.UniQuery2.ParamByName('vanexoid').Value := Fmain.Qanexosanexoid.Value;
	fanexos.UniQuery2.ExecSQL;
	fanexos.UniQuery2.open;
	fanexos.UniQuery3.Close;
	fanexos.UniQuery3.ExecSQL;
	fanexos.UniQuery3.open;

end;

procedure TFmain.Qproductos_anexosBeforeOpen(DataSet: TDataSet);
begin
	Qproductos_anexos.ParamByName('contratoid').Value := Qanexoscontratoid.Value;
	Qproductos_anexos.ParamByName('clienteid').Value := Qanexosclienteid.Value;
	Qproductos_anexos.ParamByName('anexoid').Value := Qanexosanexoid.Value;
end;

procedure TFmain.WedgeItem10ItemClick(Sender: TObject; Item: TCustomItem);
begin
	// Qentrdas.Open;
	fentradas := TFentradas.Create(Application);
	fentradas.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Entradas al Almacen';
	fentradas.Show;
	factive := fentradas;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem11ItemClick(Sender: TObject; Item: TCustomItem);
begin
	QFacturas.open;
	// QProd_Fact.Open;
	QContratos.open;
	QClientes.open;
	Qclientes_Compradores.open;
	Ffacturas := TFfacturas.Create(Application);
	Ffacturas.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'facturas';
	Ffacturas.Show;
	factive := Ffacturas;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem12ItemClick(Sender: TObject; Item: TCustomItem);
begin
	FDevoluciones := TFDevoluciones.Create(Application);
	FDevoluciones.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Devoluciones al Almacen';
	FDevoluciones.Show;
	factive := FDevoluciones;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem13ItemClick(Sender: TObject; Item: TCustomItem);
begin
	Fajustes_ent := TFajustes_ent.Create(Application);
	Fajustes_ent.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Ajustes de Entradas al Almacen';
	Fajustes_ent.Show;
	factive := Fajustes_ent;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;

end;

procedure TFmain.WedgeItem14ItemClick(Sender: TObject; Item: TCustomItem);
begin
	fcheques := Tfcheques.Create(Application);
	fcheques.Parent := CurvyPanel1;
	fcheques.Show;
	AdvSmoothLabel1.Caption.Text := 'Control de Cheques Recibidos';
	factive := fcheques;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem16ItemClick(Sender: TObject; Item: TCustomItem);
begin
	fprefacturas := Tfprefacturas.Create(Application);
	fprefacturas.Parent := CurvyPanel1;
	fprefacturas.Show;
	AdvSmoothLabel1.Caption.Text := 'Prefacturas';
	factive := fprefacturas;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;

end;

procedure TFmain.WedgeItem17ItemClick(Sender: TObject; Item: TCustomItem);
begin
	FEntidad := TFEntidad.Create(Application);
	FEntidad.Parent := CurvyPanel1;
	FEntidad.Show;
	AdvSmoothLabel1.Caption.Text := 'Datos de la Entidad';
	factive := FEntidad;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
	FEntidad.QEntidades.open;
end;

procedure TFmain.WedgeItem18ItemClick(Sender: TObject; Item: TCustomItem);
begin
	FDespacho := TFDespacho.Create(Application);
	FDespacho.Parent := CurvyPanel1;
	FDespacho.Show;
	AdvSmoothLabel1.Caption.Text := 'Orden de Despacho de Almacen';
	factive := FDespacho;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;

end;

procedure TFmain.WedgeItem19ItemClick(Sender: TObject; Item: TCustomItem);
begin
	FTransferencias := TFTransferencias.Create(Application);
	FTransferencias.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Transferencias entre Contratos';
	FTransferencias.Show;
	factive := FTransferencias;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem1ItemClick(Sender: TObject; Item: TCustomItem);
begin
	QClientes.open;
	Qclientes_de.open;
	Qclientes_Compradores.open;
	QClientes_Rep.open;
	Qorganismos.open;
	QProvincias.open;
	Fclientes := TFclientes.Create(Application);
	Fclientes.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Nomenclador de Clientes';
	Fclientes.Show;
	factive := Fclientes;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem20ItemClick(Sender: TObject; Item: TCustomItem);
begin
	fcierres := TFCierres.Create(Application);
	fcierres.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Cierres de Información';
	fcierres.Show;
	factive := fcierres;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem21ItemClick(Sender: TObject; Item: TCustomItem);
begin
	Fajustes_ubi := TFajustes_ubi.Create(Application);
	Fajustes_ubi.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Ajustes de Precios y Costo en el Almacen';
	Fajustes_ubi.Show;
	factive := Fajustes_ubi;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem22ItemClick(Sender: TObject; Item: TCustomItem);
begin
	Fabout := Tfabout.Create(Application);
	Fabout.ShowModal;
end;

procedure TFmain.WedgeItem23ItemClick(Sender: TObject; Item: TCustomItem);
begin
	Fperiodo := TFperiodo.Create(Application);
	Fperiodo.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Periodos Contables';
	Fperiodo.Show;
	factive := Fperiodo;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;

end;

procedure TFmain.WedgeItem24ItemClick(Sender: TObject; Item: TCustomItem);
begin
 	FUsuarios := TFUsuarios.Create(Application);
	FUsuarios.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Control de Usuarios';
	FUsuarios.Show;
	factive := FUsuarios;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem2ItemClick(Sender: TObject; Item: TCustomItem);
begin
	QContratos.open;
	QformasP.open;
	Qcomplementos.open;
	FContratos := TFContratos.Create(Application);
	FContratos.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Contratos';
	FContratos.Show;
	factive := FContratos;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem3ItemClick(Sender: TObject; Item: TCustomItem);
begin
	QProvincias.open;
	fprovincias := Tfprovincias.Create(Application);
	fprovincias.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Nomenclador de Provincias';
	fprovincias.Show;
	factive := fprovincias;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem4ItemClick(Sender: TObject; Item: TCustomItem);
begin
	Qorganismos.open;
	forganismos := Tforganismos.Create(Application);
	forganismos.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Nomenclador de Organismos';
	forganismos.Show;
	factive := forganismos;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem5ItemClick(Sender: TObject; Item: TCustomItem);
begin
	QUM.open;
	fum := Tfum.Create(Application);
	fum.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Nomenclador de Unidades de Medida';
	fum.Show;
	factive := fum;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem6ItemClick(Sender: TObject; Item: TCustomItem);
begin
	QUO.open;
	fuo := Tfuo.Create(Application);
	fuo.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Nomenclador de Unidades Organizativas';
	fuo.Show;
	factive := fuo;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem7ItemClick(Sender: TObject; Item: TCustomItem);
begin
	Qproducto.open;
	QUM.open;
	QUO.open;
	fproductos := Tfproductos.Create(Application);
	fproductos.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Nomenclador de Productos';
	fproductos.Show;
	factive := fproductos;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem8ItemClick(Sender: TObject; Item: TCustomItem);
begin
	QContratos.open;
	Qproducto.open;
	Qanexos.open;
	Qproductos_anexos.open;
	Qplazos_entrega.open;
	fanexos := TFanexos.Create(Application);
	fanexos.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text :=
		'Control de Anexos, Productos y Plazos de Entrega';
	fanexos.Show;
	factive := fanexos;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;
end;

procedure TFmain.WedgeItem9ItemClick(Sender: TObject; Item: TCustomItem);
begin
	Freportes := TFreportes.Create(Application);
	Freportes.Parent := CurvyPanel1;
	AdvSmoothLabel1.Caption.Text := 'Catálogo de Reportes';
	Freportes.Show;
	factive := Freportes;
	AdvPolyList1.Enabled := false;
	AdvSmoothButton1.Visible := true;

end;

end.
