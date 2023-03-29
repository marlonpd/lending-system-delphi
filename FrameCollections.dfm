inherited fraCollections: TfraCollections
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 121
    Height = 532
    Align = alLeft
    TabOrder = 1
    object btnDiminishing: TButton
      Tag = 41
      Left = 1
      Top = 65
      Width = 119
      Height = 64
      Align = alTop
      Caption = 'Diminishing'
      TabOrder = 0
      OnClick = btnMainClick
    end
    object btnStraightline: TButton
      Tag = 40
      Left = 1
      Top = 1
      Width = 119
      Height = 64
      Align = alTop
      Caption = 'Straight-line'
      TabOrder = 1
      OnClick = btnMainClick
    end
  end
end
