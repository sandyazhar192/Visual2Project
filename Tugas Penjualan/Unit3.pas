unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    NAMA: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    edt2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a : string;

implementation

uses
  datamodule;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule1.Zkategori1.SQL.Clear;
DataModule1.Zkategori1.SQL.Add('insert into kategori values(null,"'+edt1.Text+'")');
DataModule1.Zkategori1.ExecSQL ;

DataModule1.Zkategori1.SQL.Clear;
DataModule1.Zkategori1.SQL.Add('select * from kategori');
DataModule1.Zkategori1.Open;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule1.Zkategori1.SQL.Clear;
DataModule1.Zkategori1.SQL.Add('update kategori set name="'+edt1.Text+'" where id= "'+a+'"');
DataModule1.Zkategori1.ExecSQL ;

DataModule1.Zkategori1.SQL.Clear;
DataModule1.Zkategori1.SQL.Add('select * from kategori');
DataModule1.Zkategori1.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule1.Zkategori1.SQL.Clear;
DataModule1.Zkategori1.SQL.Add('delete from kategori where id= "'+a+'"');
DataModule1.Zkategori1.ExecSQL ;

DataModule1.Zkategori1.SQL.Clear;
DataModule1.Zkategori1.SQL.Add('select * from kategori');
DataModule1.Zkategori1.Open;
ShowMessage('Data Berhasil Dihapus!');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule1.Zkategori1.Fields[1].AsString;
a:= DataModule1.Zkategori1.Fields[0].AsString;
end;

end.
