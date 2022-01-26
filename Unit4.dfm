object DataModule4: TDataModule4
  OldCreateOrder = False
  Height = 402
  Width = 365
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\PRAVIR\Doc' +
      'uments\Pravir Padayachee Project 2021\exercises.mdb;Mode=ReadWri' +
      'te;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 88
    Top = 72
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tblexercise'
    Left = 168
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 232
    Top = 72
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'workouts'
    Left = 168
    Top = 128
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 224
    Top = 128
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tblfood'
    Left = 168
    Top = 184
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 224
    Top = 184
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 168
    Top = 240
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery1
    Left = 224
    Top = 240
  end
  object ADOTable4: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tblusers'
    Left = 168
    Top = 296
  end
  object DataSource5: TDataSource
    DataSet = ADOTable4
    Left = 224
    Top = 296
  end
  object ADOTable5: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tbltrainer'
    Left = 168
    Top = 344
  end
  object DataSource6: TDataSource
    DataSet = ADOTable5
    Left = 224
    Top = 344
  end
end
