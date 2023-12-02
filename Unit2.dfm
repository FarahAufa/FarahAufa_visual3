object Form2: TForm2
  Left = 192
  Top = 125
  Width = 1044
  Height = 540
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 54
    Top = 36
    object m1: TMenuItem
      Caption = 'Menu'
      object Barang1: TMenuItem
        Caption = 'Barang'
        OnClick = Barang1Click
      end
      object Customer1: TMenuItem
        Caption = 'Customer'
        OnClick = Customer1Click
      end
      object Karyawan1: TMenuItem
        Caption = 'Karyawan'
        OnClick = Karyawan1Click
      end
      object Supplier1: TMenuItem
        Caption = 'Supplier'
        OnClick = Supplier1Click
      end
      object User1: TMenuItem
        Caption = 'User'
        OnClick = User1Click
      end
      object ransaksi1: TMenuItem
        Caption = 'Transaksi'
        OnClick = ransaksi1Click
      end
    end
    object Profil1: TMenuItem
      Caption = 'Profil'
    end
    object Logout1: TMenuItem
      Caption = 'Log out'
    end
  end
end
