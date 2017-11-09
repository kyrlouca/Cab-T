object V_MawbFRM: TV_MawbFRM
  Left = 219
  Top = 45
  BorderStyle = bsSingle
  Caption = 'Mawb'
  ClientHeight = 851
  ClientWidth = 1190
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Panel5: TRzPanel
    Left = 0
    Top = 0
    Width = 1190
    Height = 51
    Align = alTop
    BorderOuter = fsGroove
    Caption = ' Master Airway Bill (Mawb)'
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -23
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel8: TRzPanel
      Left = 950
      Top = 2
      Width = 238
      Height = 47
      Align = alRight
      Alignment = taRightJustify
      BorderOuter = fsNone
      Color = clInfoBk
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -23
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 729
      Top = -7
      Width = 71
      Height = 58
      Lines.Strings = (
        'Mem'
        'o1')
      TabOrder = 1
      Visible = False
    end
  end
  object MawbPC: TPageControl
    Left = 0
    Top = 51
    Width = 1190
    Height = 800
    ActivePage = MawbDetailsTS
    Align = alClient
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabHeight = 30
    TabOrder = 1
    OnChanging = MawbPCChanging
    object MawbDetailsTS: TTabSheet
      Caption = 'Mawb Details'
      OnEnter = MawbDetailsTSEnter
      OnExit = MawbDetailsTSExit
      object Panel1: TPanel
        Left = 0
        Top = 154
        Width = 1182
        Height = 239
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object PortsPNL: TGroupBox
          Left = 252
          Top = 112
          Width = 189
          Height = 106
          Caption = 'Ports'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label17: TLabel
            Left = 14
            Top = 20
            Width = 35
            Height = 15
            Caption = 'Import'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object Label14: TLabel
            Left = 11
            Top = 48
            Width = 38
            Height = 15
            Caption = 'Station'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object ImportPortFLD: TwwDBComboBox
            Left = 54
            Top = 17
            Width = 121
            Height = 23
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ShowMatchText = True
            DataField = 'FK_PORT_IMPORTATION'
            DataSource = V_MawbDataDML.MawbSRC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
          end
          object ClearingStationFLD: TwwDBComboBox
            Left = 54
            Top = 45
            Width = 121
            Height = 23
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ShowMatchText = True
            DataField = 'FK_PORT_CLEARING'
            DataSource = V_MawbDataDML.MawbSRC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
          end
        end
        object PassedPNL: TGroupBox
          Left = 465
          Top = 4
          Width = 227
          Height = 107
          Caption = 'Passed'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Label5: TLabel
            Left = 14
            Top = 47
            Width = 45
            Height = 15
            AutoSize = False
            Caption = 'On Date'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object Label11: TLabel
            Left = 16
            Top = 18
            Width = 43
            Height = 15
            Caption = 'Passed'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object PassedFLD: TwwDBComboBox
            Left = 65
            Top = 17
            Width = 50
            Height = 23
            ShowButton = True
            Style = csDropDownList
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ShowMatchText = True
            DataField = 'PASSED'
            DataSource = V_MawbDataDML.MawbSRC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'No'#9'N'
              'Yes'#9'Y')
            ParentFont = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
          end
          object DatePassedFLD: TwwDBDateTimePicker
            Left = 65
            Top = 43
            Width = 90
            Height = 23
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'Arial'
            CalendarAttributes.Font.Style = []
            DataField = 'DATE_PASSED'
            DataSource = V_MawbDataDML.MawbSRC
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 1
            DisplayFormat = 'dd/mm/yyyy'
          end
        end
        object MawbPNL: TGroupBox
          Left = 8
          Top = 4
          Width = 235
          Height = 106
          Caption = 'MAWB Reference'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 20
            Top = 21
            Width = 57
            Height = 15
            Caption = 'Reference'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label3: TLabel
            Left = 23
            Top = 46
            Width = 54
            Height = 15
            Caption = 'MAWB No'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label13: TLabel
            Left = 31
            Top = 77
            Width = 46
            Height = 15
            Caption = 'Rotation'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object ReferenceFld: TwwDBEdit
            Left = 83
            Top = 17
            Width = 95
            Height = 23
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'REFERENCE_NUMBER'
            DataSource = V_MawbDataDML.MawbSRC
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object MawbYearFld: TwwDBEdit
            Left = 184
            Top = 17
            Width = 37
            Height = 23
            TabStop = False
            DataField = 'REFERENCE_YEAR'
            DataSource = V_MawbDataDML.MawbSRC
            Enabled = False
            ReadOnly = True
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object MawbFLD: TwwDBEdit
            Left = 83
            Top = 45
            Width = 95
            Height = 23
            CharCase = ecUpperCase
            DataField = 'MAWB_ID'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Picture.PictureMask = '*11#'
            Picture.AutoFill = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object RotationFLD: TwwDBEdit
            Left = 83
            Top = 74
            Width = 57
            Height = 23
            DataField = 'ROTATION_NUMBER'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
            OnKeyDown = RotationFLDKeyDown
          end
          object Rotation_2FLD: TwwDBEdit
            Left = 146
            Top = 74
            Width = 19
            Height = 23
            DataField = 'ROTATION_2'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object RotationYearFLD: TwwDBEdit
            Left = 184
            Top = 74
            Width = 34
            Height = 23
            TabStop = False
            DataField = 'ROTATION_YEAR'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object AirportPNL: TGroupBox
          Left = 252
          Top = 4
          Width = 189
          Height = 106
          Caption = 'Airport Details'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label10: TLabel
            Left = 18
            Top = 21
            Width = 30
            Height = 15
            Caption = 'Flight'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label4: TLabel
            Left = 15
            Top = 47
            Width = 33
            Height = 15
            Caption = 'Arrival'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object ArrivalDateFLD: TwwDBDateTimePicker
            Left = 54
            Top = 45
            Width = 122
            Height = 23
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'Arial'
            CalendarAttributes.Font.Style = []
            DataField = 'DATE_ARRIVED'
            DataSource = V_MawbDataDML.MawbSRC
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 1
            DisplayFormat = 'dd/mm/yyyy'
          end
          object FlightsDLG: TwwDBComboBox
            Left = 54
            Top = 17
            Width = 121
            Height = 23
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            AutoDropDown = True
            ShowMatchText = True
            DataField = 'FLIGHT_NUMBER'
            DataSource = V_MawbDataDML.MawbSRC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
          end
        end
        object MawbDetails: TGroupBox
          Left = 8
          Top = 112
          Width = 235
          Height = 106
          Caption = 'Mawb Details'
          Color = clBtnFace
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          object a: TLabel
            Left = 4
            Top = 23
            Width = 75
            Height = 15
            Alignment = taRightJustify
            Caption = 'Cons Country'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label8: TLabel
            Left = 28
            Top = 48
            Width = 51
            Height = 15
            Caption = 'Signatory'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            WordWrap = True
          end
          object Label9: TLabel
            Left = 21
            Top = 76
            Width = 58
            Height = 15
            Caption = 'Form Date'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object SignatoryFLD: TwwDBEdit
            Left = 85
            Top = 45
            Width = 141
            Height = 23
            DataField = 'SIGNATORY_NAME'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object FormDateDLG: TwwDBDateTimePicker
            Left = 85
            Top = 73
            Width = 95
            Height = 23
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'Arial'
            CalendarAttributes.Font.Style = []
            DataField = 'FORM_DATE'
            DataSource = V_MawbDataDML.MawbSRC
            Epoch = 1950
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 2
            DisplayFormat = 'dd/mm/yyyy'
          end
          object CountryFLD: TwwDBComboBox
            Left = 85
            Top = 17
            Width = 141
            Height = 23
            ShowButton = True
            Style = csDropDown
            MapList = True
            AllowClearKey = False
            AutoDropDown = True
            ShowMatchText = True
            DataField = 'FK_COUNTRY_CONSIGNEE'
            DataSource = V_MawbDataDML.MawbSRC
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            ParentFont = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
          end
        end
        object EditHawbBTN: TButton
          Left = 1047
          Top = 163
          Width = 60
          Height = 20
          Caption = 'Edit Hawb'
          TabOrder = 5
          Visible = False
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 715
        Width = 1182
        Height = 45
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object AcceptBTN: TBitBtn
          Left = 5
          Top = 5
          Width = 77
          Height = 37
          Caption = 'Accept'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF05793AEDF8F2FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E8245
            63CE9D108447EFF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF0D844472D1A76DD0A466CE9F0F8747E8F4ECFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF0D864480D7B07ED5AE76D2A96DD0A465CD9F108947EBF6EEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF04823D8FDAB98FDAB986D8B37DD5AE74D2A86ACF
            A261CC9D0F8B48EEF7F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0C88469CDFC19FE0C398DDBF8EDBB8
            85D7B27AD4AB6FD1A665CE9F5CCB9A0F8D4AEEF7F1FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF098C47A5E1C6ADE4CCA7
            E2C89FDFC395DCBC8AD9B67ED6AE72D1A868CEA05ECB9A57C9970E904CCBE3CC
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF099048A7E2
            C8B8E7D2B5E6D0AEE4CCA4E1C699DDBF26B46688D9B475D2A96ACFA260CC9B57
            C99651C794048C41D5E9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            079347A1E1C4B8E7D2BEE9D6B7E7D3AFE5CDA3E0C60D964AFFFFFF1FAD5F83D7
            B26BD0A260CC9C58C99651C89351C7930E974DDAECDBFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF0291438FDBB9AEE4CCB4E6D0B8E7D2B5E6D0A7E2C80B974BFFFFFF
            FFFFFFFFFFFF1FAD5F7CD5AD60CC9C57CA9651C89350C79251C7920E984EDDEE
            DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF19A359A0E0C3AEE4CCB0E4CDA4E1C51D
            A35BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B16373D1A856C99650C7924FC791
            4FC79251C791119C51DEEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CA75C9DDF
            C2A6E2C7109F51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF23B1636B
            D0A24FC7924FC79250C79250C79250C791139E53E3F2E5FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF1AA85A16A557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF24B36563CD9E50C7924FC79250C79250C79251C7920C9B4DFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20AF615FCC9A4FC79250C79251C8
            93088D46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1BAA5C
            5ACA9853C8940A964BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF11A052139F53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 0
          OnClick = AcceptBTNClick
        end
        object Panel4: TPanel
          Left = 947
          Top = 2
          Width = 233
          Height = 41
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object CloseBTN: TBitBtn
            Left = 150
            Top = 3
            Width = 78
            Height = 37
            Caption = 'Close'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFF0004450004450004450004450004450004450004450004450004450004
              45000445000445000445000445000445000445000445000445FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000A4D3461A53F70B44B7DC15789CE5F91D66396DB
              6396DB6396DB6598DD6295DA6295DA5D90D55688CD4C7EC24374B83765A9000A
              4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0011563B6DB14174B84B7EC256
              89CE5E91D66396DB6396DB6396DB6598DD6295DA6295DA5D90D55689CE4D80C4
              4477BB3E70B4001156FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0018613869
              AE3366A72B5EA22B5EA22B5EA22B5EA22B5EA2497CCE6396DB3164A52B5EA22B
              5EA22B5EA22B5EA22D60A43869AE001861FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF001F6A3A6CB02C5FA32B5EA22B5EA22B5EA22B5EA22B5EA24779CA6093
              D8295CA02B5EA22B5EA22B5EA22B5EA22E61A53A6CB0001F6AFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF00226D3B6DB128579B2B5EA22B5EA22B5EA22B5EA2
              2B5EA24274C45B8ED42554982B5EA22B5EA22B5EA22B5EA22E61A53B6DB10022
              6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0024703D6FB42451952B5EA22B
              5EA22B5EA22B5EA22B5EA23F70BE578ACF214E922B5EA22B5EA22B5EA22B5EA2
              2E61A53D6FB4002470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0026723E70
              B51E498E2A5CA02B5EA22B5EA22B5EA22B5EA23B6BB95285CB1D478C2A5CA02B
              5EA22B5EA22B5EA22D60A43E70B5002672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0028754072B7183F842451962B5EA22B5EA22B5EA22B5EA23766B44E81
              C7173D812451962B5EA22B5EA22B5EA22D60A44072B7002875FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF002A784274B9133479193F84224F9328599D2B5EA2
              2B5EA23463AF4A7DC2113176193F84224F9328599D2B5EA22E61A54274B9002A
              78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002C7A4376BB0C296F0F307415
              3A7E1A43871D488C214F933261AD487BC00B276B0F3074153A7E1A43871D488C
              2451964376BB002C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002E7D4578
              BD477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF47
              7ABF477ABF477ABF142669142669002E7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF002F7F477ABF3260AC3260AC3160AC325FAB325FAC3160AB3463AE477A
              BF3260AC3260AC3160AB325FAC3160AB3166B45287D1002F7FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF003182497CC13265A6285B9F285B9F285B9F285B9F
              285B9F3462AF4A7DC22E61A2285B9F285B9F285B9F285B9F70A3EB84B7FC0031
              82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033844B7EC3295CA0275A9E27
              5A9E275A9E275A9E275A9E3A6AB85184CA26589C275A9E275A9E275A9E275A9E
              2B5EA24B7EC3003384FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0035864D80
              C525549826599D26599D26599D26599D26599D4172C2598CD2214F9326599D26
              599D26599D26599D2B5EA24D80C5003586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0036894E81C7204D9125589C25589C25589C25589C25589C497BCE6295
              DB1D488C25589C25589C25589C25589C2A5DA14E81C7003689FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF00388B5083C91C458A23559924579B24579B24579B
              24579B5286DC6C9FE518418423559924579B24579B24579B295CA05083C90038
              8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00398C5084CA163C7F1D4A8D23
              569A23569A23569A23569A5B90E675A8ED1337791D4A8D23569A23569A23569A
              295CA05084CA00398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003B8E5286
              CC0F2F7213397A1A478A1F5094225599225599629AF17DB0F50C2A6B13397A1A
              478A1F5094225599285B9F5286CC003B8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF003C905387CD0A266A0C2869123576153D7F1942851C488B67A0F882B5
              FA0722620C2A6B123576153D7F174083214E925387CD003C90FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF003D91598DD25F92D7699CE174A7EC7DB0F584B7FC
              84B7FC84B7FC82B5FA82B5FA82B5FA7CAFF473A6EB6A9DE26194D95B8FD4003D
              91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003E935085CC5D91D7689CE173
              A6EC7EB1F684B7FC84B7FC84B7FC82B5FA82B5FA82B5FA7BAEF373A6EC699DE2
              6093D95388CF003E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F94003F
              94003F94003F94003F94003F94003F94003F94003F94003F94003F94003F9400
              3F94003F94003F94003F94003F94003F94FFFFFFFFFFFFFFFFFF}
            ParentFont = False
            TabOrder = 0
            OnClick = CloseBTNClick
          end
        end
        object SendBTN: TBitBtn
          Left = 449
          Top = 5
          Width = 112
          Height = 36
          Caption = 'Send D/O Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFB39E81B29C7EAF997BAF9879AF997BAF997BAF997BAF997BAF997B
            AF997BAF997BAF997BAF997BAF997BAF997BAF997BAF997BAF997BAF997BAF98
            79AF997BAF997BFFFFFFFFFFFFB19B7DFFFFFFFBFAF9F7F4F1F7F4F1F3F0EBF1
            EDE7EDE8E1EDE8E1EDE8E1EFEAE3EFEAE3EEE9E2EEE9E2EFEAE3F1EEE9F3F0EB
            F5F3EFF5F3EFF7F5F3FFFFFFAD9777FFFFFFFFFFFFAF9879FFFFFFFFFFFFE0D8
            CCE5DDD3E8E1D8E7E0D7E7E0D7E8E1D8E8E1D8E8E1D8E7E0D7E7E0D7E7E0D7E8
            E1D8E8E1D8E7E0D7E5DDD3E2DACEFFFFFFFFFFFFAA9270FFFFFFFFFFFFAE9778
            FFFFFFF3F0EBFFFFFFE2DACEE6DED5E7E0D7E6DFD6E6DFD6E7E0D7E8E2D9E9E3
            DBE7E0D7E7E0D7E6DFD6E6DFD6E6DED5E2DBCFFFFFFFF5F3EFFFFFFFA8906EFF
            FFFFFFFFFFAE9778FFFFFFE6DED5F4F1ECFFFFFFE8E1D8E9E3DBEAE4DCEEE9E2
            F1EEE9EDE8E1EEE9E2F0ECE6EDE8E1EAE4DCE9E3DBE6DED5FFFFFFF5F3EFE8E1
            D8FFFFFFA8906EFFFFFFFFFFFFAE9778FFFFFFEFEBE5E8E1D8F4F1ECFFFFFFEB
            E5DDF4F1ECF4F2EECFC2AFB9A68BBCAA90D0C3B0F4F1ECF4F1ECECE6DFFFFFFF
            F7F5F3E9E3DBEFEAE3FFFFFFA8906EFFFFFFFFFFFFAE9778FFFFFFF4F2EEF1EE
            E9ECE7E0F7F5F3FFFFFFEDE8E1BCA98FD3C6B5FFFFFFFFFFFFD5C9B9BFAD93FF
            FFFFFFFFFFFAF8F6ECE7E0F1EDE7F2EFEAFFFFFFA8906EFFFFFFFFFFFFAE9778
            FFFFFFF8F6F4F4F2EEFAF8F6FDFCFBDFD7CBC7B8A3E7E0D7FFFFFFE2DBCFE2DA
            CEFFFFFFE8E1D8CCBEAAE2DACEFAF9F7FAF8F6F5F3EFF6F3F0FFFFFFA8906EFF
            FFFFFFFFFFAE9778FFFFFFFEFDFDFEFDFDF8F6F4CDBFABC6B6A0FFFFFFFFFFFF
            ECE6DFF2EFEAF0ECE6ECE7E0FFFFFFFFFFFFCDBFABD0C3B0F7F5F3FFFFFFFBFA
            F9FFFFFFA8906EFFFFFFFFFFFFAE9778FFFFFFFFFFFFEFEBE5C9BAA5FFFFFFFF
            FFFFFEFDFDF8F6F4FBFAF9FAF9F7FAF9F7FAF9F7F8F6F4FEFDFDFFFFFFDFD7CB
            CBBDA9F1EDE7FFFFFFFFFFFFA8906EFFFFFFFFFFFFAF9879FFFFFFF5F3EFDBD1
            C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF5F3EFDDD4C7F4F1ECFFFFFFA9916FFFFFFFFFFFFFB19B7D
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD9777FF
            FFFFFFFFFFB39E81B29C7EAF997BAF9879AF9879AF9879AE9778AE9778AE9778
            AE9778AE9778AE9778AE9778AE9778AE9778AE9778AF9879AF9879AF9879AF98
            79AF997BAF997BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 2
          OnClick = SendBTNClick
        end
        object CancelBTN: TBitBtn
          Left = 88
          Top = 5
          Width = 84
          Height = 37
          Caption = 'Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E2616BF9616BF93842E0FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0616BF9
            616BF93B46E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
            FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
            42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFF3842E0
            4C54EA6169F66972FC757FFE848DFE636DFA3842E0FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF3842E0636DFA848DFE757FFE6972FC6169F64C54EA3842E0FFFFFFFF
            FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
            FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
            E73741DFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851E85C64F3646CF96A73FD74
            7DFE7B85FE5D67F73B46E2FFFFFF3B46E25D67F77B85FE747DFE6A73FD646CF9
            5C64F34851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
            E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
            6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF3741DF4750E75860F15D65F4616AF7646DF96770FB6770FB6770
            FB646DF9616AF75D65F45860F14750E73741DFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
            5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE4E
            55E9575FF05A62F25C64F35C64F35C64F35A62F2575FF04E55E93640DEFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF3640DE575FF05A62F25C64F35C64F35C64F35A62F2575FF036
            40DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF3640DE4E55E9575FF05A62F25C64F35C64F35C64
            F35A62F2575FF04E55E93640DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3640DE424AE34E55E9575FF05A62F2
            5C64F35C64F35C64F35A62F2575FF04E55E9424AE33640DEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4750E75860F15D
            65F4616AF7646DF96770FB6770FB6770FB646DF9616AF75D65F45860F14750E7
            3741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3741DF4851
            E85A62F2616AF7666FFA6D76FE717BFE6B74FE3B46E26B74FE717BFE6D76FE66
            6FFA616AF75A62F24851E83741DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            3741DF4851E85C64F3646CF96A73FD747DFE7B85FE5D67F73B46E2FFFFFF3B46
            E25D67F77B85FE747DFE6A73FD646CF95C64F34851E83741DFFFFFFFFFFFFFFF
            FFFFFFFFFF3741DF464FE75961F1626BF86B74FE7882FE828CFE616BF93943E1
            FFFFFFFFFFFFFFFFFF3943E1616BF9828CFE7882FE6B74FE626BF85961F1464F
            E73741DFFFFFFFFFFFFFFFFFFF3842E04C54EA6169F66972FC757FFE848DFE63
            6DFA3842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3842E0636DFA848DFE757FFE
            6972FC6169F64C54EA3842E0FFFFFFFFFFFFFFFFFFFFFFFF3A44E15660F1737C
            FE7E87FE626CF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38
            42E0626CF97E87FE737CFE5660F13A44E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF3B46E2616BF9616BF93842E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF3842E0616BF9616BF93B46E2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B46E23A44E2FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3A44E23B46E2FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 3
          OnClick = CancelBTNClick
        end
        object CreateBTN: TRzBitBtn
          Left = 805
          Top = 6
          Width = 45
          Height = 35
          Alignment = taLeftJustify
          Caption = 'Create Warehouse XML'
          Font.Charset = GREEK_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = False
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676727676727676727676
            72767672767672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767672
            E6E2E2E6DEDEE6DEDEE6E2E2767672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF928E8E8E8A8AFFFFFFFF
            FFFFFFFFFF767672D6D2CEDAD6D6DAD6D6D6D2CE767672FFFFFFFFFFFFFFFFFF
            8E8E8A928E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8A8AA29E
            9EDEDADA96928E8A8A867E7A7A726E6E6A66666E6E6E6E6E6E6A6666726E6E7E
            7A7A8E8A8A96928EDEDADAA29E9E8E8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            8A86869A9692D6D6D2B2AEAE7E7E7A5E5E5A4242425652527A76768A86868A86
            867A76765652524242425E5E5A7E7E7AB2AEAED6D6D69A96968A8686FFFFFFFF
            FFFFFFFFFFFFFFFF868282D6D6D2B6B2AE7A7A763E3E3A52524E9E9A9AEAEAEA
            FAFAFAFEFEFEFEFEFEFAFAFAEAEAEAA29E9A52524E3E3E3A7E7A7AB6B2AED6D6
            D6868282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8E8AA29E9E5A5A56767272CA
            C6C6E6E6E2EAE6E6EAEAEAF2EEEEF2EEEEEAEAEAEAE6E6E6E6E6CAC6C6767272
            5A5A56A6A29E928E8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8682826E6A
            6A767272C6C6C2DEDEDAE2E2DEC6C2C2767672767672767672767672C6C2C2E2
            E2DEDEDEDAC6C6C27672726E6A6A868282FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF7A76765A5A56AEAAA6D6D2D2DEDADABEBEBA868282FFFFFFFFFFFFFFFF
            FFFFFFFF868282BEBEBADEDADAD6D6D2AEAAA65A5A567A7676FFFFFFFFFFFFFF
            FFFF7676727676727676726E6A667A7676C6C2BED2CECEBABAB6868282FFFFFF
            9A96928A86868A86869A9696FFFFFF868282BEBAB6D6D2CEC6C2BE7A7A766E6A
            6A767672767672767672767672AAA6A6AEAAA6726E6AA29E9EBEBAB6C6C2BE76
            7672FFFFFF9A96968A8A86AAA6A6AAA6A68A8A869A9696FFFFFF767672C6C2BE
            BEBABAA29E9E726E6EB2AEAAAEAAA6767672767672BAB6B6C2BEBE868282B6B2
            B2B2AEAEB2AEAA767672FFFFFF8A8A86B2AEAACAC6C6CAC6C6B2AEAA8A8A86FF
            FFFF767672B6B2AEB6B2AEBAB6B28A8686C6C2BEBEBAB6767672767672BEBAB6
            C6C2BE9E9A96CAC6C6B2AEAAAEAAA6767672FFFFFF8E8A8ABAB6B2DEDAD6DEDA
            D6BAB6B28E8A8AFFFFFF767672B2AEAAB2AEAACECAC69E9A9AC6C2C2C2BEBA76
            7672767672D2CECEDAD6D6BEBEBAD2CECEAEAAAA9E9A9A767672FFFFFFA29E9E
            928E8EC2BEBEC2BEBE928E8EA29E9EFFFFFF767672A29E9AB2AEAAD6D2CEC2BE
            BEDAD6D6D6D2D2767672767672767672767672C6C6C2DEDADABEBAB68A868696
            928E8A8686FFFFFFA29E9E928E8A928E8AA29E9EFFFFFF8A8A869692928A8686
            BEBABADEDEDACAC6C6767672767672767672FFFFFFFFFFFFFFFFFF827E7ED6D2
            D2DEDAD68682827E7A7A96928E8A8A86FFFFFFFFFFFFFFFFFFFFFFFF8E8A8A96
            928E7E7A7A868282DEDADAD6D2D2827E7EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF928E8EBAB6B2EAE6E6BEBEBA7672726E6A6A7E7A7A7676727676727676
            72767672827E7A726E6A767272C2BEBEEAE6E6BAB6B6928E8EFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF9A9692DAD6D6EEEAEAEEEEEABEBAB66A66665A5A5A
            5252524242424242425252525A5A5A6A6666BEBABAF2EEEEEEEEEADEDADA9A96
            96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8A8AFEFEFEDED6D6EAE6E6F6F6F2F6
            F6F2EAE6E69E9A9A6662624E4A4A4E4A4A6662629E9A9AEEEAE6F6F6F6F6F6F6
            EAE6E6DEDADAFEFEFE8E8E8AFFFFFFFFFFFFFFFFFFFFFFFF928E8EBAB6B2FEFE
            FEEAE2E2F2EEEECAC6C6EAEAEAFAFAFAFAF6F6F6F6F6F6F6F6FAF6F6FAFAFAEA
            EAEACAC6C6F2EEEEEAE6E6FEFEFEBAB6B6928E8EFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF928E8EBEBAB6FEFEFEA29E9E969692868282EAEAEAFEFEFEFEFEFEFEFE
            FEFEFEFEEAEAEA8682829A9692A29E9EFEFEFEBEBABA96928EFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF96928E96928EFFFFFFFFFFFFFFFFFF767672
            F2EEEEF2EEEEF2EEEEF6F2EE767672FFFFFFFFFFFFFFFFFF96928E969292FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF767672FEFEFEFEFEFEFEFEFEFEFEFE767672FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF767672767672767672767672767672767672FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object BitBtn1: TBitBtn
          Left = 308
          Top = 5
          Width = 120
          Height = 36
          Caption = 'ClipBoard'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEC
            E532855F046C3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE0EDE7328861008B60007949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFD9EAE32C8861008D6700805279B196FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFD9EBE32A8C62008F6300825579B198FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEEE832946D00916700865971B0
            95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEEE830987100926A
            00886072B499FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9EDE728
            9974009B7B008D637ABBA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFDEF0EA2FA17E00A99200997574BAA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDFF1EC32A78800B4AD00A48671BCA5FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFDAF0EB2CA98B00C2C000AF9B78C2ABFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EA3
            EAC2D3F5FFFFFFFFFFFFC0D2F582A6E8EBF5F729AC9400CDD600B6AB79C5AEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF467BE02464DBEEF3FDDFE8FA135BD93269D846ADB300D5E203C0
            BE87CCB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF568BE5109DEA3B74DF316EDD0CA5F0064BD3
            0ED1E712C9C8A6DACBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF7DB5F481B3F283B1F2347BE41BD7FA069DF30E
            ADF30ABBFB074ED81064DF2C64D594B2EBF3F7FDFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67A9F40C88EE27C8F61CC9
            F71BE1FE01CAFF02CCFF0FD0FE16B2F21BB4F10A5BDA749BE8FCFDFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
            80BBF724AFF51FE7FF00DFFF00DFFF00DBFF01DBFF0DD2FD2084E783A6EBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFC6E4FE1E97F528F3FE00F3FF00F2FF00EEFF00F2FF0AD7F9
            2073E4D4E2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFA6DEFF26B6FF5EF0FE36F3FE2FFFFF00FFFF00
            FFFF17FBFF30F0FE42E3FA2480EAAECEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22ADFF18ABFF47BFFF28B0
            FF4AF3FF1DFBFF3AFBFF1DF3FE248CF445A1F3177DEC378BEDECF4FEFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF59C4FF5EEBFF18B7FF23B8FF48EEFF55AFFAFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF4EBFFF1AB1FFA8DEFFA1DBFF1BB2FF52BFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF55C0FF95D7FFFFFFFFFF
            FFFF81CFFF4DBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 5
          OnClick = BitBtn1Click
        end
      end
      object Panel3: TRzPanel
        Left = 0
        Top = 0
        Width = 1182
        Height = 154
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 2
        object asdf: TRzGroupBox
          Left = 465
          Top = 16
          Width = 227
          Height = 132
          Caption = 'Filter Mawbs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          GradientColorStop = clCream
          GroupStyle = gsUnderline
          ParentFont = False
          TabOrder = 0
          object Label35: TLabel
            Left = 1
            Top = 77
            Width = 97
            Height = 15
            Caption = 'Greater than Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 51
            Top = 53
            Width = 47
            Height = 15
            Caption = 'Mawb ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 7
            Top = 103
            Width = 91
            Height = 15
            Caption = ' Less Reference'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object BYStartDateFLD: TwwDBDateTimePicker
            Left = 104
            Top = 75
            Width = 121
            Height = 22
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -13
            CalendarAttributes.Font.Name = 'Arial'
            CalendarAttributes.Font.Style = []
            CalendarAttributes.PopupYearOptions.StartYear = 2014
            Epoch = 2005
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = True
            TabOrder = 0
            DisplayFormat = 'dd/mm/yyyy'
            OnCloseUp = BYStartDateFLDCloseUp
          end
          object ByRefFLD: TSearchBox
            Left = 104
            Top = 100
            Width = 121
            Height = 23
            TabOrder = 1
            Text = 'Reference'
            OnEnter = ByRefFLDEnter
            OnInvokeSearch = ByRefFLDInvokeSearch
          end
          object ByMawbIDsFLD: TSearchBox
            Left = 104
            Top = 50
            Width = 121
            Height = 23
            TabOrder = 2
            Text = 'By Mawb Id'
            OnEnter = ByMawbIDsFLDEnter
            OnInvokeSearch = ByMawbIDsFLDInvokeSearch
          end
          object RzBitBtn1: TRzBitBtn
            Left = 104
            Top = 22
            Width = 122
            Caption = 'Recent Mawbs'
            TabOrder = 3
            OnClick = RzBitBtn1Click
          end
        end
        object RzGroupBox1: TRzGroupBox
          Left = 711
          Top = 16
          Width = 210
          Height = 132
          Caption = 'Filter Hawbs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          GradientColorStop = clWhite
          GroupStyle = gsUnderline
          ParentFont = False
          TabOrder = 1
          object Label41: TLabel
            Left = 12
            Top = 53
            Width = 47
            Height = 15
            Caption = 'Hawb ID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 2
            Top = 27
            Width = 57
            Height = 15
            Caption = 'Clearance'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object FilterBox: TwwDBComboBox
            Left = 62
            Top = 24
            Width = 140
            Height = 23
            ParentCustomHint = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            ShowButton = True
            Style = csDropDownList
            MapList = True
            AllowClearKey = False
            Color = clWhite
            Ctl3D = True
            DropDownCount = 8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'All'#9'All'
              'IT2 - All High Value'#9'IT2'
              'IM4 - High Value'#9'IM4'
              'MED - Medium Value'#9'MED'
              'LOW - Low Value'#9'LOW'
              'STC - Status C'#9'STC'
              'DO - Delivery Order '#9'DO'
              'DOZ - Zero Delivery Order'#9'DOZ')
            ParentCtl3D = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
            OnCloseUp = FilterBoxCloseUp
            DoubleBuffered = False
            ParentDoubleBuffered = False
          end
          object FindHawbFLD: TSearchBox
            Left = 62
            Top = 50
            Width = 140
            Height = 23
            TabOrder = 1
            Text = 'Hawb ID'
            OnEnter = FindHawbFLDEnter
            OnInvokeSearch = FindHawbFLDInvokeSearch
          end
        end
        object RzPanel1: TRzPanel
          Left = 8
          Top = 0
          Width = 433
          Height = 148
          Align = alCustom
          BorderOuter = fsNone
          TabOrder = 2
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 500
            Height = 148
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object RzToolbar1: TRzToolbar
              Left = 0
              Top = 0
              Width = 500
              AutoResize = False
              CustomizeCaptions.Title = 'Customize Toolbar'
              CustomizeCaptions.Hint = 'Uncheck to hide control'
              CustomizeCaptions.Close = 'Close'
              CustomizeCaptions.MoveUp = 'Move Up'
              CustomizeCaptions.MoveDown = 'Move Down'
              CustomizeCaptions.TextOptions = 'Text Options'
              CustomizeCaptions.NoTextLabels = 'No text labels'
              CustomizeCaptions.ShowTextLabels = 'sdf'
              CustomizeCaptions.SelectiveTextOnRight = 'Selective text on right'
              Images = DbImages
              ButtonWidth = 40
              TextOptions = ttoCustom
              BorderInner = fsNone
              BorderOuter = fsGroove
              BorderSides = [sdTop]
              BorderWidth = 0
              Caption = 'mnb'
              Color = clBlue
              GradientColorStart = clSilver
              GradientColorStop = clSkyBlue
              TabOrder = 0
              VisualStyle = vsGradient
              ToolbarControls = (
                BtnLeft
                BtnRight
                BtnInsertRecord
                BtnDeleteRecord
                BtnPost
                BtnCancel
                BtnRefresh)
              object BtnLeft: TRzToolButton
                Left = 4
                Top = 2
                Hint = 'Left'
                DisabledIndex = 9
                ImageIndex = 8
                Caption = 'Left'
                OnClick = BtnLeftClick
              end
              object BtnRight: TRzToolButton
                Left = 44
                Top = 2
                Hint = 'Right'
                DisabledIndex = 11
                ImageIndex = 10
                Images = DbImages
                Caption = 'Right'
                OnClick = BtnRightClick
              end
              object BtnPost: TRzToolButton
                Left = 164
                Top = 2
                Hint = 'Post'
                DisabledIndex = 13
                ImageIndex = 12
                Caption = 'Post'
                OnClick = BtnPostClick
              end
              object BtnRefresh: TRzToolButton
                Left = 244
                Top = 2
                Hint = 'Refresh'
                DisabledIndex = 15
                ImageIndex = 14
                Caption = 'Refresh'
                OnClick = BtnRefreshClick
              end
              object BtnInsertRecord: TRzToolButton
                Left = 84
                Top = 2
                Hint = 'Insert Record'
                DisabledIndex = 17
                ImageIndex = 16
                Caption = 'Insert Record'
                OnClick = BtnInsertRecordClick
              end
              object BtnDeleteRecord: TRzToolButton
                Left = 124
                Top = 2
                Hint = 'Delete Record'
                DisabledIndex = 19
                ImageIndex = 18
                Caption = 'Delete Record'
                OnClick = BtnDeleteRecordClick
              end
              object BtnCancel: TRzToolButton
                Left = 204
                Top = 2
                Hint = 'Cancel'
                DisabledIndex = 23
                ImageIndex = 22
                Align = alClient
                Caption = 'Cancel'
                OnClick = BtnCancelClick
              end
            end
            object MawbSelectGRD: TwwDBGrid
              Left = 0
              Top = 32
              Width = 500
              Height = 116
              Selected.Strings = (
                'REFERENCE_NUMBER'#9'10'#9'S/N'
                'MAWB_ID'#9'15'#9'Mawb ID'
                'DATE_ARRIVED'#9'15'#9'Arrived')
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnShadow
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              DataSource = V_MawbDataDML.MawbSelectSRC
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
              ReadOnly = True
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = GREEK_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = True
              OnTitleButtonClick = MawbSelectGRDTitleButtonClick
              OnDblClick = MawbSelectGRDDblClick
            end
          end
        end
      end
      object Panel28: TPanel
        Left = 0
        Top = 393
        Width = 1182
        Height = 322
        Align = alClient
        Caption = 'Panel28'
        TabOrder = 3
        object MhawbsGRD: TwwDBGrid
          Left = 1
          Top = 1
          Width = 1042
          Height = 320
          ControlType.Strings = (
            'OTHER_CHARGE_PAID;CheckBox;Y;N'
            'FK_CLEARING_STATE;CheckBox;1;0'
            'FK_INVOICE_STATUS;CheckBox;1;0'
            'IS_PAID;CheckBox;Y;N'
            'IS_MEDIUM;CheckBox;Y;N'
            'Expanded;CustomEdit;ExapandChargesFLD;F')
          Selected.Strings = (
            'SERIAL_NUMBER'#9'10'#9'* S/N'
            'HAB_ID'#9'14'#9'Hawb'
            'XML_HOUSE_ID'#9'16'#9'TDID'
            'FK_CLEARANCE_INSTRUCTION'#9'7'#9'Type'
            'CLEARANCE_WAITING_CODE'#9'5'#9'Status'
            'FK_CLEARING_STATE'#9'3'#9'Clr'
            'FK_INVOICE_STATUS'#9'3'#9'Inv'
            'DESCRIPTION'#9'24'#9'Description'
            'CUSTOMER_NAME'#9'19'#9'Customer Name'
            'WEIGHT'#9'7'#9'Weight'
            'PRE_DISCOUNT_AMOUNT'#9'10'#9'Inv Amount'
            'CURRENCY'#9'8'#9'Currency'
            'SENDERCUSTOMVALUE'#9'11'#9'Customs Val')
          IniAttributes.Delimiter = ';;'
          IniAttributes.UnicodeIniFile = False
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alLeft
          Ctl3D = False
          DataSource = V_MawbDataDML.HawbSRC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyOptions = []
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = True
          OnCalcCellColors = MhawbsGRDCalcCellColors
          OnTitleButtonClick = MhawbsGRDTitleButtonClick
          OnDblClick = MhawbsGRDDblClick
          OnKeyDown = MhawbsGRDKeyDown
          TitleImageList = ImageList2
          object wwIButton1: TwwIButton
            Left = 0
            Top = 0
            Width = 27
            Height = 33
            AllowAllUp = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              9265449265449266449266449266439266439265449266449266449265439266
              43926543926644926543926543926644926643926643926643926643FFFFFFFF
              FFFFFFFFFFFFFFFF936644E9D7C0E8D7C0E8D6C0E9D7C0E8D6C0E8D6C1E9D7C0
              E8D6C0E8D6C0E8D7C0E9D7C0E9D6C0E8D7C0E8D6C0E8D6C0E8D6C0E8D6C0E8D7
              C0926644FFFFFFFFFFFFFFFFFFFFFFFF946844E8D8C2E9D8C2E8D7C1E9D8C2E9
              D7C2E8D7C2E8D8C2E8D8C1E9D7C1E8D7C2E9D8C2E8D7C2E9D8C2E9D7C2E8D8C2
              E8D7C1E8D8C1E9D7C2946745FFFFFFFFFFFFFFFFFFFFFFFF966845E9D9C3E9D8
              C43232D73232D73232D7E9D9C3E9D8C4E9D9C4E9D9C3E9D9C3E9D8C3E9D9C3E9
              D8C3E9D9C4E9D9C3E9D9C4E9D9C3E9D9C3966845FFFFFFFFFFFFFFFFFFFFFFFF
              976945E9DAC5EADAC5EADAC5EADAC51A1ADEEADAC5EADAC5EAD9C5E9DAC5EADA
              C5E9DAC5EAD9C5EADAC5EADAC5E9DAC5EADAC5EADAC5E9D9C5976945FFFFFFFF
              FFFFFFFFFFFFFFFF996A46EADCC8EBDBC8EADBC80808E4EADBC8EADBC8DDC7AF
              DDC7AFDDC7AFDEC7AFDDC7AFDDC7AFDDC7AFDDC7AFDDC7AFDDC7AFEADCC8EBDB
              C8996A46FFFFFFFFFFFFFFFFFFFFFFFF996B47EADCCAEADDCAEBDCCAEBDDCA08
              08E4EBDCCBA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744D
              A8744DEBDDCAEADCCA9A6B47FFFFFFFFFFFFFFFFFFFFFFFF9B6D47EBDECCEBDE
              CC0808E40808E40808E4EBDECCECDECCECDECDEBDECCEBDECDECDECCEBDECDEB
              DECCECDECDEBDDCCEBDECDECDECDECDECC9C6C48FFFFFFFFFFFFFFFFFFFFFFFF
              9E6D48ECDFCFECDFCFECE0CFECDFCEECDFCFECDFCFECDFCFECDFCFEBE0CEEBDF
              CFEBE0CEECDFCFECDFCFECDFCFECE0CFECE0CFECDFCFECE0CF9E6C48FFFFFFFF
              FFFFFFFFFFFFFFFF9F6E49ECE1D1EDE1D1EDE1D1ECE1D1EDE1D1ECE1D1EDE1D1
              ECE1D1ECE1D2EDE1D1ECE1D1EDE1D2ECE1D2ECE1D1EDE1D1ECE2D2EDE1D2ECE1
              D19F6E48FFFFFFFFFFFFFFFFFFFFFFFFA1704AEDE3D4EDE3D33232D73232D732
              32D7EDE3D4EDE2D4EDE3D4EDE3D3EDE3D4EDE2D4EEE3D4EDE2D4EDE3D4EDE2D4
              EDE3D4EDE3D4EDE3D4A17049FFFFFFFFFFFFFFFFFFFFFFFFA2714AEEE4D6EEE4
              D61A1ADEEEE5D6EEE4D6EEE5D6EEE5D7EDE5D6EEE4D6EEE5D7EEE4D7EEE5D6EE
              E4D6EEE4D7EDE4D7EEE4D7EEE4D6EEE4D6A3714AFFFFFFFFFFFFFFFFFFFFFFFF
              A4734AEFE6D8EEE6D8EEE5D90808E4EEE6D9EEE6D9E1CFBCE1CFBCE0CFBCE0CF
              BCE1CFBBE1CFBBE0CFBCE1CFBCE0CFBBE0CFBBEEE5D9EEE6D8A5714AFFFFFFFF
              FFFFFFFFFFFFFFFFA7734BEFE8DCEFE7DBEFE7DBF0E8DC0808E4EFE7DCA8744D
              A8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DEFE8DBF0E7
              DCA6734BFFFFFFFFFFFFFFFFFFFFFFFFA8744CEFE9DDF0E9DE0808E40808E408
              08E4F0E9DDF0E9DEF0E9DEF0E9DEF0E9DDF0E9DEF0E9DEF0E9DEEFE9DEF0E9DE
              F0E9DEF0E9DEF0E9DDA8754CFFFFFFFFFFFFFFFFFFFFFFFFA9764DF0EBE0F1EB
              E0F1EAE0F0EBE0F0EBE0F0EAE0F1EBE0F0EAE0F0EAE0F1EBE0F0EAE0F1EAE0F1
              EBE0F0EBE0F0EBDFF1EADFF0EAE0F0EAE0AA764DFFFFFFFFFFFFFFFFFFFFFFFF
              AC774EF1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1ECE2F1EBE2F1ECE2F1ECE2F1EC
              E2F1EBE2F1EBE2F1ECE2F1ECE2F0ECE2F1EBE2F0ECE2F1EBE2AC764EFFFFFFFF
              FFFFFFFFFFFFFFFFAE784EF1EDE4F1EDE4F2EDE43232D7F2EDE4F1EDE4F1EDE4
              F1EEE4F1EDE4F2EDE4F1EDE4F1EDE4F1EDE4F2EDE4F1EDE4F1EDE4F2EEE4F1ED
              E4AD784EFFFFFFFFFFFFFFFFFFFFFFFFAE794FF2EFE5F2EEE6F2EEE61A1ADEF2
              EEE5F2EEE6F2EEE6F2EFE6F1EEE6F1EEE6F2EEE6F2EEE6F1EEE5F2EEE6F2EEE5
              F2EEE6F2EFE6F2EFE6AE794FFFFFFFFFFFFFFFFFFFFFFFFFB07A50F2EFE7F2EF
              E7F2F0E70808E4F3EFE7F2EFE7E3D7C9E3D7C8E3D7C8E3D7C8E3D7C8E3D7C8E3
              D7C9E3D7C9E3D7C8E3D7C9F3EFE8F3EFE8B07950FFFFFFFFFFFFFFFFFFFFFFFF
              B17B50F3F0E8F3F0E90808E40808E4F3F0E8F2F0E9A8744DA8744DA8744DA874
              4DA8744DA8744DA8744DA8744DA8744DA8744DF3F0E9F3F1E9B17A50FFFFFFFF
              FFFFFFFFFFFFFFFFB27C51F3F1EAF3F1EAF3F1EA0808E4F3F1EAF3F1EAF3F1EA
              F3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1
              EAB27B50FFFFFFFFFFFFFFFFFFFFFFFFB47C51F3F1EAF3F1EAF3F1EAF3F1EAF3
              F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EAF3F1EA
              F3F1EAF3F1EAF3F1EAB47B50FFFFFFFFFFFFFFFFFFFFFFFFB47C51B47C51B47C
              51B47C51B47C51B47C51B47D51B47C51B47C51B47C51B47C51B47C51B47C51B4
              7C51B47C51B47C51B47C51B47C51B47C51B47C51FFFFFFFFFFFF}
            ParentFont = False
            OnClick = wwIButton1Click
          end
        end
        object InsertHawbBTN: TRzBitBtn
          Left = 1049
          Top = 6
          Width = 115
          Height = 37
          Alignment = taLeftJustify
          Caption = 'Add Hawb'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LightTextStyle = True
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 1
          OnClick = InsertHawbBTNClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333333333333333333300003333333344C3333333333333337FF3333333
            00003333333A224333333333333338733F33333300003333333A224333333333
            333338733F33333300003333333A224333333333333338733F33333300003333
            333A224333333333333338733F33333300003333333A22433333333333333873
            3F33333300003344444422444444C3337FFF787337FFFFF300003A2222222222
            22224338733333333333333F00003A222222222222224338733333333333333F
            000033AAAAAA222AAAAA3338777777733377777700003333333A224333333337
            888888733788888300003333333A224333333333333338733F33333300003333
            333A224333333333333338733F33333300003333333A22433333333333333873
            3F33333300003333333A2243333333333333387337333333000033333333AA33
            3333333333333877733333330000333333333333333333333333338883333333
            0000}
          Margin = -1
          NumGlyphs = 2
          Spacing = 6
        end
        object DeletehawbBTN: TRzBitBtn
          Left = 1049
          Top = 47
          Width = 115
          Height = 37
          Alignment = taLeftJustify
          Caption = 'Delete Hawb'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LightTextStyle = True
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 2
          OnClick = DeleteHawbBTNClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333333333333333
            0000333333333333333333333333333333333333000033333333333333333333
            3333333333333333000033333333333333333333333333333333333300003333
            3333333333333333333333333333333300003333333333333333333333333333
            3333333300003388888888888888333333333333333333330000391111111111
            111193337FFFFFFFFFFFFFF30000391111111111111193387333333333333378
            0000339999999999999933387777777777777778000033333333333333333333
            8888888888888883000033333333333333333333333333333333333300003333
            3333333333333333333333333333333300003333333333333333333333333333
            3333333300003333333333333333333333333333333333330000333333333333
            3333333333333333333333330000333333333333333333333333333333333333
            0000}
          Margin = -1
          NumGlyphs = 2
        end
        object RzBitBtn2: TRzBitBtn
          Left = 1049
          Top = 103
          Width = 115
          Height = 37
          Alignment = taLeftJustify
          Caption = 'View Charges'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LightTextStyle = True
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 3
          OnClick = RzBitBtn2Click
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF926544926544926644926644926643926544926644
            9266449265439266439266439265449266449265439266449266439266439266
            43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF946744E3CAACE4CAACE3CBACE3
            CBACE3CBACE4CAADE3CAADE4CAADE4CBACE4CAADE4CAACE4CBACE3CBACE3CBAC
            E4CAACE3CAAC936644FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF956845E5CC
            AFE4CCAFE4CCAFE5CCAFE5CCAFE4CCAEE4CCAFE4CCAFE4CCAFE4CCAFE4CCAFE4
            CDAFE4CDAFE4CCAFE4CCAFE4CDAF956745FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF976945E5CFB2E5CEB2A9764FA8744DB1825DDBBEA1B98D6AA8744DA874
            4DA8744DA8744DA8744DA8744DA8744DE5CEB2E5CEB2976945FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF996A46E6D1B6E6D1B5E6D1B6E6D0B6E6D0B6E6D1B6
            E6D0B6E6D0B6E6D0B5E6D0B6E6D0B6E6D0B6E6D1B6E6D1B6E6D0B5E6D1B5996A
            47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A6C47E7D3BAE7D3BAE7D3B9E7
            D3BAE7D3BAE7D3BAE7D3B9E7D3BAE7D4BAE7D3B9E7D3BAE7D3BAE7D3B9E7D3B9
            E7D3BAE7D3BA9B6C46FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D6D48E8D6
            BEE8D6BEA9764FA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8744DA8
            744DA8744DA8744DE9D6BEE8D6BE9C6C48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF9F6E49E9D9C3E9D9C2E9D9C3E9D9C3E9D9C3E9D9C3EAD9C3E9D8C3E9D8
            C2E9D8C3E9D9C2E9D8C2EAD8C3EAD9C3E9D9C3E9D9C39F6E48FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFA1704AEBDBC8EBDCC9EADBC8EADCC8EADAC8E8DAC5
            E7D8C5E7D8C4E7D9C4E7D9C5E8D9C5E9DAC7EADCC9EADCC9EBDCC8EBDCC9A16F
            49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3724AEBDECDEADDCCA8754EA5
            724CA3714BA16F4AA16F4AA06E49A16F4AA2704AA4714BDBC5B0BD9878A8744D
            ECDECDEBDECDA4714AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6734BE9DD
            CFE6DBCBE2D7C8E0D5C5DCD1C1D9CFBED7CCBCD5CCBCD6CCBCD9CEBFDED3C3E3
            D8C9E6DCCCE9DECFEBE0D0EDE2D1A6724CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFA8744CE4DBCDDFD6C9D9D0C3D4CBBECFC5B9CBC2B5C4BDB3B5B1AFB7B4
            B0C9C1B6D3CABDDAD1C3E1D8CAE6DECEE9E0D2ECE2D4A8744DFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFA17049DBD4C8D5CEC1906544885F417E5D4A795B4A
            705A50265F95265F95755C50885F419164439769459E6D48E8E1D4EBE3D7A976
            4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E6D47CDC9BEB6B7B5A9AAAB98
            9DA32761962D62992D629987B4E487B4E4286196999EA6B2B2B1C9C3BBD9D3C9
            E5DED4E9E3D9AC764DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF956947A8AC
            B129639830659B30659B88B5E488B5E430659B8BB5E28BB5E235669D31659B29
            6398A6AAB0CECAC2E0DBD2E8E3D9AC774DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF8A684F2B669A8AB6E58AB6E533689D8DB7E38DB7E331679C7BA2D27BA2
            D233679D8AB6E58AB6E52B669A83624CDBD9D0E4E1D8AC764DFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF876750336C9F91B9E591B9E5336B9F7FA4D47FA4D4
            336B9F9EC3EB9EC3EB336C9F91B9E591B9E5336C9FB2B8B9D9D7CFE3E0D9AB76
            4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF866650366EA183A8D683A8D636
            6EA1A5C9EEA5C9EE366FA1B1D3F5B1D3F5366EA183A8D683A8D6366EA1B1B7B9
            D7D6CFE2E0D9AD774EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8867513873
            A4ACCFF0ACCFF03873A4B8D8F8B8D8F83873A4BBDAF9BBDAF93873A4ACCFF0AC
            CFF03873A48867519F6E48A7734BAE784EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE7EEF53B76A6C1DFFBC1DFFB3B76A6C3E0FCC3E0FC3B76A6C4E1FCC4E1
            FC3B76A6C1DFFBC1DFFB3B76A67BA2D291B9E591B9E55483B5FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFEBF0F73574A3CBE5FFCBE5FF3775A4CBE5FFCBE5FF
            3775A4CBE5FFCBE5FF3775A4CBE5FFCBE5FF3574A35483B55483B55483B5FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFEDDE7F13676A43676A4CC
            DBEA3676A43676A4CCDBEA3676A43676A4CCDBEA3676A43676A4DDE7F1FCFDFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD
            FEEBF1F7EBF1F7F9FBFDEBF1F7EBF1F7F9FBFDEBF1F7EBF1F7F9FBFDEBF1F7EB
            F1F7FCFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Margin = -1
        end
        object Button1: TButton
          Left = 1049
          Top = 146
          Width = 75
          Height = 25
          Caption = 'Del Inv'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 4
          Visible = False
          OnClick = Button1Click
        end
      end
    end
    object ReferencesTS: TTabSheet
      Caption = 'References'
      ImageIndex = 4
      OnExit = ReferencesTSExit
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RzPanel5: TRzPanel
        Left = 0
        Top = 0
        Width = 1182
        Height = 760
        Align = alClient
        BorderOuter = fsNone
        TabOrder = 0
        object OtherRefGRP: TGroupBox
          Left = 26
          Top = 46
          Width = 225
          Height = 183
          Caption = 'Other References'
          Font.Charset = GREEK_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label2: TLabel
            Left = 36
            Top = 49
            Width = 35
            Height = 15
            Caption = 'HMSD'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label12: TLabel
            Left = 19
            Top = 75
            Width = 54
            Height = 15
            Caption = 'Low TDID'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label19: TLabel
            Left = 50
            Top = 127
            Width = 21
            Height = 15
            Caption = 'F63'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label20: TLabel
            Left = 21
            Top = 153
            Width = 47
            Height = 15
            Caption = 'Status C'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label21: TLabel
            Left = 2
            Top = 101
            Width = 75
            Height = 15
            Caption = 'Medium TDID'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label7: TLabel
            Left = 21
            Top = 27
            Width = 54
            Height = 15
            Caption = 'TDID XML'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object HmsdFld: TwwDBEdit
            Left = 80
            Top = 46
            Width = 95
            Height = 23
            CharCase = ecUpperCase
            DataField = 'HMSD'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object LowValueIDFld: TwwDBEdit
            Left = 80
            Top = 72
            Width = 95
            Height = 23
            CharCase = ecUpperCase
            DataField = 'LOW_VALUE_TDID'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object F63FLD: TwwDBEdit
            Left = 80
            Top = 124
            Width = 95
            Height = 23
            CharCase = ecUpperCase
            DataField = 'F63'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Picture.PictureMask = '*13[#]'
            Picture.AutoFill = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object StatusCFLD: TwwDBEdit
            Left = 80
            Top = 150
            Width = 95
            Height = 23
            CharCase = ecUpperCase
            DataField = 'STATUSC'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Picture.PictureMask = '*13#'
            Picture.AutoFill = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object TDIDNewFLD: TwwDBEdit
            Left = 80
            Top = 98
            Width = 95
            Height = 23
            CharCase = ecUpperCase
            DataField = 'TDID_MEDIUM'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Picture.PictureMask = '*13#'
            Picture.AutoFill = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit2: TwwDBEdit
            Left = 80
            Top = 20
            Width = 95
            Height = 23
            CharCase = ecUpperCase
            DataField = 'XML_CONSOLIDATED_ID'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object BagsPNL: TGroupBox
          Left = 257
          Top = 46
          Width = 232
          Height = 183
          Caption = 'Bags'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label15: TLabel
            Left = 9
            Top = 23
            Width = 58
            Height = 15
            Caption = 'Total Bags'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label18: TLabel
            Left = 135
            Top = 23
            Width = 38
            Height = 15
            Caption = 'Weight'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label25: TLabel
            Left = 135
            Top = 49
            Width = 38
            Height = 15
            Caption = 'Weight'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label26: TLabel
            Left = 13
            Top = 49
            Width = 54
            Height = 15
            Caption = 'Doc Bags'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label27: TLabel
            Left = 135
            Top = 75
            Width = 38
            Height = 15
            Caption = 'Weight'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label16: TLabel
            Left = 135
            Top = 101
            Width = 38
            Height = 15
            Caption = 'Weight'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label24: TLabel
            Left = 11
            Top = 75
            Width = 56
            Height = 15
            Caption = 'Low Value'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label29: TLabel
            Left = 8
            Top = 127
            Width = 59
            Height = 15
            Caption = 'High Value'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label30: TLabel
            Left = 135
            Top = 127
            Width = 38
            Height = 15
            Caption = 'Weight'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label28: TLabel
            Left = 4
            Top = 101
            Width = 63
            Height = 15
            Caption = 'Medium Val'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label31: TLabel
            Left = 20
            Top = 153
            Width = 47
            Height = 15
            Caption = 'Status C'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label33: TLabel
            Left = 135
            Top = 153
            Width = 38
            Height = 15
            Caption = 'Weight'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object NumbersFLD: TwwDBEdit
            Left = 72
            Top = 20
            Width = 49
            Height = 23
            DataField = 'GOODS_NUMBER'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object GoodsWeightFLD: TwwDBEdit
            Left = 177
            Top = 20
            Width = 49
            Height = 23
            DataField = 'GOODS_WEIGHT'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object DocNumberFLD: TwwDBEdit
            Left = 72
            Top = 46
            Width = 49
            Height = 23
            DataField = 'DOCS_NUMBER'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object DocsWeightFLD: TwwDBEdit
            Left = 177
            Top = 46
            Width = 49
            Height = 23
            DataField = 'DOCS_WEIGHT'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object LowValueNumberFLD: TwwDBEdit
            Left = 72
            Top = 72
            Width = 49
            Height = 23
            DataField = 'LOW_VALUE_NUMBER'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object LOWValueWeightFLD: TwwDBEdit
            Left = 177
            Top = 72
            Width = 49
            Height = 23
            DataField = 'LOW_VALUE_WEIGHT'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object medValueNumberFLD: TwwDBEdit
            Left = 72
            Top = 98
            Width = 49
            Height = 23
            DataField = 'MEDIUM_VALUE_NUMBER'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object MedValueWeightFLD: TwwDBEdit
            Left = 177
            Top = 98
            Width = 49
            Height = 23
            DataField = 'MEDIUM_VALUE_WEIGHT'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object hiValueItemFld: TwwDBEdit
            Left = 72
            Top = 124
            Width = 49
            Height = 23
            DataField = 'HIGH_VALUE_NUMBER'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object HivalweightFLD: TwwDBEdit
            Left = 177
            Top = 124
            Width = 49
            Height = 23
            DataField = 'HIGH_VALUE_WEIGHT'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit1: TwwDBEdit
            Left = 72
            Top = 150
            Width = 49
            Height = 23
            DataField = 'STATUSC_NUMBER'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBEdit3: TwwDBEdit
            Left = 177
            Top = 150
            Width = 49
            Height = 23
            DataField = 'STATUSC_WEIGHT'
            DataSource = V_MawbDataDML.MawbSRC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
      end
    end
    object PrintedHawbsTS: TTabSheet
      Caption = 'Hawbs Printed'
      TabVisible = False
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1182
        Height = 9
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Panel10: TPanel
        Left = 0
        Top = 9
        Width = 1182
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object wwDBNavigator1: TwwDBNavigator
          Left = 2
          Top = 14
          Width = 147
          Height = 25
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          object wwDBNavigator1Prior: TwwNavButton
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Move to prior record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Prior'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 0
            Style = nbsPrior
          end
          object wwDBNavigator1Next: TwwNavButton
            Left = 25
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Move to next record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Next'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsNext
          end
          object wwDBNavigator1Insert: TwwNavButton
            Left = 50
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Insert new record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Insert'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 2
            Style = nbsInsert
          end
          object wwDBNavigator1Delete: TwwNavButton
            Left = 75
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Delete current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Delete'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsDelete
          end
          object wwDBNavigator1Post: TwwNavButton
            Left = 100
            Top = 0
            Width = 25
            Height = 25
            Hint = 'Post changes of current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Post'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 4
            Style = nbsPost
          end
          object wwDBNavigator1Cancel: TwwNavButton
            Left = 125
            Top = 0
            Width = 22
            Height = 25
            Hint = 'Cancel changes made to current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator1Cancel'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 5
            Style = nbsCancel
          end
        end
      end
      object HawbLookupFLD: TwwDBLookupCombo
        Left = 200
        Top = 16
        Width = 121
        Height = 23
        CharCase = ecUpperCase
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'HAB_ID'#9'10'#9'HAB_ID'#9'F')
        DataField = 'HAB_ID'
        LookupField = 'HAB_ID'
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnCloseUp = HawbLookupFLDCloseUp
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 50
        Width = 1182
        Height = 710
        Selected.Strings = (
          'HAB_ID'#9'14'#9'Hawb'
          'CUSTOMER_NAME'#9'16'#9'Customer'
          'DESCRIPTION'#9'15'#9'Description'
          'FK_MAWB_ID'#9'15'#9'Original Mawb')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        TabOrder = 3
        TitleAlignment = taLeftJustify
        TitleFont.Charset = GREEK_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object PartialHawbTS: TTabSheet
      Caption = 'Partial Hawbs'
      ImageIndex = 6
      OnEnter = PartialHawbTSEnter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 1182
        Height = 38
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object wwDBNavigator4: TwwDBNavigator
          Left = 0
          Top = 0
          Width = 150
          Height = 38
          AutosizeStyle = asSizeNavButtons
          DataSource = V_MawbDataDML.PartialHawbSRC
          RepeatInterval.InitialDelay = 500
          RepeatInterval.Interval = 100
          Align = alLeft
          object wwNavButton4: TwwNavButton
            Left = 0
            Top = 0
            Width = 25
            Height = 38
            Hint = 'Move to prior record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Prior'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 0
            Style = nbsPrior
          end
          object wwNavButton7: TwwNavButton
            Left = 25
            Top = 0
            Width = 25
            Height = 38
            Hint = 'Move to next record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Next'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 1
            Style = nbsNext
          end
          object wwNavButton10: TwwNavButton
            Left = 50
            Top = 0
            Width = 25
            Height = 38
            Hint = 'Delete current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Delete'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 2
            Style = nbsDelete
          end
          object wwNavButton11: TwwNavButton
            Left = 75
            Top = 0
            Width = 25
            Height = 38
            Hint = 'Post changes of current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Post'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 3
            Style = nbsPost
          end
          object wwNavButton12: TwwNavButton
            Left = 100
            Top = 0
            Width = 25
            Height = 38
            Hint = 'Cancel changes made to current record'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Cancel'
            Enabled = False
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 4
            Style = nbsCancel
          end
          object wwNavButton13: TwwNavButton
            Left = 125
            Top = 0
            Width = 25
            Height = 38
            Hint = 'Refresh the contents of the dataset'
            ImageIndex = -1
            NumGlyphs = 2
            Spacing = 4
            Transparent = False
            Caption = 'wwDBNavigator2Refresh'
            DisabledTextColors.ShadeColor = clGray
            DisabledTextColors.HighlightColor = clBtnHighlight
            Index = 5
            Style = nbsRefresh
          end
        end
      end
      object Panel16: TPanel
        Left = 0
        Top = 714
        Width = 1182
        Height = 46
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Panel20: TPanel
          Left = 1086
          Top = 0
          Width = 96
          Height = 46
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn5: TBitBtn
            Left = 20
            Top = 6
            Width = 73
            Height = 36
            Caption = 'Close'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFF0004450004450004450004450004450004450004450004450004450004
              45000445000445000445000445000445000445000445000445FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000A4D3461A53F70B44B7DC15789CE5F91D66396DB
              6396DB6396DB6598DD6295DA6295DA5D90D55688CD4C7EC24374B83765A9000A
              4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0011563B6DB14174B84B7EC256
              89CE5E91D66396DB6396DB6396DB6598DD6295DA6295DA5D90D55689CE4D80C4
              4477BB3E70B4001156FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0018613869
              AE3366A72B5EA22B5EA22B5EA22B5EA22B5EA2497CCE6396DB3164A52B5EA22B
              5EA22B5EA22B5EA22D60A43869AE001861FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF001F6A3A6CB02C5FA32B5EA22B5EA22B5EA22B5EA22B5EA24779CA6093
              D8295CA02B5EA22B5EA22B5EA22B5EA22E61A53A6CB0001F6AFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF00226D3B6DB128579B2B5EA22B5EA22B5EA22B5EA2
              2B5EA24274C45B8ED42554982B5EA22B5EA22B5EA22B5EA22E61A53B6DB10022
              6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0024703D6FB42451952B5EA22B
              5EA22B5EA22B5EA22B5EA23F70BE578ACF214E922B5EA22B5EA22B5EA22B5EA2
              2E61A53D6FB4002470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0026723E70
              B51E498E2A5CA02B5EA22B5EA22B5EA22B5EA23B6BB95285CB1D478C2A5CA02B
              5EA22B5EA22B5EA22D60A43E70B5002672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0028754072B7183F842451962B5EA22B5EA22B5EA22B5EA23766B44E81
              C7173D812451962B5EA22B5EA22B5EA22D60A44072B7002875FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF002A784274B9133479193F84224F9328599D2B5EA2
              2B5EA23463AF4A7DC2113176193F84224F9328599D2B5EA22E61A54274B9002A
              78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002C7A4376BB0C296F0F307415
              3A7E1A43871D488C214F933261AD487BC00B276B0F3074153A7E1A43871D488C
              2451964376BB002C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002E7D4578
              BD477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF47
              7ABF477ABF477ABF142669142669002E7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF002F7F477ABF3260AC3260AC3160AC325FAB325FAC3160AB3463AE477A
              BF3260AC3260AC3160AB325FAC3160AB3166B45287D1002F7FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF003182497CC13265A6285B9F285B9F285B9F285B9F
              285B9F3462AF4A7DC22E61A2285B9F285B9F285B9F285B9F70A3EB84B7FC0031
              82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033844B7EC3295CA0275A9E27
              5A9E275A9E275A9E275A9E3A6AB85184CA26589C275A9E275A9E275A9E275A9E
              2B5EA24B7EC3003384FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0035864D80
              C525549826599D26599D26599D26599D26599D4172C2598CD2214F9326599D26
              599D26599D26599D2B5EA24D80C5003586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0036894E81C7204D9125589C25589C25589C25589C25589C497BCE6295
              DB1D488C25589C25589C25589C25589C2A5DA14E81C7003689FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF00388B5083C91C458A23559924579B24579B24579B
              24579B5286DC6C9FE518418423559924579B24579B24579B295CA05083C90038
              8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00398C5084CA163C7F1D4A8D23
              569A23569A23569A23569A5B90E675A8ED1337791D4A8D23569A23569A23569A
              295CA05084CA00398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003B8E5286
              CC0F2F7213397A1A478A1F5094225599225599629AF17DB0F50C2A6B13397A1A
              478A1F5094225599285B9F5286CC003B8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF003C905387CD0A266A0C2869123576153D7F1942851C488B67A0F882B5
              FA0722620C2A6B123576153D7F174083214E925387CD003C90FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF003D91598DD25F92D7699CE174A7EC7DB0F584B7FC
              84B7FC84B7FC82B5FA82B5FA82B5FA7CAFF473A6EB6A9DE26194D95B8FD4003D
              91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003E935085CC5D91D7689CE173
              A6EC7EB1F684B7FC84B7FC84B7FC82B5FA82B5FA82B5FA7BAEF373A6EC699DE2
              6093D95388CF003E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F94003F
              94003F94003F94003F94003F94003F94003F94003F94003F94003F94003F9400
              3F94003F94003F94003F94003F94003F94FFFFFFFFFFFFFFFFFF}
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn5Click
          end
        end
        object Button2: TButton
          Left = 137
          Top = 20
          Width = 60
          Height = 20
          Caption = 'Button2'
          TabOrder = 1
          Visible = False
        end
        object BitBtn11: TBitBtn
          Left = 4
          Top = 7
          Width = 94
          Height = 36
          Caption = 'Print D/O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF8F8F8F8F8F8F8F8F8F8F8F8
            F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAFAFAFDFDFDFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDCECECEB58158B4
            8056B48055B47F55B47F55B48055B48055B47F55B38056B48056B48056B58158
            CECECEEDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFAAABAB7171716E6F6F5B5B
            5B333333B18057F3DEC5F4DEC5F3DDC5F3DEC5F4DDC5F4DEC5F3DEC5F4DEC5F3
            DDC5F3DEC7B27F573333335A5B5B6E6F6F7171719E9F9FFFFFFFFFFFFF686868
            6162625E5F5F4849491B1B1BB38158F9EADAF8EADAF8EADAF8E9DAF8EADAF8EA
            DAF9EADAF9E9D9F8EADAF8E9DAB381581B1B1B4849495E5F5F616262646565FF
            FFFFFFFFFF8E8F8F878888838484636464232323B4845BFBF1E7FBF2E7FBF1E7
            FBF1E7FBF1E8FBF1E8FBF1E7FBF1E7FBF1E7FBF1E7B4835B2323236364648384
            848788888B8C8CFFFFFFFFFFFF9494958D8D8E89898A69696A272727B6875FFB
            F2E7FBF1E7FBF1E7FBF2E7FBF1E8FBF1E8FBF2E7FBF1E8FBF1E7FBF1E8B6865E
            27272769696A89898A8D8D8E919192FFFFFFFFFFFF9B9B9C9595969292937878
            7943434429292A26262726262726262726262726262726262726262726262726
            262726262729292A43434478787992929395959699999AFFFFFFFFFFFFA9A9AA
            A4A4A5A3A3A49898998484857A7A7B7979797979797979797979797979797979
            797979797979797979797979797A7A7B848485989899A3A3A4A4A4A5A7A7A8FF
            FFFFFFFFFFBCBCBCB8B8B8B8B8B8B7B7B7B4B4B4B3B3B3B3B3B3B3B3B3B3B3B3
            B3B3B3B3B3B3B3B3B30ACE220F8F1EB3B3B30ACE220F8F1EB4B4B4B7B7B7B8B8
            B8B8B8B8BBBBBBFFFFFFFFFFFFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCEAEAEAEAEAEACECECEFFFFFFFFFFFFDDDDDDDADADADADADADADA
            DA3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3E3F3F3F3F3E3F3F3F3F3F3E3F3F3F3F
            3F3F3E3F3F3F3F3F3E3F3FDADADAC4C4C4C4C4C5DCDCDCFFFFFFFFFFFFE0E0E0
            DEDEDEDEDEDEDEDEDE494949626262747474909090B0B0B0CECECFE3E4E3EBEB
            EBE0E0E0C7C8C7A8A8A88D8D8C7C7C7C494949DEDEDE8B8C8B8B8B8BE0E0E0FF
            FFFFFFFFFFD0D0D0CDCDCDCDCDCDCDCDCD535454626262757574909090B0B0B0
            CECECFE4E4E4EBEBEBE0E0E0C8C7C8A8A8A98C8D8D7C7C7C535354CDCDCDCDCD
            CDCDCDCDCFCFCFFFFFFFFFFFFF9797977070707070706F6F6F5E5E5E5E5D5E5D
            5D5D5E5E5E5E5E5E5E5E5E5E5E5E5E5D5D5E5E5E5E5E5D5E5D5E5E5E5E5E5E5E
            5E5E5E6F6F6F7070707070708E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090
            90777777CDA882F6EDE6F5EEE6F6EDE7F5EEE7F6EEE7F6EDE7F6EEE7F5EEE6F6
            EDE7F5EEE6CDA782777777909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF8C8C8C7A7A7ACFAB86F4EDE5F4EDE6F4EDE5F4EDE5F5EDE5F4ED
            E6F4EDE6F5EDE5F4EDE6F5EDE6CFAA867A7A7A8C8C8CFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A7C7B7CD1AD89F4ECE5F4ECE4F4ECE5
            F4ECE5F4ECE5F4ECE4F4ECE5F4ECE4F4ECE4F4ECE4D1AD897C7B7C8A8A8AFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888887C7C7CD3B08CF3
            EBE3F3EBE3F3EBE3F3EBE4F4EBE4F3ECE4F4ECE3F3EBE4F3EBE3F4EBE3D3B18C
            7C7C7C888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393
            937C7C7CD4B38FF1E9E0F2E9DFF2E9E0F2E9DFF2E8DFF2E9DFF2E9DFF1E9E0F2
            E9E0F2E9DFD5B38F7C7C7C939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF9F9F9868686D5B591EFE3D5F0E3D5F0E3D5EFE3D5EFE3D5EFE3
            D5F0E3D6EFE3D5F0E3D6F0E3D5D6B691868686F9F9F9FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D9BA96EEDFCDEEDFCDEEDFCD
            EEDFCDEEDFCDEEDECEEEDFCDEEDFCDEEDFCEEEDFCED9BB96F6F6F6FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBBC99DA
            BA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DBBC99
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn11Click
        end
      end
      object PartialHawbGRD: TwwDBGrid
        Left = 0
        Top = 38
        Width = 1182
        Height = 676
        Selected.Strings = (
          'FK_HAWB_ID_ORIGINAL'#9'12'#9'Hawb ID'
          'FK_HAWB_SERIAL_ORIGINAL'#9'10'#9'Hawb Origianal S/N'
          'MAWBIDORIGINAL'#9'15'#9'Mawb Id Original'
          'FK_MAWB_SERIAL_ORIGINAL'#9'15'#9'Mawb Ref Original'
          'DESCRIPTION'#9'25'#9'Description'
          'PARTIAL_DELIVERY_ORDER_ID'#9'14'#9'Delivery Order'
          'PARTIAL_PIECES'#9'5'#9'Pieces'
          'PARTIAL_WEIGHT'#9'6'#9'Weight')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 3
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = V_MawbDataDML.PartialHawbSRC
        KeyOptions = [dgAllowDelete]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 2
        TitleAlignment = taLeftJustify
        TitleFont.Charset = GREEK_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object SavedTs: TTabSheet
      Caption = 'Saved hawbs'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel32: TPanel
        Left = 0
        Top = 715
        Width = 1182
        Height = 45
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Panel33: TPanel
          Left = 1086
          Top = 0
          Width = 96
          Height = 45
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn9: TBitBtn
            Left = 20
            Top = 7
            Width = 73
            Height = 37
            Caption = 'Close'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFF0004450004450004450004450004450004450004450004450004450004
              45000445000445000445000445000445000445000445000445FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF000A4D3461A53F70B44B7DC15789CE5F91D66396DB
              6396DB6396DB6598DD6295DA6295DA5D90D55688CD4C7EC24374B83765A9000A
              4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0011563B6DB14174B84B7EC256
              89CE5E91D66396DB6396DB6396DB6598DD6295DA6295DA5D90D55689CE4D80C4
              4477BB3E70B4001156FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0018613869
              AE3366A72B5EA22B5EA22B5EA22B5EA22B5EA2497CCE6396DB3164A52B5EA22B
              5EA22B5EA22B5EA22D60A43869AE001861FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF001F6A3A6CB02C5FA32B5EA22B5EA22B5EA22B5EA22B5EA24779CA6093
              D8295CA02B5EA22B5EA22B5EA22B5EA22E61A53A6CB0001F6AFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF00226D3B6DB128579B2B5EA22B5EA22B5EA22B5EA2
              2B5EA24274C45B8ED42554982B5EA22B5EA22B5EA22B5EA22E61A53B6DB10022
              6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0024703D6FB42451952B5EA22B
              5EA22B5EA22B5EA22B5EA23F70BE578ACF214E922B5EA22B5EA22B5EA22B5EA2
              2E61A53D6FB4002470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0026723E70
              B51E498E2A5CA02B5EA22B5EA22B5EA22B5EA23B6BB95285CB1D478C2A5CA02B
              5EA22B5EA22B5EA22D60A43E70B5002672FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0028754072B7183F842451962B5EA22B5EA22B5EA22B5EA23766B44E81
              C7173D812451962B5EA22B5EA22B5EA22D60A44072B7002875FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF002A784274B9133479193F84224F9328599D2B5EA2
              2B5EA23463AF4A7DC2113176193F84224F9328599D2B5EA22E61A54274B9002A
              78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002C7A4376BB0C296F0F307415
              3A7E1A43871D488C214F933261AD487BC00B276B0F3074153A7E1A43871D488C
              2451964376BB002C7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF002E7D4578
              BD477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF477ABF47
              7ABF477ABF477ABF142669142669002E7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF002F7F477ABF3260AC3260AC3160AC325FAB325FAC3160AB3463AE477A
              BF3260AC3260AC3160AB325FAC3160AB3166B45287D1002F7FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF003182497CC13265A6285B9F285B9F285B9F285B9F
              285B9F3462AF4A7DC22E61A2285B9F285B9F285B9F285B9F70A3EB84B7FC0031
              82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0033844B7EC3295CA0275A9E27
              5A9E275A9E275A9E275A9E3A6AB85184CA26589C275A9E275A9E275A9E275A9E
              2B5EA24B7EC3003384FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0035864D80
              C525549826599D26599D26599D26599D26599D4172C2598CD2214F9326599D26
              599D26599D26599D2B5EA24D80C5003586FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF0036894E81C7204D9125589C25589C25589C25589C25589C497BCE6295
              DB1D488C25589C25589C25589C25589C2A5DA14E81C7003689FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF00388B5083C91C458A23559924579B24579B24579B
              24579B5286DC6C9FE518418423559924579B24579B24579B295CA05083C90038
              8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00398C5084CA163C7F1D4A8D23
              569A23569A23569A23569A5B90E675A8ED1337791D4A8D23569A23569A23569A
              295CA05084CA00398CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003B8E5286
              CC0F2F7213397A1A478A1F5094225599225599629AF17DB0F50C2A6B13397A1A
              478A1F5094225599285B9F5286CC003B8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF003C905387CD0A266A0C2869123576153D7F1942851C488B67A0F882B5
              FA0722620C2A6B123576153D7F174083214E925387CD003C90FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF003D91598DD25F92D7699CE174A7EC7DB0F584B7FC
              84B7FC84B7FC82B5FA82B5FA82B5FA7CAFF473A6EB6A9DE26194D95B8FD4003D
              91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003E935085CC5D91D7689CE173
              A6EC7EB1F684B7FC84B7FC84B7FC82B5FA82B5FA82B5FA7BAEF373A6EC699DE2
              6093D95388CF003E93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF003F94003F
              94003F94003F94003F94003F94003F94003F94003F94003F94003F94003F9400
              3F94003F94003F94003F94003F94003F94FFFFFFFFFFFFFFFFFF}
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn9Click
          end
        end
        object BitBtn15: TBitBtn
          Left = 255
          Top = 6
          Width = 97
          Height = 36
          Caption = 'Unselect All'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
            33333333333F8888883F33330000324334222222443333388F3833333388F333
            000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
            F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
            223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
            3338888300003AAAAAAA33333333333888888833333333330000333333333333
            333333333333333333FFFFFF000033333333333344444433FFFF333333888888
            00003A444333333A22222438888F333338F3333800003A2243333333A2222438
            F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
            22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
            33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
            3333333333338888883333330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          Visible = False
        end
        object BitBtn16: TBitBtn
          Left = 449
          Top = 6
          Width = 120
          Height = 36
          Caption = 'ClipBoard'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEC
            E532855F046C3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE0EDE7328861008B60007949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFD9EAE32C8861008D6700805279B196FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFD9EBE32A8C62008F6300825579B198FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEEEE832946D00916700865971B0
            95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEEE830987100926A
            00886072B499FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9EDE728
            9974009B7B008D637ABBA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFDEF0EA2FA17E00A99200997574BAA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFDFF1EC32A78800B4AD00A48671BCA5FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFDAF0EB2CA98B00C2C000AF9B78C2ABFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EA3
            EAC2D3F5FFFFFFFFFFFFC0D2F582A6E8EBF5F729AC9400CDD600B6AB79C5AEFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF467BE02464DBEEF3FDDFE8FA135BD93269D846ADB300D5E203C0
            BE87CCB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF568BE5109DEA3B74DF316EDD0CA5F0064BD3
            0ED1E712C9C8A6DACBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF7DB5F481B3F283B1F2347BE41BD7FA069DF30E
            ADF30ABBFB074ED81064DF2C64D594B2EBF3F7FDFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67A9F40C88EE27C8F61CC9
            F71BE1FE01CAFF02CCFF0FD0FE16B2F21BB4F10A5BDA749BE8FCFDFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
            80BBF724AFF51FE7FF00DFFF00DFFF00DBFF01DBFF0DD2FD2084E783A6EBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFC6E4FE1E97F528F3FE00F3FF00F2FF00EEFF00F2FF0AD7F9
            2073E4D4E2F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFA6DEFF26B6FF5EF0FE36F3FE2FFFFF00FFFF00
            FFFF17FBFF30F0FE42E3FA2480EAAECEF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22ADFF18ABFF47BFFF28B0
            FF4AF3FF1DFBFF3AFBFF1DF3FE248CF445A1F3177DEC378BEDECF4FEFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF59C4FF5EEBFF18B7FF23B8FF48EEFF55AFFAFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF4EBFFF1AB1FFA8DEFFA1DBFF1BB2FF52BFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF55C0FF95D7FFFFFFFFFF
            FFFF81CFFF4DBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 2
          OnClick = CopyToClipBoardBTNClick
        end
        object PrintWhatBTN: TRzBitBtn
          Left = 2
          Top = 6
          Width = 138
          Height = 36
          Alignment = taLeftJustify
          Caption = 'Print'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 3
          OnClick = PrintWhatBTNClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF8F8F8F8F8F8F8F8F8F8F8F8
            F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FAFAFAFDFDFDFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEDEDEDCECECEB58158B4
            8056B48055B47F55B47F55B48055B48055B47F55B38056B48056B48056B58158
            CECECEEDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFAAABAB7171716E6F6F5B5B
            5B333333B18057F3DEC5F4DEC5F3DDC5F3DEC5F4DDC5F4DEC5F3DEC5F4DEC5F3
            DDC5F3DEC7B27F573333335A5B5B6E6F6F7171719E9F9FFFFFFFFFFFFF686868
            6162625E5F5F4849491B1B1BB38158F9EADAF8EADAF8EADAF8E9DAF8EADAF8EA
            DAF9EADAF9E9D9F8EADAF8E9DAB381581B1B1B4849495E5F5F616262646565FF
            FFFFFFFFFF8E8F8F878888838484636464232323B4845BFBF1E7FBF2E7FBF1E7
            FBF1E7FBF1E8FBF1E8FBF1E7FBF1E7FBF1E7FBF1E7B4835B2323236364648384
            848788888B8C8CFFFFFFFFFFFF9494958D8D8E89898A69696A272727B6875FFB
            F2E7FBF1E7FBF1E7FBF2E7FBF1E8FBF1E8FBF2E7FBF1E8FBF1E7FBF1E8B6865E
            27272769696A89898A8D8D8E919192FFFFFFFFFFFF9B9B9C9595969292937878
            7943434429292A26262726262726262726262726262726262726262726262726
            262726262729292A43434478787992929395959699999AFFFFFFFFFFFFA9A9AA
            A4A4A5A3A3A49898998484857A7A7B7979797979797979797979797979797979
            797979797979797979797979797A7A7B848485989899A3A3A4A4A4A5A7A7A8FF
            FFFFFFFFFFBCBCBCB8B8B8B8B8B8B7B7B7B4B4B4B3B3B3B3B3B3B3B3B3B3B3B3
            B3B3B3B3B3B3B3B3B30ACE220F8F1EB3B3B30ACE220F8F1EB4B4B4B7B7B7B8B8
            B8B8B8B8BBBBBBFFFFFFFFFFFFCFCFCFCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCEAEAEAEAEAEACECECEFFFFFFFFFFFFDDDDDDDADADADADADADADA
            DA3F3F3F3F3F3F3F3F3F3F3F3F3E3F3F3E3F3F3F3F3E3F3F3F3F3F3E3F3F3F3F
            3F3F3E3F3F3F3F3F3E3F3FDADADAC4C4C4C4C4C5DCDCDCFFFFFFFFFFFFE0E0E0
            DEDEDEDEDEDEDEDEDE494949626262747474909090B0B0B0CECECFE3E4E3EBEB
            EBE0E0E0C7C8C7A8A8A88D8D8C7C7C7C494949DEDEDE8B8C8B8B8B8BE0E0E0FF
            FFFFFFFFFFD0D0D0CDCDCDCDCDCDCDCDCD535454626262757574909090B0B0B0
            CECECFE4E4E4EBEBEBE0E0E0C8C7C8A8A8A98C8D8D7C7C7C535354CDCDCDCDCD
            CDCDCDCDCFCFCFFFFFFFFFFFFF9797977070707070706F6F6F5E5E5E5E5D5E5D
            5D5D5E5E5E5E5E5E5E5E5E5E5E5E5E5D5D5E5E5E5E5E5D5E5D5E5E5E5E5E5E5E
            5E5E5E6F6F6F7070707070708E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090
            90777777CDA882F6EDE6F5EEE6F6EDE7F5EEE7F6EEE7F6EDE7F6EEE7F5EEE6F6
            EDE7F5EEE6CDA782777777909090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF8C8C8C7A7A7ACFAB86F4EDE5F4EDE6F4EDE5F4EDE5F5EDE5F4ED
            E6F4EDE6F5EDE5F4EDE6F5EDE6CFAA867A7A7A8C8C8CFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8A7C7B7CD1AD89F4ECE5F4ECE4F4ECE5
            F4ECE5F4ECE5F4ECE4F4ECE5F4ECE4F4ECE4F4ECE4D1AD897C7B7C8A8A8AFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888887C7C7CD3B08CF3
            EBE3F3EBE3F3EBE3F3EBE4F4EBE4F3ECE4F4ECE3F3EBE4F3EBE3F4EBE3D3B18C
            7C7C7C888888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9393
            937C7C7CD4B38FF1E9E0F2E9DFF2E9E0F2E9DFF2E8DFF2E9DFF2E9DFF1E9E0F2
            E9E0F2E9DFD5B38F7C7C7C939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF9F9F9868686D5B591EFE3D5F0E3D5F0E3D5EFE3D5EFE3D5EFE3
            D5F0E3D6EFE3D5F0E3D6F0E3D5D6B691868686F9F9F9FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D9BA96EEDFCDEEDFCDEEDFCD
            EEDFCDEEDFCDEEDECEEEDFCDEEDFCDEEDFCEEEDFCED9BB96F6F6F6FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBBC99DA
            BA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DABA96DBBC99
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Margin = -1
        end
      end
      object LowGRD: TwwDBGrid
        Left = 0
        Top = 113
        Width = 569
        Height = 602
        ControlType.Strings = (
          'FK_CLEARANCE_TYPE;CheckBox;Y;N'
          'FK_INVOICE_STATUS;CheckBox;1;0'
          'FK_CLEARING_STATE;CheckBox;1;0')
        Selected.Strings = (
          'HAB_ID'#9'13'#9'Hawb'
          'DESCRIPTION'#9'25'#9'Description'
          'CUSTOMER_NAME'#9'16'#9'Customer'
          'FK_CLEARING_STATE'#9'3'#9'Clr'
          'FK_INVOICE_STATUS'#9'3'#9'Inv'
          'INVOICE_AMOUNT'#9'9'#9'Invoice~Amount'
          'CURRENCY'#9'5'#9'Cur')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alLeft
        DataSource = V_MawbDataDML.HawbDiffSRC
        Font.Charset = GREEK_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleAlignment = taCenter
        TitleFont.Charset = GREEK_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = True
        OnCalcCellColors = MediumGRDCalcCellColors
        OnTitleButtonClick = LowGRDTitleButtonClick
        OnDblClick = MediumGRDDblClick
      end
      object Panel34: TPanel
        Left = 569
        Top = 113
        Width = 72
        Height = 602
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        object ToLeftBTN: TBitBtn
          Left = 33
          Top = 392
          Width = 39
          Height = 37
          Cancel = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDACACAC202020FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A0A0A011
            1111000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFEFEE8E8E8AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFE5E5
            E5717171080808000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9ADADAD4D4D4DB9B9B9FFFFFFFFFFFF
            FFFFFFE8E8E84E4E4E060606000000000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB7B7B7424242111111515151F0
            F0F0FFFFFFFDFDFDD5D5D5303030000000000000000000000000000000242424
            5E5E5E8F8F8FB3B3B3C6C6C6CACACABEBEBE9F9F9F6868682323230101010000
            00191919BABABAFFFFFFF6F6F6AAAAAA25252500000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000A0A0A939393FCFCFCFFFFFF9393931414140101010000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000C0C0C999999FAFAFAFFFFFFFFFFFF434343141414
            0101010000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000050505262626A3A3A3FCFCFCFFFFFFFFFFFFFF
            FFFFE5E5E5ACACAC252525000000000000000000000000000000000000000000
            0000000000000000000000000000000909093A3A3A818181D7D7D7FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD7D7D732323200000000000000000000
            00000000000606060B0B0B1B1B1B3636365C5C5C8F8F8FCFCFCFE8E8E8FCFCFC
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E94F4F
            4F060606000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE5E5E5737373080808000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6A0A0A0111111000000FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDAB
            ABAB202020FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 0
          OnClick = ToLeftBTNClick
        end
        object ToRightBTN: TBitBtn
          Left = -2
          Top = 86
          Width = 37
          Height = 37
          Cancel = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFC1C1C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020ABABABFDFDFDFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD4D4D4E8E8E8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000001111119F9F9F
            F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363634E4E4EADADADF9F9F9FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000000000080808727272E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFBFBFBF535353
            111111434343B6B6B6FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF0000000000000000000505054E4E4EE8E8E8FFFFFFFFFFFFFF
            FFFFFCFCFCBBBBBB1A1A1A0000000101012323236868689E9E9EBEBEBECACACA
            C7C7C7B4B4B48F8F8F5E5E5E2424240000000000000000000000000000003030
            30D5D5D5FCFCFCFFFFFFFFFFFFFCFCFC9494940A0A0A00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000252525AAAAAAFAFAFAFFFFFFFFFFFFFBFBFB9A9A9A0C0C
            0C00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010101141414929292FFFFFFFFFFFF
            FFFFFFFCFCFCA5A5A52727270505050000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001010113131392
            9292FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D78181813B3B3B090909000000
            0000000000000000000000000000000000000000000000000000000000000000
            00242424ABABABFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCE9
            E9E9CFCFCF8F8F8F5C5C5C3636361B1B1B0C0C0C060606000000000000000000
            000000000000323232D6D6D6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            00000000000000000606064F4F4FE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000000000080808737373E5E5E5FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000111111A0A0A0F6F6F6FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF202020AAAAAAFDFDFD
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2
            C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 1
          OnClick = ToRightBTNClick
        end
      end
      object HighGRD: TwwDBGrid
        Left = 641
        Top = 113
        Width = 541
        Height = 602
        ControlType.Strings = (
          'FK_CLEARANCE_TYPE;CheckBox;Y;N'
          'FK_INVOICE_STATUS;CheckBox;1;0'
          'FK_CLEARING_STATE;CheckBox;1;0')
        Selected.Strings = (
          'HAB_ID'#9'13'#9'Hawb'
          'DESCRIPTION'#9'22'#9'Description'
          'CUSTOMER_NAME'#9'16'#9'Customer'
          'FK_CLEARING_STATE'#9'3'#9'Clr'
          'FK_INVOICE_STATUS'#9'3'#9'Inv'
          'INVOICE_AMOUNT'#9'8'#9'Invoice~Amount'
          'CURRENCY'#9'3'#9'Cur')
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = V_MawbDataDML.HawbIm4SRC
        Font.Charset = GREEK_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        TitleAlignment = taCenter
        TitleFont.Charset = GREEK_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = True
        OnTitleButtonClick = HighGRDTitleButtonClick
        OnDblClick = HighGRDDblClick
      end
      object Panel31: TRzPanel
        Left = 0
        Top = 0
        Width = 1182
        Height = 113
        Align = alTop
        TabOrder = 0
        object wwIncrementalSearch5: TwwIncrementalSearch
          Left = 200
          Top = 7
          Width = 98
          Height = 23
          SearchField = 'hab_id'
          TabOrder = 0
        end
        object RzPanel2: TRzPanel
          Left = 2
          Top = 2
          Width = 1178
          Height = 33
          Align = alTop
          BorderOuter = fsNone
          TabOrder = 1
          object RzPanel3: TRzPanel
            Left = 0
            Top = 0
            Width = 639
            Height = 33
            Align = alLeft
            BorderOuter = fsNone
            TabOrder = 0
            object clrLbl: TLabel
              Left = 0
              Top = 0
              Width = 182
              Height = 33
              Align = alLeft
              AutoSize = False
              Caption = 'Status C'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label22: TLabel
              Left = 170
              Top = 12
              Width = 74
              Height = 15
              Caption = 'Search Hawb'
              Font.Charset = GREEK_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object wwDBGrid2: TwwDBGrid
              Left = 0
              Top = 0
              Width = 145
              Height = 1
              IniAttributes.Delimiter = ';;'
              IniAttributes.UnicodeIniFile = False
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              TabOrder = 0
              TitleAlignment = taLeftJustify
              TitleFont.Charset = GREEK_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
            end
            object wwIncrementalSearch1: TwwIncrementalSearch
              Left = 259
              Top = 5
              Width = 99
              Height = 23
              DataSource = V_MawbDataDML.HawbDiffSRC
              SearchField = 'hab_id'
              Color = clWhite
              TabOrder = 1
            end
          end
          object RzPanel4: TRzPanel
            Left = 639
            Top = 0
            Width = 472
            Height = 33
            Align = alLeft
            BorderOuter = fsNone
            TabOrder = 1
            object Label32: TLabel
              Left = 0
              Top = 0
              Width = 111
              Height = 33
              Align = alLeft
              AutoSize = False
              Caption = 'HIgh Value'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -21
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
              ExplicitLeft = 6
              ExplicitTop = 2
              ExplicitHeight = 23
            end
            object Label23: TLabel
              Left = 160
              Top = 9
              Width = 74
              Height = 15
              Caption = 'Search Hawb'
              Font.Charset = GREEK_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object wwIncrementalSearch2: TwwIncrementalSearch
              Left = 241
              Top = 5
              Width = 99
              Height = 23
              DataSource = V_MawbDataDML.HawbIm4SRC
              SearchField = 'hab_id'
              Color = clWhite
              TabOrder = 0
            end
          end
        end
        object clrRGP: TRzRadioGroup
          Left = 2
          Top = 35
          Width = 185
          Height = 76
          Align = alLeft
          Caption = 'Clearing'
          Font.Charset = GREEK_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 14
          Items.Strings = (
            'Low Value '
            'Medium Value'
            'Status C')
          ParentFont = False
          TabOrder = 2
          VerticalSpacing = 6
          OnChanging = clrRGPChanging
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 8
    object Reports1: TMenuItem
      Caption = '&Reports'
      object LowValueDocumentsDeliveryOrder1: TMenuItem
        Caption = '&Low Value && Documents Delivery Order'
        OnClick = LowValueDocumentsDeliveryOrder1Click
      end
      object MediumValueConsolidatedDeliveryOrder1: TMenuItem
        Caption = '&Medium Value Consolidated Items Delivery Order'
        OnClick = MediumValueConsolidatedDeliveryOrder1Click
      end
      object HighValueItemsDeliveryOrder1: TMenuItem
        Caption = '&High Value Items Delivery Order'
        OnClick = HighValueItemsDeliveryOrder1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object HawbsToReceive1: TMenuItem
        Caption = 'IT2 '
        OnClick = HawbsToReceive1Click
      end
      object HawbsOnFlight1: TMenuItem
        Caption = 'Hawbs On Flight'
        OnClick = HawbsOnFlight1Click
      end
    end
    object PrintSelection1: TMenuItem
      Caption = 'Print '
      object DeliverySelected1: TMenuItem
        Caption = 'Delivery  Selected'
        OnClick = DeliverySelected1Click
      end
      object PrintDeliverySelectedDirectly1: TMenuItem
        Caption = 'Delivery Selected - Directly Print'
        OnClick = PrintDeliverySelectedDirectly1Click
      end
      object EDESelected1: TMenuItem
        Caption = 'EDE - Selected'
        OnClick = EDESelected1Click
      end
      object WorksheetSelected1: TMenuItem
        Caption = 'Worksheet - Selected'
        OnClick = WorksheetSelected1Click
      end
      object EDESelectedTEST1: TMenuItem
        Caption = 'Print Complete Set New'
        OnClick = EDESelectedTEST1Click
      end
      object PrintCompleteSet1: TMenuItem
        Caption = 'Print Complete Set'
        OnClick = PrintCompleteSet1Click
      end
    end
    object PrintInvoices1: TMenuItem
      Caption = 'Print Invoices'
      object Selected1: TMenuItem
        Caption = 'Selected'
        OnClick = Selected1Click
      end
    end
    object GenerateInvoices1: TMenuItem
      Caption = 'Generate Invoices'
      object GenerateInvoices2: TMenuItem
        Caption = 'Generate Invoices'
        OnClick = GenerateInvoices2Click
      end
    end
    object XML1: TMenuItem
      Caption = 'XML'
      object CreateWarehouseXML1: TMenuItem
        Caption = 'Create Warehouse XML'
        OnClick = CreateWarehouseXML1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      OnClick = Help1Click
    end
  end
  object ImageList2: TImageList
    Left = 1217
    Top = 91
    Bitmap = {
      494C010102000400040210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A4710058A4710058A4710058A4710058A4710058A471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEF1D9005ACD990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A3700085BD9D0085BD9D0085BD9D0085BD9D0056A26E000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B6F22005ED09D005ED09D001B6F2200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000053A069008CD8B600BEE9D600BEE9D6009BD4B500509E67000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4E9C90067D2A20067D2A20067D2A20067D2A20057C690000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000509D650092DBBA00B8E7D200B8E7D20096D3B2004D9B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024762D006DD4A6006DD4A6006DD4A6006DD4A6006DD4A6006DD4A6002476
      2D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000049975C0099DEC000ABE4CB00ABE4CB008CD2AE0046955A000000
      00000000000000000000000000000000000000000000000000000000000084E0
      B6007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7
      AD0058BA8400FBFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000459357009ADFC000A5E2C700A5E2C70087D1AC00429155000000
      0000000000000000000000000000000000000000000000000000000000002F80
      3B002F803B002F803B0080D9B10080D9B10080D9B10068CD9D002F803B002F80
      3B002F803B00EBEEED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E8C4E0094DDBD0096DEBE0096DEBE007AD0A6003B8A4B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000398948008FDDBA008FDDBA008FDDBA0075D0A300368745000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000398948008FDDBA008FDDBA008FDDBA0075D0A300368745000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E8C4E0094DDBD0096DEBE0096DEBE007AD0A6003B8A4B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F80
      3B002F803B002F803B0080D9B10080D9B10080D9B10068CD9D002F803B002F80
      3B002F803B00EBEEED0000000000000000000000000000000000000000000000
      000000000000459357009ADFC000A5E2C700A5E2C70087D1AC00429155000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000084E0
      B6007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7AD007AD7
      AD0058BA8400FBFCFC0000000000000000000000000000000000000000000000
      00000000000049975C0099DEC000ABE4CB00ABE4CB008CD2AE0046955A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024762D006DD4A6006DD4A6006DD4A6006DD4A6006DD4A6006DD4A6002476
      2D00000000000000000000000000000000000000000000000000000000000000
      000000000000509D650092DBBA00B8E7D200B8E7D20096D3B2004D9B63000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A4E9C90067D2A20067D2A20067D2A20067D2A20057C690000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000053A069008CD8B600BEE9D600BEE9D6009BD4B500509E67000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B6F22005ED09D005ED09D001B6F2200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A3700085BD9D0085BD9D0085BD9D0085BD9D0056A26E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BEF1D9005ACD990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000058A4710058A4710058A4710058A4710058A4710058A471000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F81FFE7F00000000
      F81FFC3F00000000F81FF81F00000000F81FF00F00000000F81FE00300000000
      F81FE00300000000F81FF81F00000000F81FF81F00000000E003F81F00000000
      E003F81F00000000F00FF81F00000000F81FF81F00000000FC3FF81F00000000
      FE7FF81F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object DbImages: TImageList
    Left = 618
    Top = 29
    Bitmap = {
      494C010118008800E80110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000007000000001002000000000000070
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000993300009933
      0000993300000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000099999900999999009999
      9900999999000000000000000000000000000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000993300000000000099330000CC660000CC660000CC66
      000099330000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00999999000000000099999900CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC66000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC66000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC0099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000993300000000000099330000CC660000CC660000CC66
      000099330000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00999999000000000099999900CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000993300009933
      0000993300000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000099999900999999009999
      9900999999000000000000000000000000000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000CC660000CC66000099330000993300009933
      0000993300009933000000000000000000000000000000000000999999009999
      9900999999009999990099999900CCCCCC00CCCCCC0099999900999999009999
      9900999999009999990000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900999999000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000993300009933
      0000993300009933000099330000CC660000CC66000099330000993300009933
      0000993300009933000000000000000000000000000000000000999999009999
      9900999999009999990099999900CCCCCC00CCCCCC0099999900999999009999
      9900999999009999990000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000099330000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000CC660000CC66
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC6600009933
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900000000000000000099999900CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000993300000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC009999990000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CC9966009933000099330000CC9966000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2009999990099999900B2B2B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      000099330000CC660000CC660000993300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00999999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC66000099330000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000099330000CC9966000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990099999900B2B2B2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000993300000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00999999000000000000000000000000000000
      00000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000000000009933000099330000993300009933
      00009933000099330000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000000000009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000099330000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      00009933000099330000CC660000CC660000CC66000099330000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC009999990099999900CCCCCC00CCCCCC00CCCCCC0099999900000000000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC6600009933
      0000000000000000000099330000CC660000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000099999900CCCCCC009999
      9900000000000000000099999900CCCCCC00CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000099330000CC6600009933
      0000CC99660000000000000000000000000000000000CC99660099330000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC009999
      9900B2B2B20000000000000000000000000000000000B2B2B20099999900CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000993300000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000099999900999999000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      99000000000000000000000000000000000000000000CC99660099330000CC66
      000099330000CC99660000000000CC9966009933000099330000CC6600009933
      0000CC660000CC660000993300000000000000000000B2B2B20099999900CCCC
      CC0099999900B2B2B20000000000B2B2B2009999990099999900CCCCCC009999
      9900CCCCCC00CCCCCC0099999900000000000000000000000000000000000000
      00000000000000000000000000000000000099330000CC660000CC660000CC66
      0000993300000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000993300009933000099330000CC660000CC66000099330000CC99
      660099330000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999009999990099999900CCCCCC00CCCCCC0099999900B2B2
      B20099999900CCCCCC0099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      000099330000CC660000CC660000CC6600009933000099330000000000000000
      0000000000009933000099330000000000000000000000000000000000009999
      990099999900CCCCCC00CCCCCC00CCCCCC009999990099999900000000000000
      0000000000009999990099999900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000CC996600993300009933000099330000CC99660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200999999009999990099999900B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      0000993300000000000000000000000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00999999000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      9900000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000700000000100010000000000800300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF87C387C3FFFFFFFF83838383FFFFFFFFC107C107
      C003C003E00FE00FC003C003F01FF01FC003C003F83FF83FC003C003F01FF01F
      FFFFFFFFE00FE00FFFFFFFFFC107C107FFFFFFFF83838383FFFFFFFF87C387C3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FC3FFC3FFFFFFFFFFC3FFC3FFFFFFFFFFC3FFC3FFFFFFFFFFC3FFC3FFFFFFFFF
      C003C003C003C003C003C003C003C003C003C003C003C003C003C003C003C003
      FC3FFC3FFFFFFFFFFC3FFC3FFFFFFFFFFC3FFC3FFFFFFFFFFC3FFC3FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F3FFF3FFF0FFF0FFE1FFE1FFE0FFE0FFC0FFC0FFC0FFC0FF807F807F83018301
      803F803F870187018C1F8C1F8F818F819E0F9E0F87818781FF07FF0782018201
      FF83FF83C001C001FFC3FFC3E039E039FFE3FFE3F07FF07FFFF3FFF3FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFC7FFE3FFE3FF87FF87FFE1FFE1FF07FF07FFE0FFE0F
      E001E00180078007C001C001800380038001800180018001C001C00180038003
      E001E00180078007F07FF07FFE0FFE0FF87FF87FFE1FFE1FFC7FFC7FFE3FFE3F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F0FFF0FFF3FFF3FFE0FFE0FFE1FFE1FFC0FFC0FFC0FFC0FF83018301807F807F
      87018701803F803F8F818F818C1F8C1F878187819E0F9E0F82018201FF07FF07
      C001C001FF83FF83E039E039FFC3FFC3F07FF07FFFE3FFE3FFFFFFFFFFF3FFF3
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFC7FFC7FFE3FFE3FF87FF87FFE1FFE1FF07FF07FFE0FFE0F
      E001E00180078007C001C001800380038001800180018001C001C00180038003
      E001E00180078007F07FF07FFE0FFE0FF87FF87FFE1FFE1FFC7FFC7FFE3FFE3F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object EmptyRep: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = EmptyRepBeforePrint
    DeviceType = 'Printer'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    SavePrinterSetup = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 32
    Top = 65520
    Version = '18.01'
    mmColumnWidth = 0
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
