inherited fraDashboard: TfraDashboard
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 841
    Height = 123
    Align = alTop
    TabOrder = 1
    ExplicitTop = 24
    object Label1: TLabel
      Left = 32
      Top = 16
      Width = 66
      Height = 13
      Caption = 'cash_in_hand'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 32
      Top = 64
      Width = 65
      Height = 13
      Caption = 'cash_in_bank'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 256
      Top = 16
      Width = 63
      Height = 13
      Caption = 'other_assets'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 256
      Top = 64
      Width = 38
      Height = 13
      Caption = 'remarks'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 32
      Width = 194
      Height = 21
      DataField = 'cash_in_hand'
      DataSource = modDB.dsNetWorth
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 32
      Top = 80
      Width = 194
      Height = 21
      DataField = 'cash_in_bank'
      DataSource = modDB.dsNetWorth
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 256
      Top = 32
      Width = 194
      Height = 21
      DataField = 'other_assets'
      DataSource = modDB.dsNetWorth
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 256
      Top = 80
      Width = 194
      Height = 21
      DataField = 'remarks'
      DataSource = modDB.dsNetWorth
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 153
    Width = 841
    Height = 409
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    ExplicitTop = 38
    ExplicitHeight = 179
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 839
      Height = 34
      Align = alTop
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 35
      Width = 839
      Height = 373
      Align = alClient
      DataSource = modDB.dsNetWorth
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'timestamp'
          Title.Alignment = taCenter
          Title.Caption = 'Date'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cash_in_hand'
          Title.Alignment = taCenter
          Title.Caption = 'Cash-in-hand'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cash_in_bank'
          Title.Alignment = taCenter
          Title.Caption = 'Cash-in-bank'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'account_receivables'
          Title.Alignment = taCenter
          Title.Caption = 'Account Receivables'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'other_assets'
          Title.Alignment = taCenter
          Title.Caption = 'Other Assets'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'liabilities'
          Title.Alignment = taCenter
          Title.Caption = 'Liabilities'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'net_value'
          Title.Alignment = taCenter
          Title.Caption = 'Net value'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'variance'
          Title.Alignment = taCenter
          Title.Caption = 'Variance'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'remarks'
          Title.Alignment = taCenter
          Title.Caption = 'Remarks'
          Visible = True
        end>
    end
  end
end
