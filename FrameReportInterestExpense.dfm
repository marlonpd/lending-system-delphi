inherited fraReportInterestExpense: TfraReportInterestExpense
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 841
    Height = 473
    Align = alClient
    DataSource = modDB.dsInterestExpenseRpt
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 841
    Height = 59
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 2
    object Label1: TLabel
      Left = 696
      Top = 16
      Width = 65
      Height = 13
      Caption = 'total_interest'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 696
      Top = 32
      Width = 121
      Height = 21
      DataField = 'total_interest'
      TabOrder = 0
    end
  end
end
