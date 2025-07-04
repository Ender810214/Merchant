program Merchant;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Fmain},
  provincias in 'provincias.pas' {FProvincias},
  organismos in 'organismos.pas' {Forganismos},
  um in 'um.pas' {FUM},
  uo in 'uo.pas' {Fuo},
  productos in 'productos.pas' {Fproductos},
  Clientes in 'Clientes.pas' {Fclientes},
  contratos in 'contratos.pas' {FContratos},
  sel_cliente_fac in 'sel_cliente_fac.pas' {Fsel_Cliente_fac},
  sel_productos_dev in 'sel_productos_dev.pas' {Fsel_producto_dev},
  sel_contrato_fac in 'sel_contrato_fac.pas' {Fsel_contratoF},
  reportes in 'reportes.pas' {Freportes},
  entradas in 'entradas.pas' {Fentradas},
  sel_prod_plazo in 'sel_prod_plazo.pas' {Fsel_prod_plazo},
  facturas in 'facturas.pas' {Ffacturas},
  sel_comp in 'sel_comp.pas' {FSel_Comp},
  sel_cliente in 'sel_cliente.pas' {Fsel_Cliente},
  Sel_prod_alm1 in 'Sel_prod_alm1.pas' {FSel_Prod_Alm1},
  anexos in 'anexos.pas' {Fanexos},
  login in 'login.pas' {Flogin},
  devoluciones in 'devoluciones.pas' {FDevoluciones},
  sel_productos in 'sel_productos.pas' {Fsel_producto},
  sel_contrato in 'sel_contrato.pas' {Fsel_contrato},
  control711 in 'control711.pas' {Fcontrol711},
  cheques in 'cheques.pas' {Fcheques},
  prod_fact in 'prod_fact.pas' {Fprod_fact},
  transfact in 'transfact.pas' {Ftransportista},
  facturadores in 'facturadores.pas' {FFacturadores},
  Vcl.Themes,
  Vcl.Styles,
  sel_prod_fref in 'sel_prod_fref.pas' {Form1},
  usuarios in 'usuarios.pas' {Fusuarios},
  prefacturas in 'prefacturas.pas' {Fprefacturas},
  entidad in 'entidad.pas' {FEntidad},
  despacho in 'despacho.pas' {FDespacho},
  add_despacho in 'add_despacho.pas' {Fadd_despacho},
  add_cliente in 'add_cliente.pas' {Fadd_cliente},
  add_contrato in 'add_contrato.pas' {fadd_contrato},
  add_prod_despacho in 'add_prod_despacho.pas' {Fadd_prod},
  add_producto in 'add_producto.pas' {Fadd_producto},
  sel_prod_entradas in 'sel_prod_entradas.pas' {FSel_prod_Entradas},
  prod_entradas in 'prod_entradas.pas' {Fprod_entradas},
  sel_ordend_factura in 'sel_ordend_factura.pas' {Fsel_ordend_factura},
  addproddev in 'addproddev.pas' {Faddproddev},
  prod_prefact in 'prod_prefact.pas' {Fprod_prefact},
  sel_prod_prefact in 'sel_prod_prefact.pas' {Fsel_prod_prefact},
  sel_contrato_prefact in 'sel_contrato_prefact.pas' {Fsel_cont_prefact},
  sel_comp_prefact in 'sel_comp_prefact.pas' {Fsel_comp_prefact},
  transferencias in 'transferencias.pas' {FTransferencias},
  sel_prod_transf1 in 'sel_prod_transf1.pas' {Fsel_prod_transf1},
  cierres in 'cierres.pas' {FCierres},
  sel_plazo_transf in 'sel_plazo_transf.pas' {Fsel_plazo_transf},
  sel_prod_dev_fact in 'sel_prod_dev_fact.pas' {FSel_prod_dv_fact},
  change_number in 'change_number.pas' {Fchange},
  ajustes_ent in 'ajustes_ent.pas' {Fajustes_ent},
  ajustes_ubi in 'ajustes_ubi.pas' {Fajustes_ubi},
  about in 'about.pas' {Fabout},
  periodo in 'periodo.pas' {FPeriodo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;




  TStyleManager.TrySetStyle('Lavender Classico');
  Application.Title := 'Merchant';
  Application.CreateForm(TFmain, Fmain);
  Application.CreateForm(TFPeriodo, FPeriodo);
  Application.Run;
end.
