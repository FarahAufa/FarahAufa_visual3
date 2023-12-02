unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    m1: TMenuItem;
    Profil1: TMenuItem;
    Logout1: TMenuItem;
    Barang1: TMenuItem;
    Customer1: TMenuItem;
    Karyawan1: TMenuItem;
    Supplier1: TMenuItem;
    User1: TMenuItem;
    ransaksi1: TMenuItem;
    procedure Barang1Click(Sender: TObject);
    procedure Customer1Click(Sender: TObject);
    procedure Karyawan1Click(Sender: TObject);
    procedure Supplier1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure ransaksi1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

{$R *.dfm}

procedure TForm2.Barang1Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm2.Customer1Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm2.Karyawan1Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm2.Supplier1Click(Sender: TObject);
begin
  Form6.show;
end;

procedure TForm2.User1Click(Sender: TObject);
begin
Form7.show;
end;


procedure TForm2.Logout1Click(Sender: TObject);
begin
if application.MessageBox('Yakin ingin logout?','Konfirmasi Ulang',MB_YesNo)=ID_Yes then
begin
Form2.Close;
end;
end;

procedure TForm2.ransaksi1Click(Sender: TObject);
begin
Form8.Show;
end;

end.
