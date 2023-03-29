inherited fraLists: TfraLists
  inherited pnlTitle: TPanel
    Height = 25
    ExplicitHeight = 25
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 121
    Height = 537
    Align = alLeft
    TabOrder = 1
    object btnVendor: TButton
      Tag = 22
      Left = 1
      Top = 129
      Width = 119
      Height = 64
      Align = alTop
      Caption = 'Vendor'
      TabOrder = 0
      OnClick = btnMainClick
    end
    object btnCompany: TButton
      Tag = 21
      Left = 1
      Top = 65
      Width = 119
      Height = 64
      Align = alTop
      Caption = 'Customer'
      TabOrder = 1
      OnClick = btnMainClick
    end
    object btnCustomer: TButton
      Tag = 20
      Left = 1
      Top = 1
      Width = 119
      Height = 64
      Align = alTop
      Caption = 'Company'
      TabOrder = 2
      OnClick = btnMainClick
    end
  end
end
