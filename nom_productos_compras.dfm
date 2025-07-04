object Form3: TForm3
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Form3'
  ClientHeight = 696
  ClientWidth = 1110
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CurvyPanel1: TCurvyPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 696
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 768
    ExplicitTop = 424
    ExplicitWidth = 200
    ExplicitHeight = 100
  end
  object UniQuery1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO compras.productos'
      '  ( codproducto, descripcion, umid, precio_cup, precio_mlc)'
      'VALUES'
      '  ( :codproducto, :descripcion, :umid, :precio_cup, :precio_mlc)')
    SQLDelete.Strings = (
      'DELETE FROM compras.productos'
      'WHERE'
      '  productoid = :Old_productoid')
    SQLUpdate.Strings = (
      'UPDATE compras.productos'
      'SET'
      
        '  productoid = :productoid, codproducto = :codproducto, descripc' +
        'ion = :descripcion, umid = :umid, precio_cup = :precio_cup, prec' +
        'io_mlc = :precio_mlc'
      'WHERE'
      '  productoid = :Old_productoid')
    SQLRefresh.Strings = (
      
        'SELECT productoid, codproducto, descripcion, umid, precio_cup, p' +
        'recio_mlc FROM compras.productos'
      'WHERE'
      '  productoid = :productoid')
    Connection = Fmain.UniConnection1
    SQL.Strings = (
      'select * from compras.productos')
    Left = 608
    Top = 392
  end
end
