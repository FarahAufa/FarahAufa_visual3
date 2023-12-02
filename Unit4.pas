unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm4 = class(TForm)
    l2: TLabel;
    l1: TLabel;
    l3: TLabel;
    l6: TLabel;
    l4: TLabel;
    dbgrd1: TDBGrid;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    e_1: TEdit;
    e_2: TEdit;
    e_3: TEdit;
    e_4: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    zqry2: TZQuery;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure b6Click(Sender: TObject);
   
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id:string;

implementation

{$R *.dfm}

procedure TForm4.b1Click(Sender: TObject);
begin
b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;
b6.Enabled:= True;
e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;
end;

procedure TForm4.b2Click(Sender: TObject);
begin
  if e_1.Text='' then
  begin
    ShowMessage('ID BELUM DIISI DENGAN BENAR');
    end else
    if e_2.Text=''then
    begin
     ShowMessage('NAMA BELUM DIISI DENGAN BENAR');
    end else
    if e_3.text=''then
    begin
     ShowMessage('ALAMAT BELUM DIISI DENGAN BENAR');
    end else
    if e_4.text=''then
    begin
    ShowMessage('NOMOR TELEPON BELUM SESUAI');
    end else
  if Form4.zqry1.Locate('id_customer',e_1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin

 zqry1.SQL.Clear;
zqry1.SQL.Add('insert into customer values("'+e_1.Text+'","'+e_2.Text+'","'+e_3.Text+'","'+e_4.Text+'")');
 zqry1.ExecSQL ;

 zqry1.SQL.Clear;
 zqry1.SQL.Add('select * from customer');
 zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
end;


end;

procedure TForm4.b3Click(Sender: TObject);
begin
if (e_1.Text= '')or (e_2.Text ='')or(e_3.Text= '')or (e_4.Text ='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI!');
end else
if e_1.Text = zqry1.Fields[1].AsString then
begin
 ShowMessage('DATA TIDAK ADA PERUBAHAN');
end else
begin
 ShowMessage('DATA BERHASIL DIUPDATE!');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update customer set nm_customer= "'+e_1.Text+'",alamat="'+e_2.Text+'",no_telp_customer="'+e_3.Text+'" where id_customer="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from customer');
zqry1.Open;

end;
end;

procedure TForm4.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from customer where id_customer="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from customer');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
 ShowMessage('DATA BATAL DIHAPUS');

end;
end;

procedure TForm4.b5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm4.b6Click(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

procedure TForm4.posisiawal;
begin
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
e_4.Enabled:= false;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
id:= zqry1.Fields[0].AsString;
e_2.Text:= zqry1.Fields[1].AsString;
e_3.Text:= zqry1.Fields[2].AsString;
e_4.Text:= zqry1.Fields[3].AsString;

e_1.Enabled:= True;
e_2.Enabled:= True;
e_3.Enabled:= True;
e_4.Enabled:= True;

b1.Enabled:= false;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
end;

procedure TForm4.bersih;
begin
e_1.Clear;
e_2.Clear;
e_3.Clear;
e_4.Clear;


end;
procedure TForm4.FormShow(Sender: TObject);
begin
b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
b6.Enabled:= False;
e_1.Enabled:= false;
e_2.Enabled:= false;
e_3.Enabled:= false;
e_4.Enabled:= false;
end;


end.
