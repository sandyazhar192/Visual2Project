object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 697
  Top = 255
  Height = 215
  Width = 299
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Windows\System\libmysql.dll'
    Left = 24
    Top = 24
  end
  object Zkategori1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 104
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = Zkategori1
    Left = 96
    Top = 88
  end
end
