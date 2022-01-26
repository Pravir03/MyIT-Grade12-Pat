unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,mmsystem, StdCtrls, ComCtrls, ExtCtrls, jpeg,unit4,GIFImg, Grids,
  DBGrids, Buttons;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    v: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Image13: TImage;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Button3: TButton;
    Button5: TButton;
    Timer1: TTimer;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Image1: TImage;
    ProgressBar2: TProgressBar;
    Button2: TButton;
    Button4: TButton;
    Button6: TButton;
    BitBtn2: TBitBtn;
    Timer2: TTimer;
    Image2: TImage;
    ProgressBar3: TProgressBar;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    BitBtn3: TBitBtn;
    Timer3: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  m:integer;
implementation
uses unit2;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
song:string;
begin
if m=1 then
begin
sndplaysound(nil,0);
timer1.Enabled:=false;
end
else
begin
timer1.Enabled:=true;
song:=unit4.DataModule4.ADOTable2['audio'];
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+song+'.wav')),SND_ASYNC);
m:=0;
end;
m:=m+1;                                                         //snd_loop
end;

procedure TForm3.Button2Click(Sender: TObject);
var
song:string;
begin
if m=1 then
begin
sndplaysound(nil,0);
timer2.Enabled:=false;
end
else
begin
timer2.Enabled:=true;
song:=unit4.DataModule4.ADOTable2['audio'];
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+song+'.wav')),SND_ASYNC);
m:=0;
end;
m:=m+1;                                                         //snd_loop
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
form2.show;
form2.PageControl1.ActivePageIndex:=3;
form2.TabSheet2.TabVisible:=false;
form2.TabSheet3.TabVisible:=false;
timer1.Enabled:=false;
form2.Close;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
form2.show;
form2.PageControl1.ActivePageIndex:=3;
form2.TabSheet2.TabVisible:=false;
form2.TabSheet3.TabVisible:=false;
timer2.Enabled:=false;
form2.Close;
end;

procedure TForm3.Button5Click(Sender: TObject);
var
icount:integer;
song:string;
begin
timer1.Enabled:=true;
button5.Visible:=false;
unit4.DataModule4.ADOTable2.Filtered:=false;
unit4.DataModule4.ADOTable2.Filter:='tags='+quotedstr('upper');
unit4.DataModule4.ADOTable2.Filtered:=true;
//unit4.DataModule4.ADOTable2.Sort:='workoutnum ASC,picture DECS';
icount:=unit4.DataModule4.ADOTable2.RecordCount;
unit4.DataModule4.ADOTable2.First;
image13.Picture.LoadFromFile(unit4.DataModule4.ADOTable2['picture']+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
song:=unit4.DataModule4.ADOTable2['audio'];
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+song+'.wav')),SND_ASYNC);
end;

procedure TForm3.Button6Click(Sender: TObject);
var
icount:integer;
song:string;
begin
timer2.Enabled:=true;
button6.Visible:=false;
unit4.DataModule4.ADOTable2.Filtered:=false;
unit4.DataModule4.ADOTable2.Filter:='tags='+quotedstr('middle');
unit4.DataModule4.ADOTable2.Filtered:=true;
//unit4.DataModule4.ADOTable2.Sort:='workoutnum ASC,picture DECS';
icount:=unit4.DataModule4.ADOTable2.RecordCount;
unit4.DataModule4.ADOTable2.First;
image1.Picture.LoadFromFile(unit4.DataModule4.ADOTable2['picture']+'.gif');
(image1.Picture.Graphic as TGIFImage).Animate:=true;
song:=unit4.DataModule4.ADOTable2['audio'];
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+song+'.wav')),SND_ASYNC);
end;

procedure TForm3.Button7Click(Sender: TObject);
var
song:string;
begin
if m=1 then
begin
sndplaysound(nil,0);
timer3.Enabled:=false;
end
else
begin
timer3.Enabled:=true;
song:=unit4.DataModule4.ADOTable2['audio'];
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+song+'.wav')),SND_ASYNC);
m:=0;
end;
m:=m+1;                                                         //snd_loop
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
form2.show;
form2.PageControl1.ActivePageIndex:=3;
form2.TabSheet2.TabVisible:=false;
form2.TabSheet3.TabVisible:=false;
timer3.Enabled:=false;
form2.Close;
end;

