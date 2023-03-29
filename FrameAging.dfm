inherited fraAging: TfraAging
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 841
    Height = 51
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 841
    Height = 481
    Align = alClient
    DataSource = modDB.dsAging
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'loan_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'customer'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'principal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'interest'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'balance'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'last_payment_date'
        Visible = True
      end>
  end
end
