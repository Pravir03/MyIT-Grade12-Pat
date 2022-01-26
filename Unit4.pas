unit Unit4;

interface

uses
  SysUtils, Classes, DB, ADODB,unit2;

type
  TDataModule4 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource4: TDataSource;
    ADOTable4: TADOTable;
    DataSource5: TDataSource;
    ADOTable5: TADOTable;
    DataSource6: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation
uses unit5;

{$R *.dfm}

end.