procedure TForm3.Button9Click(Sender: TObject);
var
icount:integer;
song:string;
begin
timer3.Enabled:=true;
button9.Visible:=false;
unit4.DataModule4.ADOTable2.Filtered:=false;
unit4.DataModule4.ADOTable2.Filter:='tags='+quotedstr('lower');
unit4.DataModule4.ADOTable2.Filtered:=true;
//unit4.DataModule4.ADOTable2.Sort:='workoutnum ASC,picture DECS';
icount:=unit4.DataModule4.ADOTable2.RecordCount;
unit4.DataModule4.ADOTable2.First;
image2.Picture.LoadFromFile(unit4.DataModule4.ADOTable2['picture']+'.gif');
(image2.Picture.Graphic as TGIFImage).Animate:=true;
song:=unit4.DataModule4.ADOTable2['audio'];
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+song+'.wav')),SND_ASYNC);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
m:=0;
end;

procedure TForm3.Timer1Timer(Sender: TObject);
var
song:string;
begin
progressbar1.Position:=progressbar1.Position+1;
if progressbar1.Position =100 then
begin
progressbar1.Position:=0;
progressbar1.Max:=20;
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+'break'+'.wav')),SND_ASYNC);
image13.Picture.LoadFromFile('break'+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
end;

if (progressbar1.Max=20) and (progressbar1.Position=20) then
begin
progressbar1.Max:=100;
progressbar1.Position:=0;
unit4.DataModule4.ADOTable2.next;
image13.Picture.LoadFromFile(unit4.DataModule4.ADOTable2['picture']+'.gif');
(image13.Picture.Graphic as TGIFImage).Animate:=true;
song:=unit4.DataModule4.ADOTable2['audio'];
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+song+'.wav')),SND_ASYNC);
end;

end;

procedure TForm3.Timer2Timer(Sender: TObject);
var
song:string;
begin
progressbar2.Position:=progressbar2.Position+1;
if progressbar2.Position =100 then
begin
progressbar2.Position:=0;
progressbar2.Max:=20;
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+'break'+'.wav')),SND_ASYNC);
image1.Picture.LoadFromFile('break'+'.gif');
(image1.Picture.Graphic as TGIFImage).Animate:=true;
end;

if (progressbar2.Max=20) and (progressbar2.Position=20) then
begin
progressbar2.Max:=100;
progressbar2.Position:=0;
unit4.DataModule4.ADOTable2.next;
image1.Picture.LoadFromFile(unit4.DataModule4.ADOTable2['picture']+'.gif');
(image1.Picture.Graphic as TGIFImage).Animate:=true;
song:=unit4.DataModule4.ADOTable2['audio'];
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+song+'.wav')),SND_ASYNC);
end;
end;

procedure TForm3.Timer3Timer(Sender: TObject);
var
song:string;
begin
progressbar3.Position:=progressbar3.Position+1;
if progressbar3.Position =100 then
begin
progressbar3.Position:=0;
progressbar3.Max:=20;
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+'break'+'.wav')),SND_ASYNC);
image1.Picture.LoadFromFile('break'+'.gif');
(image1.Picture.Graphic as TGIFImage).Animate:=true;
end;

if (progressbar3.Max=20) and (progressbar3.Position=20) then
begin
progressbar3.Max:=100;
progressbar3.Position:=0;
unit4.DataModule4.ADOTable2.next;
image2.Picture.LoadFromFile(unit4.DataModule4.ADOTable2['picture']+'.gif');
(image2.Picture.Graphic as TGIFImage).Animate:=true;
song:=unit4.DataModule4.ADOTable2['audio'];
sndplaysound(pwidechar(('C:\Users\PRAVIR\Documents\Pravir Padayachee Project 2021\'+song+'.wav')),SND_ASYNC);
end;
end;


end.
