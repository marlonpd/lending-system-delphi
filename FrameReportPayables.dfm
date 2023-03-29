inherited fraReportPayables: TfraReportPayables
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 841
    Height = 457
    Align = alClient
    DataSource = modDB.dsPayablesRpt
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'vendor'
        Title.Alignment = taCenter
        Title.Caption = 'Vendor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_balance'
        Title.Alignment = taCenter
        Title.Caption = 'Balance'
        Width = 387
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
      Left = 688
      Top = 16
      Width = 65
      Height = 13
      Caption = 'total_balance'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 688
      Top = 32
      Width = 121
      Height = 21
      DataField = 'total_balance'
      TabOrder = 0
    end
  end
end
