inherited fraListCustomer: TfraListCustomer
  object pnlForm: TPanel
    Left = 0
    Top = 30
    Width = 841
    Height = 115
    Align = alTop
    TabOrder = 1
    DesignSize = (
      841
      115)
    object Label1: TLabel
      Left = 15
      Top = 9
      Width = 27
      Height = 13
      Caption = 'Name'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 15
      Top = 52
      Width = 39
      Height = 13
      Caption = 'Address'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 217
      Top = 9
      Width = 57
      Height = 13
      Caption = 'Contact no.'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 420
      Top = 9
      Width = 30
      Height = 13
      Caption = 'Salary'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 420
      Top = 55
      Width = 45
      Height = 13
      Caption = 'Company'
      FocusControl = DBLookupComboBox1
    end
    object BitBtn3: TBitBtn
      Left = 734
      Top = 13
      Width = 91
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Save'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFEFCECFC36465AA5556A452539F4F509A4D4D94
        4A4A8F4747894444834141783B3C783B3C7239396E3637FF00FFFF00FFCF6B6C
        F38E8FE68081AA4424473221C3B4ABC6BBB3CAC1BCCEC8C4564D489E3E339C3D
        36983931723939FF00FFFF00FFD16F70FF999AEC8687E68081715B4B473C348D
        7868EDE0D8F1E7E08F7F73A34135A2423C9C3D35783B3CFF00FFFF00FFD47576
        FF9FA0F59091EC8687715B4B000000473C34E9D9CEECDDD4857467AE4B43AA49
        44A3423C7D3E3EFF00FFFF00FFD77B7CFFA9AAFB9FA0F59394715B4B715B4B71
        5B4B715B4B7662527D6A5BBA5654B24F4CAA4944834141FF00FFFF00FFDB8384
        FFB3B4FFADAEFCA3A4F48E8FEC8687E68081DF797AD77172D16B6CC15D5CBA56
        54B2504C894444FF00FFFF00FFDF8A8BFFBBBCFFB6B7C96360C45E56BE584BB8
        523FB34D34AD4728A7411CA13B11C15D5CBA56548F4747FF00FFFF00FFE29192
        FFBDBECC6667FFFFFFFFFFFFFBF8F6F6EEEAF0E5DEEADBD2E5D1C6E1CABDA13B
        11C25D5C944A4AFF00FFFF00FFE59798FFBDBED36D6EFFFFFFFFFFFFFFFFFFFB
        F8F6F6EEEAF0E5DEEADBD2E5D1C6A7411CCC67679A4D4DFF00FFFF00FFE99E9F
        FFBDBEDC7677FFFFFFFFFFFFFFFFFFFFFFFFFBF8F6F6EEEAF0E5DEEADBD2AD47
        28D771729F4F50FF00FFFF00FFEDA6A7FFBDBEE68081FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFBF8F6F6EEEAF0E5DEB34D34DF797AA45253FF00FFFF00FFF0ACAD
        FFBDBEEF898AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F6F6EEEAB852
        3F673333AA5556FF00FFFF00FFF3B2B3FFBDBEF89293FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFBF8F6BE584BB05859B05859FF00FFFF00FFF5B6B7
        F5B6B7F3B2B3F1ADAEEEA7A8EAA1A2E79A9BE49394E08E8FDD8788DA8081D67A
        7BD37475D16F70FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentDoubleBuffered = False
      Spacing = 10
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 734
      Top = 59
      Width = 91
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000FF00FFFF00FF
        FF00FFF7F6FBC8C7E6918ECE7570C5716BC26E6AC28481C8BAB7DEF2F2F9FEFE
        FFFF00FFFF00FFFF00FFFF00FFFEFEFFE3E2F3837FC55752BA5D5AC85D57C85F
        5AC6635FCA615CC95753BB6D68BCCBC9E7FDFDFEFF00FFFF00FFFF00FFE4E4F3
        736EC05F59C55F5ACD6761C68782CBA6A3D79B99D57975CC615CCB5D57C25752
        B1CBC9E6FF00FFFF00FFF7F7FB8A86CD615CCA5F5ACD7B77C9D1CFEAFFFFFFFF
        FFFFFFFFFFADAADB5A55C3605CCE5E59C46661B7E9E8F4FF00FFC3C1E6615CC7
        605BCE7672C8E4E3F3FFFFFFFFFFFFFDFDFEB8B5DC6E6AC96A65D55C57C55E5B
        C95D58BFA5A2D5FF00FF8883D16661CF645FC4C4C2E5FFFFFFFFFFFFFFFFFFB4
        B1DA5E58BB7773E07D78DCACA9DC746FC8625DCB7772C4F2F2F97672CC645FCD
        7975C7F7F7FCFFFFFFFFFFFFB5B4DB5A56B86A65D37F79DAB7B5E4FFFFFFA29E
        D75D58C76D69C4D7D5ED7A76D26560D08380CBFFFFFFFFFFFFB1AFD75B57B863
        5DCB7D78D3B8B5E2FBFBFDFFFFFFB1AEDD5952C26D69C3D1CFEA8480DB736EE1
        7A75C9FAFAFDB9B7DC5C57BA625DCC7671CEB9B7E2F8F8FCFFFFFFFFFFFF9995
        D35B57C76C67C3D4D2EB9C98E4948FF86E68D18681C66661C35B57CC7E79D4C8
        C6E9F8F8FCFFFFFFFFFFFFECEBF6635FBF5E59CA7773C3F1F1F9D7D5F4AFA9F7
        9892F1534EC45D58C88582D6D8D5F0FCFBFEFFFFFFFFFFFFF7F7FB7974C35D58
        C8615CC8AEABDAFEFEFFFCFBFEA29CDDDED8FA8984EB615CC7B3AFDCFAFAFDFD
        FDFEF9F9FCDBDAEE7772C15A56C4635ECE7672C6F0EFF8FF00FFFF00FFD6D3EE
        B3ACE5D5CFFA8781EA6560C2716CBD8682C47873C15953BB5D5AC96460CE6B65
        C5D7D6EDFF00FFFF00FFFF00FFFF00FFE2DFF5AEA8E8A8A3F4847FEF6B66D662
        5CCA615AC96761D06A66CD807BCAD9D7EEFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFF8F8FCC7C4EDA3A0E38783D67A75CF7A76CE8E8AD1B5B2E1F9F9FCFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFAF9FEDFDEF3BDBBE4AD
        ABDFB3B1E1D2D1ECF2F1F9FF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentDoubleBuffered = False
      Spacing = 10
      TabOrder = 1
      OnClick = BitBtn4Click
    end
    object DBEdit1: TDBEdit
      Left = 15
      Top = 25
      Width = 161
      Height = 21
      DataField = 'name'
      DataSource = dsCustomer
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 15
      Top = 71
      Width = 363
      Height = 21
      DataField = 'address'
      DataSource = dsCustomer
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 217
      Top = 25
      Width = 161
      Height = 21
      DataField = 'contact_num'
      DataSource = dsCustomer
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 420
      Top = 25
      Width = 161
      Height = 21
      DataField = 'salary'
      DataSource = dsCustomer
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 420
      Top = 71
      Width = 194
      Height = 21
      DataField = 'company'
      DataSource = dsCustomer
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 184
    Width = 841
    Height = 378
    Align = alClient
    DataSource = dsCustomer
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'address'
        Title.Alignment = taCenter
        Title.Caption = 'Address'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'company'
        Title.Alignment = taCenter
        Title.Caption = 'Company'
        Width = 128
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact_num'
        Title.Alignment = taCenter
        Title.Caption = 'Contact no.'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'salary'
        Title.Alignment = taCenter
        Title.Caption = 'Salary'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'timestamp'
        Title.Alignment = taCenter
        Title.Caption = 'Date'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 841
    Height = 39
    Align = alTop
    TabOrder = 3
    DesignSize = (
      841
      39)
    object btnEdit: TBitBtn
      Left = 88
      Top = 2
      Width = 75
      Height = 34
      Caption = 'Edit'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB7A293604632
        634935634935634935634935634935634935634935634935634935684E3AFF00
        FFFF00FFFF00FFFF00FFBDA899FCFEFCE7E6E4E7E2DCE6DCD4E5D6CBE4CFC1E3
        CAB8E3C5B1E2C2ACC7AA98684E3AFF00FFFF00FFFF00FFFF00FFC6B0A1FCFEFC
        D8C4B9D6C0B5D3BCAFFAEFE6CFB3A5CCAF9FCCAF9FF6DBC8C7AA98684E3AFF00
        FFFF00FFFF00FFFF00FFCCB6A7FCFEFCFCFEFCFCFEFCFBFAF7FBF5EF75716E57
        5451000000D2C2B5CBB2A1684E3AFF00FFFF00FFFF00FFFF00FFCCB6A7FCFEFC
        DBCAC0DAC8BDD8C4B9FBFAF7A39D98FDFEFE5193A90E1216B8B1A878604DFF00
        FFFF00FFFF00FFFF00FFCCB6A7FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCA39D9888
        B7C774CEE2499AB20E12167C7266FF00FFFF00FFFF00FFFF00FFCCB6A7FCFEFC
        DBCAC0DBCAC0DBCAC0FCFEFCC1B9B44D9CB38CE0EE62BFD7499AB20E1216CEDB
        DFFF00FFFF00FFFF00FFCCB6A7FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFBF8F3D5
        CEC857A0B58CE0EE62BFD7499AB20E1216CEDBDFFF00FFFF00FFEBAC8DEAAA8C
        EAA989E9A27EE89971E68F63E58758E69265CDA99565A6B78CE0EE62BFD7499A
        B20E1216D7DFE2FF00FFEBAC8DFFC3A2FEBF9DFCBB98FBB692FAB08BF8AB84F8
        A67CF3A680D2B09E73ACB98CE0EE6CC4D97D8686353590BFC2D9EBAC8DEAAA8B
        EAAA8BEAA889E9A281E89C77E7946BE68C60E58655E68D5FCA997F7DB0BBCAB8
        AC7385D15E6CAD353590FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFDCE5E85E6CAD708FDF5E76D05E6CADFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4DA
        EE5E6CAD5E6CADE2E6F2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentDoubleBuffered = False
      Spacing = 6
      TabOrder = 0
      OnClick = btnEditClick
    end
    object btnDelete: TBitBtn
      Left = 163
      Top = 2
      Width = 75
      Height = 34
      Caption = 'Delete'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF969AF06B6AEFC6CEF2FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF3934EE241CED8A8BF1FF00FFFF00FFFF00FF6664EF3A35EEFF00FFB7A293
        634935634935674D3A705946816C5C9583755349CE332BE73C34E6C3BBC3CCC4
        BD6E65D1241CED5451EFFF00FFB7A293D9CBC2CEBDB1CCBAAFCCBBB0D0C0B6D6
        C8BFBEB5D33B33EB251DED807AED9690EB241CED241CEDFF00FFFF00FFB7A293
        FEFEFEFEFEFEFDFBFACFBEB3FDF4F0FCF3EDFCF3EDBEB7E24941EE261EED261E
        ED241CEDB0A7BCFF00FFFF00FFB7A293FEFEFEFEFEFEFEFEFED2C2B7FDF8F5FD
        F6F2FDF6F2EBE4E0BAB5F3271FED241CED9A94E9C1B7B0FF00FFFF00FFB7A293
        E0D3CAD7C6BDD5C5BAD5C5BBD7C9C0DCD0C7E2D9D29992E3322AED2E26ED6B64
        EB2C24EC9085B8FF00FFFF00FFBAA596FEFEFEFEFEFEFEFEFED9CAC0FEFEFEFE
        FCFC9A96F4362EEB3129EDBCB6F1F7EEEF5E56E52921EA9B9FF0FF00FFBEA99A
        FEFEFEFEFEFEFEFEFEDCCDC3FEFEFE8783F5362FEE372FEAD2CDF4FCF6F2FCF2
        ECD8CCC55D50B44E4BEEFF00FFC3AE9EE4D8D0DDCEC5DECEC4DDCFC6DED1C87C
        73DD4C43E6C4B9D2DDD2C9DACEC6D6C9C0D2C3B9857161FF00FFFF00FFC8B2A3
        FEFEFEFEFEFEFEFEFEDED0C6FEFEFEFEFEFEFEFEFEDCCFC5FDFCFAFDF9F6FDF5
        F0CDBDB277614FFF00FFFF00FFCCB6A7FEFEFEFEFEFEFEFEFEDFD0C8FEFEFEFE
        FEFEFEFEFEDACCC1FEFEFEFDFBFAFDF8F4CBBAAD6D5542FF00FFFF00FFEAAA8B
        EAAA8BEAAA8BE9A685EAA27EE89B74E7946BE78E61E58454E47C48E3763FE375
        3DE2743BC96431FF00FFFF00FFEAAA8BFFC2A2FEC09FFDBD9AFCBA97FBB691FA
        B18DF9AC86F8A87FF6A378F59E72F5996AF39565CD6531FF00FFFF00FFEAAA8B
        EAAA8BEAAA8BEAAA8BEAA686E9A17FE89B76E7946CE68E62E58758E4814EE47B
        46E3763EE27239FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentDoubleBuffered = False
      Spacing = 6
      TabOrder = 1
      OnClick = btnDeleteClick
    end
    object btnNew: TBitBtn
      Left = 13
      Top = 2
      Width = 75
      Height = 34
      Caption = 'New'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFB7A293604632654B376349356349356349
        35634935634935684E3AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD
        A899FCFEFCECEBE9EAE6E0E8DBD2E7D5C9E7D1C1D7C2B36A513DFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFC6B0A1FCFEFCDBCAC0DAC8BDFBFAF7D3BC
        AFD2BAACDFD0C46C533FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC
        B6A7FCFEFCFCFEFCFCFEFCFCFEFCFBFAF7FBF4EEE3D5CC6C533FFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFCCB6A7FCFEFCDBCAC0DBCAC0FCFEFCD8C4
        B9D9C4B9E7DDD56C533FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCC
        B6A7FCFEFCFCFEFCFCFEFCFCFEFCFCFEFCFBFAF7F7E8DF6A503CFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFEBAC8DEAAA8CEAA989E9A27EE68F63E585
        55E37B47E37339CE6936FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEB
        AC8DFFC3A2FEBF9DFCBB98FAB08BF9AB83F8A67CF59768D3713EFF00FFFF00FF
        107088125C6D114A5D124456FF00FFEBAC8DEAAA8BEAAA8BEAA889E89C77E794
        6BE68C60E37740E3763FFF00FFFF00FF21889A48D7EC20B8D30C242AFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF139AC61E98B6
        1E92AD65E7F73DD4EE0F52670D313E0E3C4FFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF39AFD0A4F0FC8BEBF985F0F962EBFB43D8F130BED610
        4755FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF59B6D5D2FBFD
        CAF9FCADF6FB7DF2FC58E0F446D5EA1C697CFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF57BADE68C2DD45C0CFC0F8FD82ECFB29A1B616829012
        768DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        62BDDACFF9FDABF4FC2FA8C6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF61BDE059B9D93DAFD021A4CAFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentDoubleBuffered = False
      Spacing = 6
      TabOrder = 2
      OnClick = btnNewClick
    end
    object edtSearchKey: TEdit
      Left = 710
      Top = 9
      Width = 121
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'Search'
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = edtSearchKeyChange
    end
  end
  object dsCustomer: TDataSource
    DataSet = modDB.qryCustomer
    Left = 256
    Top = 272
  end
end
