object Form1: TForm1
  Left = 610
  Top = 397
  Width = 526
  Height = 219
  Caption = 'Odliczanie'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 489
    Height = 37
    Alignment = taCenter
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 8
  end
  object TrayIcon1: TTrayIcon
    Visible = True
    Hide = True
    RestoreOn = imDoubleClick
    PopupMenuOn = imNone
    OnClick = TrayIcon1Click
    Left = 80
    Top = 24
  end
end
