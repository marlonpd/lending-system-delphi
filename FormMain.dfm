object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Lending System'
  ClientHeight = 550
  ClientWidth = 850
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 531
    Width = 850
    Height = 19
    Panels = <
      item
        Text = 'Company'
        Width = 50
      end
      item
        Text = 'Customer'
        Width = 50
      end
      item
        Text = 'Vendor'
        Width = 50
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 81
    Align = alTop
    TabOrder = 1
    object btnDashboard: TButton
      Tag = 1
      Left = 742
      Top = 1
      Width = 107
      Height = 79
      Align = alRight
      Caption = 'Net Worth'
      TabOrder = 0
      OnClick = btnMainClick
      ExplicitLeft = 750
    end
    object btnReports: TButton
      Tag = 7
      Left = 637
      Top = 1
      Width = 105
      Height = 79
      Align = alRight
      Caption = 'Reports'
      TabOrder = 1
      OnClick = btnMainClick
      ExplicitLeft = 744
    end
    object btnLists: TButton
      Tag = 2
      Left = 242
      Top = 1
      Width = 100
      Height = 79
      Align = alRight
      Caption = 'Lists'
      TabOrder = 2
      OnClick = btnMainClick
      ExplicitLeft = 349
    end
    object btnCollections: TButton
      Tag = 4
      Left = 342
      Top = 1
      Width = 95
      Height = 79
      Align = alRight
      Caption = 'Collections'
      TabOrder = 3
      OnClick = btnMainClick
      ExplicitLeft = 449
    end
    object btnPayables: TButton
      Tag = 5
      Left = 546
      Top = 1
      Width = 91
      Height = 79
      Align = alRight
      Caption = 'Payables'
      TabOrder = 4
      OnClick = btnMainClick
      ExplicitLeft = 653
    end
    object btnAging: TButton
      Tag = 6
      Left = 437
      Top = 1
      Width = 109
      Height = 79
      Align = alRight
      Caption = 'Aging'
      TabOrder = 5
      OnClick = btnMainClick
      ExplicitLeft = 544
    end
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 24
    object File1: TMenuItem
      Caption = 'File'
      object Preferences1: TMenuItem
        Caption = 'Preferences'
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
    end
    object About1: TMenuItem
      Caption = 'About'
    end
  end
end
