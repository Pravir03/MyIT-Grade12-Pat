object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 489
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 813
    Height = 489
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'editor'
      object Label1: TLabel
        Left = 0
        Top = 284
        Width = 51
        Height = 23
        Caption = 'Sort'
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clAqua
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 0
        Top = 343
        Width = 113
        Height = 23
        Caption = 'Table select'
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clAqua
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 287
        Top = 284
        Width = 131
        Height = 23
        Caption = 'What you want'
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clAqua
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 462
        Top = 289
        Width = 94
        Height = 23
        Caption = 'What field '
        Color = clAqua
        Font.Charset = ANSI_CHARSET
        Font.Color = clAqua
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 56
        Top = 16
        Width = 713
        Height = 249
        DataSource = DataModule4.DataSource4
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Edit1: TEdit
        Left = 48
        Top = 289
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'enter field name'
      end
      object Edit2: TEdit
        Left = 368
        Top = 404
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'field name '
      end
      object Edit3: TEdit
        Left = 462
        Top = 318
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 287
        Top = 313
        Width = 121
        Height = 21
        TabOrder = 4
      end
      object ComboBox1: TComboBox
        Left = 3
        Top = 372
        Width = 145
        Height = 21
        TabOrder = 5
        Text = 'select table'
        OnChange = ComboBox1Change
        Items.Strings = (
          'client '
          'workout '
          'food '
          'trainers'
          'exercises')
      end
      object delete: TButton
        Left = 287
        Top = 371
        Width = 75
        Height = 25
        Caption = 'delete'
        TabOrder = 6
        OnClick = deleteClick
      end
      object Button2: TButton
        Left = 287
        Top = 402
        Width = 75
        Height = 25
        Caption = 'edit'
        TabOrder = 7
        OnClick = Button2Click
      end
      object Button5: TButton
        Left = 72
        Top = 316
        Width = 75
        Height = 25
        Caption = 'Sort'
        TabOrder = 8
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 287
        Top = 340
        Width = 75
        Height = 25
        Caption = 'locate'
        TabOrder = 9
        OnClick = Button6Click
      end
      object Button1: TButton
        Left = 632
        Top = 392
        Width = 75
        Height = 25
        Caption = 'input'
        TabOrder = 10
        OnClick = Button1Click
      end
    end
  end
end
