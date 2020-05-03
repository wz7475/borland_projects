object Form1: TForm1
  Left = 310
  Top = 500
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'K'#243#322'ko i krzy'#380'yk'
  ClientHeight = 441
  ClientWidth = 852
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pole1: TImage
    Left = 80
    Top = 72
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole1Click
  end
  object Label1: TLabel
    Left = 448
    Top = 120
    Width = 182
    Height = 37
    Caption = 'Tura gracza:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object tura: TImage
    Left = 648
    Top = 120
    Width = 30
    Height = 30
  end
  object pole3: TImage
    Left = 272
    Top = 72
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole3Click
  end
  object pole2: TImage
    Left = 176
    Top = 72
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole2Click
  end
  object pole4: TImage
    Left = 80
    Top = 168
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole4Click
  end
  object pole6: TImage
    Left = 272
    Top = 168
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole6Click
  end
  object pole5: TImage
    Left = 176
    Top = 168
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole5Click
  end
  object pole7: TImage
    Left = 80
    Top = 264
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole7Click
  end
  object pole9: TImage
    Left = 272
    Top = 264
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole9Click
  end
  object pole8: TImage
    Left = 176
    Top = 264
    Width = 100
    Height = 100
    Cursor = crHandPoint
    OnClick = pole8Click
  end
  object Label2: TLabel
    Left = 656
    Top = 200
    Width = 138
    Height = 29
    Caption = 'Kto zaczyna: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object tura_label: TLabel
    Left = 496
    Top = 176
    Width = 64
    Height = 24
    Caption = 'runda:  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object numer_label: TLabel
    Left = 560
    Top = 176
    Width = 10
    Height = 24
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object o_picture: TImage
    Left = 592
    Top = 56
    Width = 30
    Height = 30
  end
  object x_picture: TImage
    Left = 728
    Top = 56
    Width = 30
    Height = 30
  end
  object wynik_o: TLabel
    Left = 632
    Top = 56
    Width = 17
    Height = 36
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -31
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object wynik_x: TLabel
    Left = 696
    Top = 56
    Width = 17
    Height = 36
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -31
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object dwukropek: TLabel
    Left = 672
    Top = 56
    Width = 8
    Height = 29
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object wynik: TLabel
    Left = 648
    Top = 32
    Width = 49
    Height = 25
    Caption = 'wynik'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 472
    Top = 256
    Width = 145
    Height = 81
    Cursor = crHandPoint
    Caption = 'Nowa gra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = FormCreate
  end
  object radio3: TRadioButton
    Left = 664
    Top = 312
    Width = 129
    Height = 17
    Cursor = crHandPoint
    Caption = 'k'#243#322'ko'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object radio4: TRadioButton
    Left = 664
    Top = 344
    Width = 129
    Height = 17
    Cursor = crHandPoint
    Caption = 'krzy'#380'yk'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object radio1: TRadioButton
    Left = 664
    Top = 248
    Width = 129
    Height = 17
    Cursor = crHandPoint
    Caption = 'losowo'
    Checked = True
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    TabStop = True
  end
  object radio2: TRadioButton
    Left = 664
    Top = 280
    Width = 129
    Height = 17
    Cursor = crHandPoint
    Caption = 'naprzeminnie'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object radio5: TRadioButton
    Left = 664
    Top = 376
    Width = 129
    Height = 17
    Cursor = crHandPoint
    Caption = 'przegrywaj'#261'cy'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
  end
  object Button2: TButton
    Left = 488
    Top = 368
    Width = 121
    Height = 33
    Caption = 'Reset wyniku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 16
    Width = 89
    Height = 25
    Cursor = crHandPoint
    Caption = 'O programie'
    TabOrder = 7
    OnClick = Button3Click
  end
end
