object Form1: TForm1
  Left = 229
  Top = 244
  Width = 870
  Height = 640
  Caption = 'My_notepad'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = OnClose
  PixelsPerInch = 96
  TextHeight = 13
  object tresc: TMemo
    Left = 0
    Top = 0
    Width = 854
    Height = 581
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyDown = OnKeyDown
  end
  object MainMenu1: TMainMenu
    Left = 792
    Top = 16
    object Plik1: TMenuItem
      Caption = '&Plik'
      object Nowy1: TMenuItem
        Caption = '&Nowy    Ctrl+N'
        OnClick = Nowy1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Otwrz1: TMenuItem
        Caption = '&Otw'#243'rz'
        OnClick = Otwrz1Click
      end
      object Zapisz1: TMenuItem
        Caption = 'Za&pisz Ctrl+S'
        OnClick = Zapisz1Click
      end
      object Zapiszjako1: TMenuItem
        Caption = 'Zapi&sz jako'
        OnClick = Zapiszjako1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object ZA1: TMenuItem
        Caption = 'Zako'#324'&cz'
        OnClick = ZA1Click
      end
    end
    object Edycja1: TMenuItem
      Caption = '&Edycja'
      object WytnijCtrX1: TMenuItem
        Caption = 'W&ytnij    Ctrl+X'
        OnClick = WytnijCtrX1Click
      end
      object Kopu1: TMenuItem
        Caption = 'Kop&iuj Ctrl+C'
        OnClick = Kopu1Click
      end
      object WklejCtrV1: TMenuItem
        Caption = 'Wkle&j Ctrl+V'
        OnClick = WklejCtrV1Click
      end
    end
    object Format1: TMenuItem
      Caption = '&Format'
      object Zawijaniewierszy1: TMenuItem
        Caption = 'Z&awijanie wierszy'
        Checked = True
        OnClick = Zawijaniewierszy1Click
      end
      object Czcionka1: TMenuItem
        Caption = 'Cz&cionka'
        OnClick = Czcionka1Click
      end
    end
    object Pomoc1: TMenuItem
      Caption = 'P&omoc'
      object Informacje1: TMenuItem
        Caption = 'I&nformacje'
        object Oprogramie1: TMenuItem
          Caption = 'O p&rogramie'
          OnClick = Oprogramie1Click
        end
        object Informacjenablogu1: TMenuItem
          Caption = 'Informacje na blo&gu'
          OnClick = Informacjenablogu1Click
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = ' Pliki tekstowe (TXT)|*.txt|Wszystkie pliki|*.*'
    Left = 760
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Plik tekstowy (TXT)|*.txt|Dowolny plik|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 728
    Top = 16
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 696
    Top = 16
  end
end
