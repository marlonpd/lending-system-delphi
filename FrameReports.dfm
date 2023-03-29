inherited fraReports: TfraReports
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 121
    Height = 532
    Align = alLeft
    TabOrder = 1
    object btnInterestExpense: TButton
      Tag = 73
      Left = 1
      Top = 193
      Width = 119
      Height = 64
      Align = alTop
      Caption = 'Interest Expense'
      TabOrder = 0
      OnClick = btnMainClick
    end
    object btnInterestIncome: TButton
      Tag = 71
      Left = 1
      Top = 65
      Width = 119
      Height = 64
      Align = alTop
      Caption = 'Interest Income'
      TabOrder = 1
      OnClick = btnMainClick
    end
    object btnRecievables: TButton
      Tag = 70
      Left = 1
      Top = 1
      Width = 119
      Height = 64
      Align = alTop
      Caption = 'Recievables'
      TabOrder = 2
      OnClick = btnMainClick
    end
    object btnPayables: TButton
      Tag = 72
      Left = 1
      Top = 129
      Width = 119
      Height = 64
      Align = alTop
      Caption = 'Payables'
      TabOrder = 3
      OnClick = btnMainClick
    end
  end
end
