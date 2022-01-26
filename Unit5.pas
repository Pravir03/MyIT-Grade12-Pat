unit Unit5;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Buttons,MMsystem, Grids;
type
  Texercise = class(Tobject)

private
ftag,fcalset,freset,fdiffset,fimset:string;
images,requir,calories,diffi:array of string;
public
constructor create(Stag:string);
function gettag:string;
procedure setcal(scal:string);
function getcal:string;

procedure setim(scal:string);
function getim:string;

procedure setre(scal:string);
function getre:string;

procedure setdiff(scal:string);
function getdiff:string;
end;

implementation
uses unit4,unit2;

// remember that you put uses and then put the units
constructor texercise.create(Stag: string);
begin
ftag:=Stag;
end;

function Texercise.getcal: string;
begin
result:=calories[strtoint(fcalset)];
end;

function Texercise.getdiff: string;
begin
result:=diffi[strtoint(fdiffset)];
end;

function Texercise.getim: string;
begin
result:=images[strtoint(fimset)];
end;

function Texercise.getre: string;
begin
result:=requir[strtoint(freset)];
end;

function Texercise.gettag:string;
var
count,u:integer;
begin
u:=0;
unit4.DataModule4.ADOTable1.Filtered:=false;
unit4.DataModule4.ADOTable1.Filter:='tags='+quotedstr(ftag);
unit4.DataModule4.ADOTable1.Filtered:=true;
count:=unit4.DataModule4.ADOTable1.RecordCount;
setlength(images,count);
setlength(requir,count);
setlength(calories,count);
setlength(diffi,count);
unit4.DataModule4.ADOTable1.First;
while not unit4.DataModule4.ADOTable1.Eof do
begin
if unit4.DataModule4.ADOTable1['tags']=ftag then
begin
images[u]:=unit4.DataModule4.ADOTable1['picture'];
requir[u]:=unit4.DataModule4.ADOTable1['requirments'];
calories[u]:=unit4.DataModule4.ADOTable1['calories'];
diffi[u]:=unit4.DataModule4.ADOTable1['difficulty'];
u:=u+1;
end;
unit4.DataModule4.ADOTable1.Next;
end;
result:='hi';
end;


procedure Texercise.setcal(scal: string);
begin
fcalset:=scal;
end;

procedure Texercise.setdiff(scal: string);
begin
fdiffset:=scal;
end;

procedure Texercise.setim(scal: string);
begin
fimset:=scal;
end;

procedure Texercise.setre(scal: string);
begin
freset:=scal;
end;

end.
