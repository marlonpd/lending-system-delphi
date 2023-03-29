inherited fraReportReceivables: TfraReportReceivables
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 841
    Height = 465
    Align = alClient
    DataSource = modDB.dsReceivablesRpt
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
        Width = 341
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 841
    Height = 67
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 2
    object Label1: TLabel
      Left = 680
      Top = 8
      Width = 65
      Height = 13
      Caption = 'total_balance'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 680
      Top = 24
      Width = 129
      Height = 21
      DataField = 'total_balance'
      TabOrder = 0
    end
  end
end
