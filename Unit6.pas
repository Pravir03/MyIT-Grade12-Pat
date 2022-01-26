unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TForm6 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    delete: TButton;
    Button2: TButton;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    procedure Button5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure deleteClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  setin:integer;

implementation
uses
  unit4;
{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var
  i: Integer;
begin
unit4.DataModule4.ADOTable4.Insert;
for i := 1 to unit4.DataModule4.ADOTable4.FieldCount -1 do
 begin
   unit4.DataModule4.ADOTable4.Fields.Fields[i].Value:=inputbox('put in value','','');
 end;
 unit4.DataModule4.ADOTable4.Post;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
unit4.DataModule4.ADOTable4.Edit;
unit4.DataModule4.ADOTable4[edit2.Text]:=inputbox('setvalue','','');
unit4.DataModule4.ADOTable4.Post;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
if setin = 0 then
begin
unit4.DataModule4.ADOTable4.Sort:=edit1.text+' ASC';
setin:=1;
exit;
end;
if setin = 1 then
begin
unit4.DataModule4.ADOTable4.Sort:=edit1.text+' DESC';
setin:=0;
end;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
unit4.DataModule4.ADOTable4.Locate(edit3.Text,edit4.Text,[]);
end;

procedure TForm6.ComboBox1Change(Sender: TObject);
begin
unit4.DataModule4.ADOTable4.Active:=false;
unit4.DataModule4.ADOTable4.TableName:='';
case combobox1.ItemIndex of
0: unit4.DataModule4.ADOTable4.TableName:=widestring('tblusers');
1: unit4.DataModule4.ADOTable4.TableName:=widestring('workouts');
2: unit4.DataModule4.ADOTable4.TableName:=widestring('tblfood');
3: unit4.DataModule4.ADOTable4.TableName:=widestring('tbltrainer');
4: unit4.DataModule4.ADOTable4.TableName:=widestring('tblexercise');

end;
unit4.DataModule4.ADOTable4.Active:=true;
end;

procedure TForm6.deleteClick(Sender: TObject);
begin
unit4.DataModule4.ADOTable4.Delete;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
setin:=0;
  unit4.DataModule4.adoquery1.sql.Clear;
unit4.DataModule4.adoquery1.sql.Add('select tblusers.ID, tbltrainer.trainerID as trainer from tblusers,tbltrainer where tblusers.ID = tbltrainer.trainerID ');
unit4.DataModule4.adoquery1.Open;
end;

end.
