unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons,MMsystem, Grids,unit2, GIFImg,
  pngimage;

type
  Tfrmmain = class(TForm)
    pnlmain: TPanel;
    shpoutlin1: TShape;
    Pnlheading: TPanel;
    Panel1: TPanel;
    shplogin: TShape;
    lbluser1: TLabel;
    shptrainer: TShape;
    shppersonal: TShape;
    shp1adminclclick: TShape;
    lbladmin: TLabel;
    lbltrainer: TLabel;
    lblpersonal: TLabel;
    imgadmin: TImage;
    shp1tip: TShape;
    Panel3: TPanel;
    shp1info: TShape;
    pnlbm1: TPanel;
    shpunknown: TShape;
    shphelp1: TShape;
    Panel5: TPanel;
    Image2: TImage;
    lbltips: TLabel;
    Image4: TImage;
    Panel2: TPanel;
    Image3: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure shppersonalMouseEnter(Sender: TObject);
    procedure shppersonalMouseLeave(Sender: TObject);
    procedure shptrainerMouseEnter(Sender: TObject);
    procedure shptrainerMouseLeave(Sender: TObject);
    procedure lblpersonalClick(Sender: TObject);
    procedure lbltrainerClick(Sender: TObject);
    procedure lbladminClick(Sender: TObject);
    procedure pnlbm1Click(Sender: TObject);
    procedure lbltipsClick(Sender: TObject);
    procedure lblpersonalMouseEnter(Sender: TObject);
    procedure lblpersonalMouseLeave(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmain: Tfrmmain;
  tips,counter,setter:integer;

implementation
 uses
 unit6,unit4,unit3;
{$R *.dfm}


procedure Tfrmmain.FormCreate(Sender: TObject);
begin
pnlmain.Color:=rgb(46, 64, 83 );
shpoutlin1.Brush.Color:=rgb(46, 204, 113);
Pnlheading.Color:=rgb(46, 204, 113);
Panel1.Color:=rgb(46, 204, 113);
Shape1.Brush.Color:=rgb(46, 204, 113);
tips:=0;
Panel5.Color:=rgb(46, 64, 83);
counter:=0;
setter:=0;
label1.Color:=rgb(46, 64, 83);
shape2.Brush.Color:=rgb(46, 204, 113);
shape3.Brush.Color:=rgb(46, 204, 113);
shape4.Brush.Color:=rgb(46, 204, 113);
Panel2.Color:=rgb(46, 64, 83);
end;


procedure Tfrmmain.Image2Click(Sender: TObject);
begin
sndplaysound(pwidechar('C:\Users\PRAVIR\Music\CRYING_INTHERAIN.wav'),SND_ASYNC);
end;

procedure Tfrmmain.Image4Click(Sender: TObject);
begin
if Dialogs.MessageDlg('Do you Wish to Exit?',mtConfirmation,[mbYes, mbNo],0,mbYes) = mrYes then
begin
Dialogs.MessageDlg('Stay Fit,Remember your mask. We hope to see you again soon.',mtInformation,[mbOk], 0, mbOk);
Close;
end; //this gives the user the option to close without limiting user experience by making the form look cleaner
end;

procedure Tfrmmain.lbladminClick(Sender: TObject);
const
passw='hello world';
begin
if inputbox('Put in ID','','') = passw then
unit6.Form6.Show
else
showmessage('you are not an Admin');
end;

procedure Tfrmmain.lbltrainerClick(Sender: TObject);
var
username,pass:string;
begin
username:=inputbox('Put in ID','','');
pass:=inputbox('h','','surname');
if unit4.DataModule4.ADOTable5.locate('trainerID',username,[])=true then
begin
if unit4.DataModule4.ADOTable5['password'] = pass then
begin
showmessage('you have logged in');
form3.show;
end
else
begin
showmessage('you have the wrong info');
end;
end;
end;






procedure Tfrmmain.lblpersonalClick(Sender: TObject);
var
username,pass:string;
begin
username:=inputbox('Put in ID','','');
pass:=inputbox('h','','surname');
if unit4.DataModule4.ADOTable4.locate('ID',username,[])=true then
begin
if unit4.DataModule4.ADOTable4['password'] = pass then
begin
showmessage('you have logged in');
form2.show;
end
else
begin
showmessage('you have the wrong info');
end;
end;
end;

procedure Tfrmmain.lblpersonalMouseEnter(Sender: TObject);
begin
image2.Picture.LoadFromFile('personal exercise.gif');
(image2.Picture.Graphic as TGIFImage).Animate:=true;
Panel5.Color:=rgb(46, 204, 113);
end;

procedure Tfrmmain.lblpersonalMouseLeave(Sender: TObject);
begin
(image2.Picture.Graphic as TGIFImage).Animate:=false;
Panel5.Color:=rgb(46, 64, 83);
end;

procedure Tfrmmain.lbltipsClick(Sender: TObject);
var
  text:textfile;
  sline:string;
begin
tips:=tips+1;
assignfile(text,'tips.txt');
inc(setter);
if fileexists('tips.txt')=false  then
begin
showmessage('file not found');
end;
reset(text);                          //this code takes a textfile that can be edited by a trainer
while not eof(text) do                //this code is dynamic and changes accoriding to the number of
 begin                                //items in the textfile. because its not hard coded its more adaptive
    readln(text,sline);
    if sline[1]=inttostr(tips)  then
begin
    delete(sline,1,1);                //note when usersn add to this textfile they must put a number first
    label6.Caption:=sline;            //the number must be in chronologial order
end;                                  //do not put a . after the number
if setter <= 1 then                   //it must look like this(6getup)
inc(counter);
 end;
if tips = counter then
  tips :=0;
closefile(text);
end;

procedure Tfrmmain.Panel3Click(Sender: TObject);
begin
form2.Show;
form2.TabSheet2.TabVisible:=true;
form2.TabSheet3.TabVisible:=true;
end;

procedure Tfrmmain.pnlbm1Click(Sender: TObject);
begin
form2.show;
form2.TabSheet2.TabVisible:=false;
form2.TabSheet3.TabVisible:=false;
form2.PageControl1.ActivePageIndex:=3;
end;


procedure Tfrmmain.shptrainerMouseEnter(Sender: TObject);
begin
image3.Picture.LoadFromFile('ptrainer2.jpg');
Panel2.Color:=rgb(46, 204, 113);
end;

procedure Tfrmmain.shptrainerMouseLeave(Sender: TObject);
begin
 image3.Picture.LoadFromFile('ptrainer1.jpg');
 Panel2.Color:=rgb(46, 64, 83);
end;

procedure Tfrmmain.shppersonalMouseEnter(Sender: TObject);
begin
image2.Picture.LoadFromFile('personal exercise.gif');
(image2.Picture.Graphic as TGIFImage).Animate:=true;
Panel5.Color:=rgb(46, 204, 113);
end;

procedure Tfrmmain.shppersonalMouseLeave(Sender: TObject);
begin
(image2.Picture.Graphic as TGIFImage).Animate:=false;
Panel5.Color:=rgb(46, 64, 83);
end;

end.
