inherited fraPayables: TfraPayables
  object Splitter1: TSplitter [0]
    Left = 225
    Top = 30
    Width = 7
    Height = 532
    ExplicitTop = 25
    ExplicitHeight = 537
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 225
    Height = 532
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 223
      Height = 30
      Align = alTop
      Caption = 'Vendor'
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = [fsItalic]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 31
      Width = 223
      Height = 500
      Align = alClient
      DataSource = modDB.dsDSetVendor
      TabOrder = 1
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
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'address'
          Title.Alignment = taCenter
          Title.Caption = 'Address'
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 232
    Top = 30
    Width = 609
    Height = 532
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 1
      Top = 265
      Width = 607
      Height = 12
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = 5
      ExplicitTop = 261
      ExplicitWidth = 605
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 607
      Height = 264
      Align = alTop
      TabOrder = 0
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 605
        Height = 29
        Align = alTop
        Caption = 'Payables'
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = [fsItalic]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 177
        Width = 605
        Height = 86
        Align = alClient
        DataSource = modDB.dsDSetPayables
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'payable_id'
            Title.Alignment = taCenter
            Title.Caption = 'Payable no.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'amount'
            Title.Alignment = taCenter
            Title.Caption = 'Amount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'timestamp'
            Title.Alignment = taCenter
            Title.Caption = 'Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'balance'
            Title.Alignment = taCenter
            Title.Caption = 'Balance'
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
      object Panel10: TPanel
        Left = 1
        Top = 137
        Width = 605
        Height = 40
        Align = alTop
        TabOrder = 2
        object BitBtn2: TBitBtn
          Left = 14
          Top = 4
          Width = 75
          Height = 32
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
          TabOrder = 0
          OnClick = BitBtn2Click
        end
      end
      object pnlFormSlLoan: TPanel
        Left = 1
        Top = 30
        Width = 605
        Height = 107
        Align = alTop
        TabOrder = 3
        Visible = False
        DesignSize = (
          605
          107)
        object Label1: TLabel
          Left = 32
          Top = 24
          Width = 36
          Height = 13
          Caption = 'amount'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 32
          Top = 62
          Width = 38
          Height = 13
          Caption = 'remarks'
          FocusControl = DBEdit2
        end
        object BitBtn3: TBitBtn
          Left = 490
          Top = 16
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
          Left = 490
          Top = 64
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
          Left = 32
          Top = 40
          Width = 194
          Height = 21
          DataField = 'amount'
          DataSource = modDB.dsDSetPayables
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 32
          Top = 81
          Width = 217
          Height = 21
          DataField = 'remarks'
          DataSource = modDB.dsDSetPayables
          TabOrder = 3
        end
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 277
      Width = 607
      Height = 254
      Align = alClient
      TabOrder = 1
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 605
        Height = 30
        Align = alTop
        Caption = 'Payment'
        Color = clSilver
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = [fsItalic]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 173
        Width = 605
        Height = 80
        Align = alClient
        DataSource = modDB.dsDSetPayablePayments
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'payment_id'
            Title.Alignment = taCenter
            Title.Caption = 'Payment no.'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'timestamp'
            Title.Alignment = taCenter
            Title.Caption = 'Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'amount'
            Title.Alignment = taCenter
            Title.Caption = 'Amount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'balance'
            Title.Alignment = taCenter
            Title.Caption = 'Balance'
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
      object pnlFormSlPayment: TPanel
        Left = 1
        Top = 31
        Width = 605
        Height = 98
        Align = alTop
        TabOrder = 2
        Visible = False
        DesignSize = (
          605
          98)
        object Label3: TLabel
          Left = 16
          Top = 16
          Width = 36
          Height = 13
          Caption = 'amount'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 16
          Top = 56
          Width = 38
          Height = 13
          Caption = 'remarks'
          FocusControl = DBEdit4
        end
        object BitBtn5: TBitBtn
          Left = 490
          Top = 6
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
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 490
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
          OnClick = BitBtn6Click
        end
        object DBEdit3: TDBEdit
          Left = 16
          Top = 29
          Width = 194
          Height = 21
          DataField = 'amount'
          DataSource = modDB.dsDSetPayablePayments
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 16
          Top = 72
          Width = 300
          Height = 21
          DataField = 'remarks'
          DataSource = modDB.dsDSetPayablePayments
          TabOrder = 3
        end
      end
      object Panel9: TPanel
        Left = 1
        Top = 129
        Width = 605
        Height = 44
        Align = alTop
        TabOrder = 3
        object BitBtn1: TBitBtn
          Left = 14
          Top = 6
          Width = 75
          Height = 33
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
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
    end
  end
end
