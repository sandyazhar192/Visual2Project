object Form3: TForm3
  Left = 212
  Top = 159
  Width = 643
  Height = 540
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object NAMA: TLabel
    Left = 144
    Top = 72
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl1: TLabel
    Left = 144
    Top = 328
    Width = 80
    Height = 13
    Caption = 'MASUKAN NAMA'
  end
  object edt1: TEdit
    Left = 192
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btn1: TButton
    Left = 144
    Top = 120
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 120
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 320
    Top = 120
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 144
    Top = 168
    Width = 320
    Height = 120
    DataSource = DataModule1.dskategori
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end>
  end
  object edt2: TEdit
    Left = 240
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 384
    Top = 328
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
  end
end
