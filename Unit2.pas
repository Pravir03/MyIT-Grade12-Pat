unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ComCtrls, Grids,unit5, DBGrids,GIFImg,DB;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label4: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    Image13: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    TabSheet3: TTabSheet;
    Panel10: TPanel;
    Image17: TImage;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Panel11: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Edit1: TEdit;
    Panel13: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Image16: TImage;
    Label31: TLabel;
    Help: TTabSheet;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel4: TPanel;
    RichEdit1: TRichEdit;
    RadioGroup1: TRadioGroup;
    procedure Image5MouseEnter(Sender: TObject);
    procedure Image5MouseLeave(Sender: TObject);
    procedure Image7MouseEnter(Sender: TObject);
    procedure Image7MouseLeave(Sender: TObject);
    procedure Image6MouseEnter(Sender: TObject);
    procedure Image6MouseLeave(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image4MouseEnter(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image9MouseEnter(Sender: TObject);
    procedure Image9MouseLeave(Sender: TObject);
    procedure Image10MouseEnter(Sender: TObject);
    procedure Image10MouseLeave(Sender: TObject);
    procedure Image18MouseEnter(Sender: TObject);
    procedure Image18MouseLeave(Sender: TObject);
    procedure Image19MouseEnter(Sender: TObject);
    procedure Image19MouseLeave(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ttags:Texercise;
  temp,legs,quads,forarms,stom,chest,arms,shol:integer;
implementation
uses unit4,unit3;
{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
unit4.DataModule4.adoquery1.sql.Clear;
unit4.DataModule4.adoquery1.sql.Add('select Min("cal") as high from tblfood');
unit4.DataModule4.adoquery1.Open;
label27.Caption:=unit4.DataModule4.ADOTable3['cal'];
label28.Caption:=unit4.DataModule4.ADOTable3['fat'];
label29.Caption:=unit4.DataModule4.ADOTable3['carbs'];
label30.Caption:=unit4.DataModule4.ADOTable3['protien'];
image16.Picture.LoadFromFile(unit4.DataModule4.ADOTable3['pic']+'.jpg');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
unit4.DataModule4.adoquery1.sql.Clear;
unit4.DataModule4.adoquery1.sql.Add('select Max("cal") as high from tblfood');
unit4.DataModule4.adoquery1.Open;
label27.Caption:=unit4.DataModule4.ADOTable3['cal'];
label28.Caption:=unit4.DataModule4.ADOTable3['fat'];
label29.Caption:=unit4.DataModule4.ADOTable3['carbs'];
label30.Caption:=unit4.DataModule4.ADOTable3['protien'];
image16.Picture.LoadFromFile(unit4.DataModule4.ADOTable3['pic']+'.jpg');
end;

procedure TForm2.DBGrid2DblClick(Sender: TObject);
var
pic:string;
begin
label27.Caption:=unit4.DataModule4.ADOTable3['cal'];
label28.Caption:=unit4.DataModule4.ADOTable3['fat'];
label29.Caption:=unit4.DataModule4.ADOTable3['carbs'];
label30.Caption:=unit4.DataModule4.ADOTable3['protien'];
pic:=unit4.DataModule4.ADOTable3['pic'];
image16.Picture.LoadFromFile(pic+'.jpg');
showmessage('hi');
end;

procedure TForm2.Edit1Change(Sender: TObject);
var
s:string;
begin
if (length(edit1.Text)>20) or (length(edit1.Text)<2) then
  begin
   edit1.Color:=clred;
 end
 else
 begin
 s:=edit1.Text;
 edit1.Color:=clgreen;
 unit4.DataModule4.adoquery1.sql.Clear;
unit4.DataModule4.adoquery1.sql.Add('select*from tblfood where foodname like '+quotedstr('%s%'));
unit4.DataModule4.adoquery1.Open;
 end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
temp:=0;
legs:=0;
quads:=0;
forarms:=0;
stom:=0;
chest:=0;
arms:=0;
shol:=0;
label4.Color:=rgb(46, 204, 113);
panel2.Color:=rgb(46, 64, 83 );
panel3.Color:=rgb(46, 64, 83 );
panel11.Color:=rgb(46, 64, 83 );
panel13.Color:=rgb(46, 64, 83 );
shape2.Brush.Color:=rgb(46, 204, 113);
shape3.Brush.Color:=rgb(46, 204, 113);
shape4.Brush.Color:=rgb(46, 204, 113);
panel4.Color:=rgb(46, 64, 83 );
end;

procedure TForm2.Image10Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('arms');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('arms');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if arms=unit4.DataModule4.ADOTable1.RecordCount then
    arms:=0;
ttags.setcal(inttostr(arms));
ttags.setim(inttostr(arms));
ttags.setre(inttostr(arms));
ttags.setdiff(inttostr(arms));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(arms);


end;

procedure TForm2.Image10MouseEnter(Sender: TObject);
begin
image9.Picture.LoadFromFile('arm forward2.jpg');
image10.Picture.LoadFromFile('arm reverse2.jpg');
end;

procedure TForm2.Image10MouseLeave(Sender: TObject);
begin
image9.Picture.LoadFromFile('arm forward.jpg');
image10.Picture.LoadFromFile('arm reverse.jpg');
end;

procedure TForm2.Image18Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('forarms');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('forarms');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if forarms=unit4.DataModule4.ADOTable1.RecordCount then
    forarms:=0;
ttags.setcal(inttostr(forarms));
ttags.setim(inttostr(forarms));
ttags.setre(inttostr(forarms));
ttags.setdiff(inttostr(forarms));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(forarms);

end;

procedure TForm2.Image18MouseEnter(Sender: TObject);
begin
  image18.Picture.LoadFromFile('forarm2.jpg');
  image19.Picture.LoadFromFile('reverse forarm2.jpg');
end;

procedure TForm2.Image18MouseLeave(Sender: TObject);
begin
  image18.Picture.LoadFromFile('forarm.jpg');
  image19.Picture.LoadFromFile('reverse forarm.jpg');
end;

procedure TForm2.Image19Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('forarms');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('forarms');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if forarms=unit4.DataModule4.ADOTable1.RecordCount then
    forarms:=0;
ttags.setcal(inttostr(forarms));
ttags.setim(inttostr(forarms));
ttags.setre(inttostr(forarms));
ttags.setdiff(inttostr(forarms));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(forarms);

end;

procedure TForm2.Image19MouseEnter(Sender: TObject);
begin
  image18.Picture.LoadFromFile('forarm2.jpg');
  image19.Picture.LoadFromFile('reverse forarm2.jpg');
end;

procedure TForm2.Image19MouseLeave(Sender: TObject);
begin
  image18.Picture.LoadFromFile('forarm.jpg');
  image19.Picture.LoadFromFile('reverse forarm.jpg');
end;

procedure TForm2.Image2Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('legs');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('legs');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if legs=unit4.DataModule4.ADOTable1.RecordCount then
    legs:=0;
ttags.setcal(inttostr(legs));
ttags.setim(inttostr(legs));
ttags.setre(inttostr(legs));
ttags.setdiff(inttostr(legs));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(legs);

end;


procedure TForm2.Image2MouseEnter(Sender: TObject);
begin
      image2.Picture.LoadFromFile('NEW legs2.jpg');
end;

procedure TForm2.Image2MouseLeave(Sender: TObject);
begin
      image2.Picture.LoadFromFile('NEW legs.jpg');
end;

procedure TForm2.Image3Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('quads');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('quads');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if quads=unit4.DataModule4.ADOTable1.RecordCount then
    quads:=0;
ttags.setcal(inttostr(quads));
ttags.setim(inttostr(quads));
ttags.setre(inttostr(quads));
ttags.setdiff(inttostr(quads));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(quads);

end;

procedure TForm2.Image3MouseEnter(Sender: TObject);
begin
  image3.Picture.LoadFromFile('New upper legs2.jpg');
end;

procedure TForm2.Image3MouseLeave(Sender: TObject);
begin
   image3.Picture.LoadFromFile('New upper legs.jpg');
end;

procedure TForm2.Image4Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('stom');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('stom');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if stom=unit4.DataModule4.ADOTable1.RecordCount then
    stom:=0;
ttags.setcal(inttostr(stom));
ttags.setim(inttostr(stom));
ttags.setre(inttostr(stom));
ttags.setdiff(inttostr(stom));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(stom);

end;

procedure TForm2.Image4MouseEnter(Sender: TObject);
begin
      image4.Picture.LoadFromFile('newstom2.jpg');
end;

procedure TForm2.Image4MouseLeave(Sender: TObject);
begin
      image4.Picture.LoadFromFile('newstom.jpg');
end;

procedure TForm2.Image5Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('traps');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('traps');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if temp=unit4.DataModule4.ADOTable1.RecordCount then
    temp:=0;
ttags.setcal(inttostr(temp));
ttags.setim(inttostr(temp));
ttags.setre(inttostr(temp));
ttags.setdiff(inttostr(temp));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(temp);

end;

procedure TForm2.Image5MouseEnter(Sender: TObject);
begin
      image5.Picture.LoadFromFile('traps2.jpg');
end;

procedure TForm2.Image5MouseLeave(Sender: TObject);
begin
   image5.Picture.LoadFromFile('traps1.jpg');
   end;

procedure TForm2.Image6Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('shol');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('shol');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if shol=unit4.DataModule4.ADOTable1.RecordCount then
    shol:=0;
ttags.setcal(inttostr(shol));
ttags.setim(inttostr(shol));
ttags.setre(inttostr(shol));
ttags.setdiff(inttostr(shol));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(shol);

end;

procedure TForm2.Image6MouseEnter(Sender: TObject);
begin
image6.Picture.LoadFromFile('new sol2.jpg');
end;

procedure TForm2.Image6MouseLeave(Sender: TObject);
begin
image6.Picture.LoadFromFile('new sol.jpg');
end;

procedure TForm2.Image7Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('chest');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('chest');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if chest=unit4.DataModule4.ADOTable1.RecordCount then
    chest:=0;
ttags.setcal(inttostr(chest));
ttags.setim(inttostr(chest));
ttags.setre(inttostr(chest));
ttags.setdiff(inttostr(chest));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(chest);

end;


procedure TForm2.Image7MouseEnter(Sender: TObject);
begin
image7.Picture.LoadFromFile('chest2.jpg');
end;

procedure TForm2.Image7MouseLeave(Sender: TObject);
begin
image7.Picture.LoadFromFile('New chest.jpg');
end;

procedure TForm2.Image9Click(Sender: TObject);
var
s:string;
begin
ttags:=Texercise.create('arms');
s:= ttags.gettag;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr('arms');
unit4.DataModule4.ADOTable1.Filtered:=true;
 if arms=unit4.DataModule4.ADOTable1.RecordCount then
    arms:=0;
ttags.setcal(inttostr(arms));
ttags.setim(inttostr(arms));
ttags.setre(inttostr(arms));
ttags.setdiff(inttostr(arms));
label1.Caption:=ttags.getcal;
label2.Caption:=ttags.getdiff;
label3.Caption:=ttags.getre;
image13.Picture.LoadFromFile(ttags.getim+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
 inc(arms);

end;

procedure TForm2.Image9MouseEnter(Sender: TObject);
begin
image9.Picture.LoadFromFile('arm forward2.jpg');
image10.Picture.LoadFromFile('arm reverse2.jpg');
end;

procedure TForm2.Image9MouseLeave(Sender: TObject);
begin
image9.Picture.LoadFromFile('arm forward.jpg');
image10.Picture.LoadFromFile('arm reverse.jpg');
end;

procedure TForm2.Label7Click(Sender: TObject);
begin
form3.show;
form3.PageControl1.ActivePageIndex:=2;
form3.TabSheet2.TabVisible:=false;
form3.v.TabVisible:=false;
form3.TabSheet3.TabVisible:=true;
end;

procedure TForm2.Label8Click(Sender: TObject);
begin
form3.show;
form3.PageControl1.ActivePageIndex:=1;
form3.v.TabVisible:=false;
form3.TabSheet3.TabVisible:=false;
form3.TabSheet2.TabVisible:=true;
end;

procedure TForm2.Label9Click(Sender: TObject);
begin
form3.show;
form3.PageControl1.ActivePageIndex:=0;
form3.v.TabVisible:=true;
form3.TabSheet2.TabVisible:=false;
form3.TabSheet3.TabVisible:=false;
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
var
  q: Integer;
    help:textfile;
  sline:string;
  arrhelp:array[0..5]of string;
  e:integer;
begin
q:=0;
assignfile(help,'help.txt');
if fileexists('help.txt')=false  then
begin
showmessage('file not found');
end;
reset(help);

while not eof(help) do
 begin
    readln(help,sline);
    arrhelp[q]:=sline;
    inc(q);
 end;
closefile(help);
case radiogroup1.ItemIndex of
0:begin richedit1.Clear;
richedit1.Paragraph.TabCount:=1;
richedit1.Paragraph.Tab[0]:=230;
richedit1.Lines.Add(arrhelp[0]);
end;
1:begin richedit1.Clear;
richedit1.Paragraph.TabCount:=1;
richedit1.Paragraph.Tab[0]:=230;
richedit1.Lines.Add(arrhelp[1]);
end;
2:begin richedit1.Clear;
richedit1.Paragraph.TabCount:=1;
richedit1.Paragraph.Tab[0]:=230;
richedit1.Lines.Add(arrhelp[2]);
end;
3:begin richedit1.Clear;
richedit1.Paragraph.TabCount:=1;
richedit1.Paragraph.Tab[0]:=230;
richedit1.Lines.Add(arrhelp[3]);
end;
4:begin richedit1.Clear;
richedit1.Paragraph.TabCount:=1;
richedit1.Paragraph.Tab[0]:=230;
richedit1.Lines.Add(arrhelp[4]);
end;
5:begin richedit1.Clear;
richedit1.Paragraph.TabCount:=1;
richedit1.Paragraph.Tab[0]:=230;
richedit1.Lines.Add(arrhelp[5]);
end;
end;
begin


end;

end;


end.
