inherited fraReportInterestIncome: TfraReportInterestIncome
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 841
    Height = 457
    Align = alClient
    DataSource = modDB.dsInterestIncomeRpt
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'company'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_balance'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 841
    Height = 75
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 2
    object Label1: TLabel
      Left = 712
      Top = 16
      Width = 65
      Height = 13
      Caption = 'total_balance'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 712
      Top = 32
      Width = 113
      Height = 21
      DataField = 'total_balance'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = modDB.qryInterestIncomeTotal
    Left = 408
    Top = 264
  end
end
