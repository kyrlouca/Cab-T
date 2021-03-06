object LN_ListBaseTariffsFRM: TLN_ListBaseTariffsFRM
  Left = 192
  Top = 210
  Caption = 'Instructor'
  ClientHeight = 741
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 878
    Height = 53
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 876
      Height = 51
      Align = alClient
      Alignment = taCenter
      Caption = 'Default Tariff Lines'
      ExplicitWidth = 249
      ExplicitHeight = 32
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 878
    Height = 39
    Align = alTop
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 92
    Width = 878
    Height = 606
    Align = alClient
    TabOrder = 3
    object Grid1: TwwDBGrid
      Left = 41
      Top = 1
      Width = 664
      Height = 604
      ControlType.Strings = (
        'CHARGING_METHOD;CustomEdit;wwDBComboBox3;F'
        'TARIFF_USAGE;CustomEdit;DispUsageFLD;F')
      Selected.Strings = (
        'SERIAL_NUMBER'#9'5'#9'S/N'
        'CODE'#9'6'#9'Code'
        'FK_DUTY_TYPE'#9'9'#9'Duty Type'
        'ORDER_NUMBER'#9'8'#9'Order No'
        'DESCRIPTION'#9'16'#9'Description'
        'CHARGING_METHOD'#9'26'#9'Charging Method'
        'CAN_BE_RELIEVED'#9'11'#9'Can Releive'
        'TARIFF_RATE'#9'10'#9'Tariff Rate')
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alLeft
      Color = 12713983
      DataSource = DetailSRC
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = Grid1DblClick
      object wwDBComboBox3: TwwDBComboBox
        Left = 352
        Top = 85
        Width = 144
        Height = 22
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'CHARGING_METHOD'
        DataSource = DetailSRC
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'Per Unit'#9'UN'
          'Per Item'#9'IT'
          'Per Weight'#9'WG'
          'Value'#9'VA')
        ItemIndex = 3
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object DispUsageFLD: TwwDBComboBox
        Left = 178
        Top = 93
        Width = 112
        Height = 22
        ShowButton = True
        Style = csDropDownList
        MapList = True
        AllowClearKey = False
        AutoDropDown = True
        ShowMatchText = True
        DropDownCount = 8
        ItemHeight = 0
        ItemIndex = 0
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object HelpFDL: TwwDBRichEdit
        Left = 104
        Top = 117
        Width = 329
        Height = 140
        AutoURLDetect = False
        Font.Charset = GREEK_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        GutterWidth = 3
        HideSelection = False
        ParentFont = False
        PrintJobName = 'TariffsProject - RAD Studio 10.2 - LN_ListDutyEntries2 [Built]'
        TabOrder = 2
        Visible = False
        EditorOptions = [reoShowLoad, reoShowSaveExit, reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
        EditorCaption = 'Edit Rich Text'
        EditorPosition.Left = 0
        EditorPosition.Top = 0
        EditorPosition.Width = 0
        EditorPosition.Height = 0
        MeasurementUnits = muInches
        PrintMargins.Top = 1.000000000000000000
        PrintMargins.Bottom = 1.000000000000000000
        PrintMargins.Left = 1.000000000000000000
        PrintMargins.Right = 1.000000000000000000
        PrintHeader.VertMargin = 0.500000000000000000
        PrintHeader.Font.Charset = DEFAULT_CHARSET
        PrintHeader.Font.Color = clWindowText
        PrintHeader.Font.Height = -11
        PrintHeader.Font.Name = 'Tahoma'
        PrintHeader.Font.Style = []
        PrintFooter.VertMargin = 0.500000000000000000
        PrintFooter.Font.Charset = DEFAULT_CHARSET
        PrintFooter.Font.Color = clWindowText
        PrintFooter.Font.Height = -11
        PrintFooter.Font.Name = 'Tahoma'
        PrintFooter.Font.Style = []
        DoubleBuffered = False
        ParentDoubleBuffered = False
        RichEditVersion = 2
        Data = {
          070100007B5C727466315C616E73695C616E7369637067313235335C64656666
          305C6465666C616E67313033327B5C666F6E7474626C7B5C66305C6673776973
          735C66636861727365743020417269616C3B7D7D0D0A5C766965776B696E6434
          5C7563315C706172645C6C616E67313033335C625C66305C6673323820446566
          61756C7420546172696666735C62305C667331365C7061720D0A5768656E2074
          68652075736572206973206372656174696E672061205C69204E4F524D414C20
          5C6930207461726966662C2074686573652064656661756C7420746172696666
          735F6C696E6573206172652063726561746564206175746F6D61746963616C6C
          795C7061720D0A7D0D0A00}
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 40
      Height = 604
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
    end
    object AcceptBTN: TBitBtn
      Left = 727
      Top = 6
      Width = 89
      Height = 34
      Caption = 'Add'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = AcceptBTNClick
    end
    object EditBTN: TBitBtn
      Left = 727
      Top = 46
      Width = 89
      Height = 34
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000074120000741200000000000000000000FFFFFFF8F8F8
        FBFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD0CFCF393939454133869297D0E9F3E4F8FFF4FCFFFBFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEEF0F08988874B454460747995D1E4A4EBFF99
        E2FF97E1FFDBF3FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F8948B87787A7A95B9
        C3B6F1FFB3EEFFB3EEFFB5EFFFA7E2FFE4F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFB
        889BA2A2C4CFB9ECFABCF2FFBBEFFFC1F1FFBEEFFFA1E3FF99DBFFE8F7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFFFFA6DBF2C0F5FFC6F5FFC5F2FFCAF4FFCEF5FFBAEDFF90DAFB
        8CDBFD9DDCFFEDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4E8FFBCEDFFD0F6FFD6F8FFD8F8FFC8
        F2FF98DAFE6EC8F775CEF58DDBFCA1DEFFEFF8FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1E6FFC6F0FFDCF9
        FFDDFAFFC8F0FF97D7FF5EB8FC5BB9F967C4F579D1F78DDAFCA4DFFFF4FBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D5F1FFB0E5FFAFE4FDA1DDFD79C8FD42A5FF44A5FF51B1FD5CBBF968C4F679CF
        F58DDAFDA6E0FFF9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFC2E6FA46B2F130A3F32498F6319CFB3CA1FF46A8FF
        52B0FD5EBBF969C5F679D0F68EDAFCA8E0FFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3D7F51E99EC239AF22C
        9CF7359EFC3DA1FF48A8FF54B2FC5FBDF96BC5F67AD0F78DDBFCACE1FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF9ED5F61F9BEE259BF32E9DF8369FFD3EA3FF49ABFF55B4FC61BEF96BC8F67C
        D3F790DCFDB1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF97D1F61E9AED269BF42F9DFA389FFD41A4FF4DAC
        FF57B6FC63C0F76FC9F583D6F88FDBFEB7E4FFFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90CEF41E9AEF279BF5
        309DFA399FFD42A5FF4EADFF58B7FB64C0F770CAF684D6F88CDBFFDFEFF7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF8ECEF41E99EE279BF5309CFA389FFE43A4FF4DADFF59B8FA64C2F771CCF6
        8DD5F45D7F87797978FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF8CCDF51F99EF289AF5319CFA399FFE42A4FF4F
        AEFE59B8FC6CC5F86BA9C74B4A4A2B2B2B5C5C5CF7F7FCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFF8BCCF41F99F0289A
        F5309DFA39A0FE41A4FF50AFFF7DBEEEA6A9AE5F5F6039393A3D3D3C7472D9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FAFDFF8CCDF42099EE289AF52C9CFC3BA3FE8EC9FDE4EAF4AEAEB16C6C6E6F6F
        715D5A8C675FDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF9FDFF83C8F41697F0449EE386ACCEB1B1B4ABABAF
        919194BABABEA8A6B17D6FD97064D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFFC8D6DEBAB9B98C
        8C8C626262818182CACACDEEECF69A88DB836ED47C6BC8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFBFBDEDDDCC3C3C3939393929094BAB1CAAE99D89277CC8067BE9B8CCBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8AAA8B27C6C9D866AB3977BBF8D6EB98164
        B1836DB4E8E4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F7A799C37359A0
        7458A1795EA39A87BCE5E1EFFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF7F6FAE1DCEBD5CCE2DDD7E8F9F8FBFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 3
      OnClick = EditBTNClick
    end
    object DeleteBTN: TBitBtn
      Left = 727
      Top = 86
      Width = 89
      Height = 34
      Caption = 'Delete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnClick = DeleteBtnClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 698
    Width = 878
    Height = 43
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 703
    object Panel11: TRzPanel
      Left = 785
      Top = 1
      Width = 92
      Height = 41
      Align = alRight
      BorderOuter = fsNone
      TabOrder = 0
      Transparent = True
      ExplicitLeft = 1016
      ExplicitTop = 2
      ExplicitHeight = 45
      object BitBtn1: TBitBtn
        Left = 11
        Top = 4
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
        OnClick = BitBtn1Click
      end
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 609
    Top = 157
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 672
    Top = 169
  end
  object DetailSRC: TIBCDataSource
    DataSet = DetailSQL
    Left = 120
    Top = 428
  end
  object DetailSQL: TIBCQuery
    UpdatingTable = 'BASE_TARIFF'
    KeyFields = 'serial_number'
    KeyGenerator = 'GEN_BASE_TARIFF'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO BASE_TARIFF'
      
        '  (SERIAL_NUMBER, FK_DUTY_TYPE, CODE, DESCRIPTION, ACCOUNT_CATEG' +
        'ORY, REGIONAL_CODE, TARIFF_USAGE, CHARGING_METHOD, IS_BY_DEFAULT' +
        ', IS_VAT_APPLIES, CAN_BE_RELIEVED, ORDER_NUMBER, IS_ACTIVE, TARI' +
        'FF_RATE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_DUTY_TYPE, :CODE, :DESCRIPTION, :ACCOUNT_' +
        'CATEGORY, :REGIONAL_CODE, :TARIFF_USAGE, :CHARGING_METHOD, :IS_B' +
        'Y_DEFAULT, :IS_VAT_APPLIES, :CAN_BE_RELIEVED, :ORDER_NUMBER, :IS' +
        '_ACTIVE, :TARIFF_RATE)')
    SQLDelete.Strings = (
      'DELETE FROM BASE_TARIFF'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE BASE_TARIFF'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_DUTY_TYPE = :FK_DUTY_TYPE, ' +
        'CODE = :CODE, DESCRIPTION = :DESCRIPTION, ACCOUNT_CATEGORY = :AC' +
        'COUNT_CATEGORY, REGIONAL_CODE = :REGIONAL_CODE, TARIFF_USAGE = :' +
        'TARIFF_USAGE, CHARGING_METHOD = :CHARGING_METHOD, IS_BY_DEFAULT ' +
        '= :IS_BY_DEFAULT, IS_VAT_APPLIES = :IS_VAT_APPLIES, CAN_BE_RELIE' +
        'VED = :CAN_BE_RELIEVED, ORDER_NUMBER = :ORDER_NUMBER, IS_ACTIVE ' +
        '= :IS_ACTIVE, TARIFF_RATE = :TARIFF_RATE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_DUTY_TYPE, CODE, DESCRIPTION, ACCOUNT_C' +
        'ATEGORY, REGIONAL_CODE, TARIFF_USAGE, CHARGING_METHOD, IS_BY_DEF' +
        'AULT, IS_VAT_APPLIES, CAN_BE_RELIEVED, ORDER_NUMBER, IS_ACTIVE, ' +
        'TARIFF_RATE FROM BASE_TARIFF'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM BASE_TARIFF'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM BASE_TARIFF'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'BASE_TARIFF'
      'Order by ORDER_NUmber')
    DetailFields = 'FK_DUTY_TYPE'
    Active = True
    Left = 57
    Top = 261
    object TableSQLSERIAL_NUMBER: TIntegerField
      DisplayLabel = 'S/N'
      DisplayWidth = 5
      FieldName = 'SERIAL_NUMBER'
    end
    object TableSQLCODE: TStringField
      DisplayLabel = 'Code'
      DisplayWidth = 6
      FieldName = 'CODE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object DetailSQLFK_DUTY_TYPE: TStringField
      DisplayLabel = 'Duty Type'
      DisplayWidth = 9
      FieldName = 'FK_DUTY_TYPE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object TableSQLORDER_NUMBER: TFloatField
      DisplayLabel = 'Order No'
      DisplayWidth = 8
      FieldName = 'ORDER_NUMBER'
    end
    object StringField1: TStringField
      DisplayLabel = 'Description'
      DisplayWidth = 16
      FieldName = 'DESCRIPTION'
      FixedChar = True
      Size = 15
    end
    object DetailSQLCHARGING_METHOD: TStringField
      DisplayLabel = 'Charging Method'
      DisplayWidth = 26
      FieldName = 'CHARGING_METHOD'
      Required = True
      FixedChar = True
      Size = 3
    end
    object TableSQLCAN_BE_RELIEVED: TStringField
      DisplayLabel = 'Can Releive'
      DisplayWidth = 11
      FieldName = 'CAN_BE_RELIEVED'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DetailSQLTARIFF_RATE: TFloatField
      DisplayLabel = 'Tariff Rate'
      DisplayWidth = 10
      FieldName = 'TARIFF_RATE'
      DisplayFormat = '0.00'
    end
    object DetailSQLTARIFF_USAGE: TStringField
      DisplayLabel = 'Usage'
      DisplayWidth = 15
      FieldName = 'TARIFF_USAGE'
      Visible = False
      FixedChar = True
      Size = 3
    end
    object TableSQLACCOUNT_CATEGORY: TStringField
      DisplayLabel = 'Account'
      DisplayWidth = 8
      FieldName = 'ACCOUNT_CATEGORY'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object TableSQLREGIONAL_CODE: TStringField
      DisplayLabel = 'Regional'
      DisplayWidth = 8
      FieldName = 'REGIONAL_CODE'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object StringField2: TStringField
      DisplayLabel = 'Active'
      DisplayWidth = 5
      FieldName = 'IS_ACTIVE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object DetailSQLIS_VAT_APPLIES: TStringField
      FieldName = 'IS_VAT_APPLIES'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object DetailSQLIS_BY_DEFAULT: TStringField
      FieldName = 'IS_BY_DEFAULT'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object MakeSQL: TIBCQuery
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO BASE_TARIFF'
      
        '  (SERIAL_NUMBER, CODE, DESCRIPTION, ACCOUNT_CATEGORY, REGIONAL_' +
        'CODE, IS_CUSTOMS, IS_BASIC, IS_VAT_APPLY, CAN_BE_RELIEVED, IS_TH' +
        'E_VAT, IS_PER_UNIT, ORDER_NUMBER, IS_ACTIVE, UNIT_TYPE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :CODE, :DESCRIPTION, :ACCOUNT_CATEGORY, :REGI' +
        'ONAL_CODE, :IS_CUSTOMS, :IS_BASIC, :IS_VAT_APPLY, :CAN_BE_RELIEV' +
        'ED, :IS_THE_VAT, :IS_PER_UNIT, :ORDER_NUMBER, :IS_ACTIVE, :UNIT_' +
        'TYPE)')
    SQLDelete.Strings = (
      'DELETE FROM BASE_TARIFF'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE BASE_TARIFF'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, CODE = :CODE, DESCRIPTION = :D' +
        'ESCRIPTION, ACCOUNT_CATEGORY = :ACCOUNT_CATEGORY, REGIONAL_CODE ' +
        '= :REGIONAL_CODE, IS_CUSTOMS = :IS_CUSTOMS, IS_BASIC = :IS_BASIC' +
        ', IS_VAT_APPLY = :IS_VAT_APPLY, CAN_BE_RELIEVED = :CAN_BE_RELIEV' +
        'ED, IS_THE_VAT = :IS_THE_VAT, IS_PER_UNIT = :IS_PER_UNIT, ORDER_' +
        'NUMBER = :ORDER_NUMBER, IS_ACTIVE = :IS_ACTIVE, UNIT_TYPE = :UNI' +
        'T_TYPE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, CODE, DESCRIPTION, ACCOUNT_CATEGORY, REGIO' +
        'NAL_CODE, IS_CUSTOMS, IS_BASIC, IS_VAT_APPLY, CAN_BE_RELIEVED, I' +
        'S_THE_VAT, IS_PER_UNIT, ORDER_NUMBER, IS_ACTIVE, UNIT_TYPE FROM ' +
        'BASE_TARIFF'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM BASE_TARIFF'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM BASE_TARIFF'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = ReadTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'BASE_TARIFF'
      'order by Code')
    ReadOnly = True
    Active = True
    Left = 409
    Top = 37
  end
  object IBCScript1: TIBCScript
    Left = 665
    Top = 341
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 40
    object Help1: TMenuItem
      Caption = 'Help'
      OnClick = Help1Click
    end
  end
end
