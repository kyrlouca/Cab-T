object U_GenerateInvFRM: TU_GenerateInvFRM
  Left = 0
  Top = 0
  Caption = 'U_GenerateInvFRM'
  ClientHeight = 487
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 487
    Align = alClient
    TabOrder = 0
    object StaticText1: TStaticText
      Left = 7
      Top = 89
      Width = 46
      Height = 17
      Caption = 'Mawb ID'
      TabOrder = 0
    end
    object MAWB_FLD: TwwDBEdit
      Left = 59
      Top = 85
      Width = 117
      Height = 21
      Picture.PictureMask = '!*14[!]'
      Picture.AutoFill = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object ListBox1: TListBox
      Left = 456
      Top = 54
      Width = 308
      Height = 387
      Align = alRight
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 2
    end
    object SendBTN: TBitBtn
      Left = 59
      Top = 366
      Width = 162
      Height = 30
      Caption = 'Send Mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        000037777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
        FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF7777BBF
        FFF07F333777777F3FF70FFFFFFFB9BF1CC07F3FFF337F7377770F777FFFB99B
        C1C07F7773337F377F370FFFFFFFB9BBC1C07FFFFFFF7F337FF700000077B999
        B000777777777F33777733337377B9999B33333F733373F337FF3377377B99BB
        9BB33377F337F377377F3737377B9B79B9B737F73337F7F7F37F33733777BB7B
        BBB73373333377F37F3737333777BB777B9B3733333377F337F7333333777B77
        77BB3333333337333377333333333777337B3333333333333337}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object GenerateInvoicesBTN: TBitBtn
      Left = 59
      Top = 288
      Width = 162
      Height = 59
      Caption = 'Generate  Invoices'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 4
      OnClick = GenerateInvoicesBTNClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 441
      Width = 763
      Height = 45
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 5
      object Panel4: TPanel
        Left = 665
        Top = 2
        Width = 96
        Height = 41
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 19
          Top = 2
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
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 763
      Height = 53
      Align = alTop
      Caption = 'Generate Invoices'
      Font.Charset = GREEK_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object ClearingFLD: TwwRadioGroup
      Left = 59
      Top = 112
      Width = 162
      Height = 121
      DisableThemes = False
      ItemIndex = 0
      Caption = 'Select Invoicing'
      Items.Strings = (
        'IM4'
        'Medium Value'
        'Delivery Order'
        'Selected'
        'All')
      TabOrder = 7
    end
  end
  object InvoiceSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'GEN_INVOICE_NEW'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO INVOICE_NEW'
      
        '  (SERIAL_NUMBER, MAWB_SERIAL, MAWB_ID, HAWB_SERIAL, HAWB_ID, HA' +
        'WB_DESCRIPTION, CUSTOMER_SERIAL, CUSTOMER_NAME, CUSTOMER_ACCOUNT' +
        ', DISTRICT, DATE_INVOICED, AMOUNT, IS_DDP)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :MAWB_SERIAL, :MAWB_ID, :HAWB_SERIAL, :HAWB_I' +
        'D, :HAWB_DESCRIPTION, :CUSTOMER_SERIAL, :CUSTOMER_NAME, :CUSTOME' +
        'R_ACCOUNT, :DISTRICT, :DATE_INVOICED, :AMOUNT, :IS_DDP)')
    SQLDelete.Strings = (
      'DELETE FROM INVOICE_NEW'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE INVOICE_NEW'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, MAWB_SERIAL = :MAWB_SERIAL, MA' +
        'WB_ID = :MAWB_ID, HAWB_SERIAL = :HAWB_SERIAL, HAWB_ID = :HAWB_ID' +
        ', HAWB_DESCRIPTION = :HAWB_DESCRIPTION, CUSTOMER_SERIAL = :CUSTO' +
        'MER_SERIAL, CUSTOMER_NAME = :CUSTOMER_NAME, CUSTOMER_ACCOUNT = :' +
        'CUSTOMER_ACCOUNT, DISTRICT = :DISTRICT, DATE_INVOICED = :DATE_IN' +
        'VOICED, AMOUNT = :AMOUNT, IS_DDP = :IS_DDP'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, MAWB_SERIAL, MAWB_ID, HAWB_SERIAL, HAWB_ID' +
        ', HAWB_DESCRIPTION, CUSTOMER_SERIAL, CUSTOMER_NAME, CUSTOMER_ACC' +
        'OUNT, DISTRICT, DATE_INVOICED, AMOUNT, IS_DDP FROM INVOICE_NEW'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM INVOICE_NEW'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INVOICE_NEW'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = WriteTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * from Invoice_new where serial_number= :InvoiceSerial')
    Left = 344
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'InvoiceSerial'
        Value = nil
      end>
    object InvoiceSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object InvoiceSQLMAWB_SERIAL: TIntegerField
      FieldName = 'MAWB_SERIAL'
    end
    object InvoiceSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object InvoiceSQLHAWB_SERIAL: TIntegerField
      FieldName = 'HAWB_SERIAL'
    end
    object InvoiceSQLHAWB_ID: TStringField
      FieldName = 'HAWB_ID'
      FixedChar = True
      Size = 10
    end
    object InvoiceSQLHAWB_DESCRIPTION: TStringField
      FieldName = 'HAWB_DESCRIPTION'
      Size = 200
    end
    object InvoiceSQLCUSTOMER_SERIAL: TIntegerField
      FieldName = 'CUSTOMER_SERIAL'
    end
    object InvoiceSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object InvoiceSQLCUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'CUSTOMER_ACCOUNT'
    end
    object InvoiceSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      FixedChar = True
      Size = 3
    end
    object InvoiceSQLDATE_INVOICED: TDateField
      FieldName = 'DATE_INVOICED'
      Required = True
    end
    object InvoiceSQLAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object InvoiceSQLIS_DDP: TStringField
      FieldName = 'IS_DDP'
      FixedChar = True
      Size = 1
    end
  end
  object WriteTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    Left = 488
    Top = 56
  end
  object ReadTrans: TIBCTransaction
    DefaultConnection = ClairDML.CabCOnnection
    IsolationLevel = iblReadOnlyReadCommitted
    Left = 576
    Top = 64
  end
  object InvLineSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'GEN_INVOICE_LINE'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO INVOICE_LINE'
      
        '  (SERIAL_NUMBER, FK_INVOICE_SERIAL, DUTY_TYPE, FK_TARIFF_USAGE,' +
        ' AMOUNT, DHL_GLOBAL_CODE)'
      'VALUES'
      
        '  (:SERIAL_NUMBER, :FK_INVOICE_SERIAL, :DUTY_TYPE, :FK_TARIFF_US' +
        'AGE, :AMOUNT, :DHL_GLOBAL_CODE)')
    SQLDelete.Strings = (
      'DELETE FROM INVOICE_LINE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE INVOICE_LINE'
      'SET'
      
        '  SERIAL_NUMBER = :SERIAL_NUMBER, FK_INVOICE_SERIAL = :FK_INVOIC' +
        'E_SERIAL, DUTY_TYPE = :DUTY_TYPE, FK_TARIFF_USAGE = :FK_TARIFF_U' +
        'SAGE, AMOUNT = :AMOUNT, DHL_GLOBAL_CODE = :DHL_GLOBAL_CODE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      
        'SELECT SERIAL_NUMBER, FK_INVOICE_SERIAL, DUTY_TYPE, FK_TARIFF_US' +
        'AGE, AMOUNT, DHL_GLOBAL_CODE FROM INVOICE_LINE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM INVOICE_LINE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM INVOICE_LINE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = WriteTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select * From Invoice_line where serial_number=0;')
    AutoCommit = False
    Left = 264
    Top = 208
    object InvLineSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
    end
    object InvLineSQLFK_INVOICE_SERIAL: TIntegerField
      FieldName = 'FK_INVOICE_SERIAL'
      Required = True
    end
    object InvLineSQLDUTY_TYPE: TStringField
      FieldName = 'DUTY_TYPE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object InvLineSQLFK_TARIFF_USAGE: TStringField
      FieldName = 'FK_TARIFF_USAGE'
      Required = True
      FixedChar = True
      Size = 3
    end
    object InvLineSQLAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object InvLineSQLDHL_GLOBAL_CODE: TStringField
      FieldName = 'DHL_GLOBAL_CODE'
      FixedChar = True
      Size = 30
    end
  end
  object ChargesSQL: TIBCQuery
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO HAWB_CHARGE'
      '  (FK_HAWB, FK_TARIFF_USAGE, DUTY_TYPE)'
      'VALUES'
      '  (:FK_HAWB, :FK_TARIFF_USAGE, :DUTY_TYPE)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB_CHARGE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB_CHARGE'
      'SET'
      
        '  FK_HAWB = :FK_HAWB, FK_TARIFF_USAGE = :FK_TARIFF_USAGE, DUTY_T' +
        'YPE = :DUTY_TYPE'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      'SELECT FK_HAWB, FK_TARIFF_USAGE, DUTY_TYPE FROM HAWB_CHARGE'
      'WHERE'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB_CHARGE'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB_CHARGE'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = WriteTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      
        'select ha.fk_hawb,ha.fk_tariff_usage, ha.duty_type,dt.dhl_global' +
        '_code, sum(ha.amount_net) as Amount'
      'from hawb_charge ha'
      'left outer join duty_type dt on ha.duty_type=dt.duty_code'
      'where fk_hawb = :hawbSerial'
      
        'group by  ha.fk_hawb,ha.fk_tariff_usage, ha.duty_type,dt.dhl_glo' +
        'bal_code'
      '')
    Left = 440
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'hawbSerial'
        Value = nil
      end>
    object ChargesSQLFK_HAWB: TIntegerField
      FieldName = 'FK_HAWB'
      Required = True
    end
    object ChargesSQLFK_TARIFF_USAGE: TStringField
      FieldName = 'FK_TARIFF_USAGE'
      FixedChar = True
      Size = 3
    end
    object ChargesSQLDUTY_TYPE: TStringField
      FieldName = 'DUTY_TYPE'
      FixedChar = True
      Size = 3
    end
    object ChargesSQLAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      ReadOnly = True
    end
    object ChargesSQLDHL_GLOBAL_CODE: TStringField
      FieldName = 'DHL_GLOBAL_CODE'
      ReadOnly = True
      FixedChar = True
      Size = 30
    end
  end
  object HawbSQL: TIBCQuery
    KeyFields = 'serial_number'
    KeyGenerator = 'GEN_INVOICE_NEW'
    GeneratorMode = gmInsert
    SQLInsert.Strings = (
      'INSERT INTO HAWB'
      
        '  (HAB_ID, FK_MAWB_REFER_NUMBER, FK_CLEARING_STATE, FK_INVOICE_S' +
        'TATUS, DESCRIPTION, FK_CUSTOMER_CODE, WEIGHT, FK_CURRENCY, EXCHA' +
        'NGE_RATE, INVOICE_TOTAL, FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE, O' +
        'THER_CHARGE_AMOUNT, OTHER_CHARGE_PAID, STAMPS_AMOUNT, EXPS_NON_I' +
        'NVOICABLE, SERIAL_NUMBER, CUSTOMS_VALUE, INVOICE_SERIAL, COURIER' +
        '_INVOICE_SERIAL, COURIER_INVOICE_VALUE, HIGH_VALUE, FK_SEC_MAWB_' +
        'REFER_NUMBER, EDE_STORAGE_EXPENSES, EDE_DELIVERY_EXPENSES, DATE_' +
        'INVOICED, SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED, TOTAL_NUM_OF_PIEC' +
        'ES, FK_CLEARANCE_TYPE, FK_DELIVERY_TERM, ORIGIN_STATION, EC2_NUM' +
        'BER_DATE, SENDERS_INV_NO, NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT' +
        ', DISTRICT, DELIVERY_ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT, FK_OTHE' +
        'R2_CHARGE_CODE, POSOSTOSIS, TOTAL_DUTIES, CLEARANCE_WAITING_CODE' +
        ', CLEARANCE_WAITING_REASON, DATE_CLEARED, DATE_REGISTERED, FACTO' +
        'R, FK_COUNTRY_ORIGIN, CHARGE_TRL, CHARGE_VAT, CHARGE_EXCISE, CHA' +
        'RGE_IMPORT, INVOICABLE, TOTAL_CHARGES, CUSTOMER_NAME, EDE_COMMEN' +
        'TS, FK_MAWB_ID, SIGNATORY_NAME, XML_HOUSE_ID, SENDER_NAME, SENDE' +
        'R_ADDRESS_1, SENDER_ADDRESS_2, SENDER_ADDRESS_3, IS_PRIVATE, DEL' +
        'IVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT, FK_OTHER4_CHARGE, IS_PAID,' +
        ' PARTIAL_FLAG, PARTIAL_WEIGHT, PARTIAL_DELIVERY_ORDER_ID, PARTIA' +
        'L_MAWB_ID, PARTIAL_PIECES, PARTIAL_MAWB_REFER_NUMBER, STATUS_C, ' +
        'IS_MEDIUM, MEDIUM_VAT_RATE, IS_CHARGED_DELIVERY, IS_VALID, IS_PR' +
        'EPAID, OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE, FK_CLEARANCE_INSTR' +
        'UCTION, SENDER_POST_CODE, SENDER_CITY, SENDER_COUNTRY)'
      'VALUES'
      
        '  (:HAB_ID, :FK_MAWB_REFER_NUMBER, :FK_CLEARING_STATE, :FK_INVOI' +
        'CE_STATUS, :DESCRIPTION, :FK_CUSTOMER_CODE, :WEIGHT, :FK_CURRENC' +
        'Y, :EXCHANGE_RATE, :INVOICE_TOTAL, :FREIGHT_AMOUNT, :FK_OTHER_CH' +
        'ARGE_CODE, :OTHER_CHARGE_AMOUNT, :OTHER_CHARGE_PAID, :STAMPS_AMO' +
        'UNT, :EXPS_NON_INVOICABLE, :SERIAL_NUMBER, :CUSTOMS_VALUE, :INVO' +
        'ICE_SERIAL, :COURIER_INVOICE_SERIAL, :COURIER_INVOICE_VALUE, :HI' +
        'GH_VALUE, :FK_SEC_MAWB_REFER_NUMBER, :EDE_STORAGE_EXPENSES, :EDE' +
        '_DELIVERY_EXPENSES, :DATE_INVOICED, :SENT_TO_HEAD, :NUM_OF_PIECE' +
        'S_ARRIVED, :TOTAL_NUM_OF_PIECES, :FK_CLEARANCE_TYPE, :FK_DELIVER' +
        'Y_TERM, :ORIGIN_STATION, :EC2_NUMBER_DATE, :SENDERS_INV_NO, :NUM' +
        'BER_OF_PARCELS, :FK_CUSTOMER_ACCOUNT, :DISTRICT, :DELIVERY_ORDER' +
        '_AMOUNT, :OTHER2_CHARGE_AMOUNT, :FK_OTHER2_CHARGE_CODE, :POSOSTO' +
        'SIS, :TOTAL_DUTIES, :CLEARANCE_WAITING_CODE, :CLEARANCE_WAITING_' +
        'REASON, :DATE_CLEARED, :DATE_REGISTERED, :FACTOR, :FK_COUNTRY_OR' +
        'IGIN, :CHARGE_TRL, :CHARGE_VAT, :CHARGE_EXCISE, :CHARGE_IMPORT, ' +
        ':INVOICABLE, :TOTAL_CHARGES, :CUSTOMER_NAME, :EDE_COMMENTS, :FK_' +
        'MAWB_ID, :SIGNATORY_NAME, :XML_HOUSE_ID, :SENDER_NAME, :SENDER_A' +
        'DDRESS_1, :SENDER_ADDRESS_2, :SENDER_ADDRESS_3, :IS_PRIVATE, :DE' +
        'LIVERY_ORDER_ID, :OTHER4_CHARGE_AMOUNT, :FK_OTHER4_CHARGE, :IS_P' +
        'AID, :PARTIAL_FLAG, :PARTIAL_WEIGHT, :PARTIAL_DELIVERY_ORDER_ID,' +
        ' :PARTIAL_MAWB_ID, :PARTIAL_PIECES, :PARTIAL_MAWB_REFER_NUMBER, ' +
        ':STATUS_C, :IS_MEDIUM, :MEDIUM_VAT_RATE, :IS_CHARGED_DELIVERY, :' +
        'IS_VALID, :IS_PREPAID, :OTHER5_CHARGE_AMOUNT, :FK_DUTY_RELIEVE, ' +
        ':FK_CLEARANCE_INSTRUCTION, :SENDER_POST_CODE, :SENDER_CITY, :SEN' +
        'DER_COUNTRY)')
    SQLDelete.Strings = (
      'DELETE FROM HAWB'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLUpdate.Strings = (
      'UPDATE HAWB'
      'SET'
      
        '  HAB_ID = :HAB_ID, FK_MAWB_REFER_NUMBER = :FK_MAWB_REFER_NUMBER' +
        ', FK_CLEARING_STATE = :FK_CLEARING_STATE, FK_INVOICE_STATUS = :F' +
        'K_INVOICE_STATUS, DESCRIPTION = :DESCRIPTION, FK_CUSTOMER_CODE =' +
        ' :FK_CUSTOMER_CODE, WEIGHT = :WEIGHT, FK_CURRENCY = :FK_CURRENCY' +
        ', EXCHANGE_RATE = :EXCHANGE_RATE, INVOICE_TOTAL = :INVOICE_TOTAL' +
        ', FREIGHT_AMOUNT = :FREIGHT_AMOUNT, FK_OTHER_CHARGE_CODE = :FK_O' +
        'THER_CHARGE_CODE, OTHER_CHARGE_AMOUNT = :OTHER_CHARGE_AMOUNT, OT' +
        'HER_CHARGE_PAID = :OTHER_CHARGE_PAID, STAMPS_AMOUNT = :STAMPS_AM' +
        'OUNT, EXPS_NON_INVOICABLE = :EXPS_NON_INVOICABLE, SERIAL_NUMBER ' +
        '= :SERIAL_NUMBER, CUSTOMS_VALUE = :CUSTOMS_VALUE, INVOICE_SERIAL' +
        ' = :INVOICE_SERIAL, COURIER_INVOICE_SERIAL = :COURIER_INVOICE_SE' +
        'RIAL, COURIER_INVOICE_VALUE = :COURIER_INVOICE_VALUE, HIGH_VALUE' +
        ' = :HIGH_VALUE, FK_SEC_MAWB_REFER_NUMBER = :FK_SEC_MAWB_REFER_NU' +
        'MBER, EDE_STORAGE_EXPENSES = :EDE_STORAGE_EXPENSES, EDE_DELIVERY' +
        '_EXPENSES = :EDE_DELIVERY_EXPENSES, DATE_INVOICED = :DATE_INVOIC' +
        'ED, SENT_TO_HEAD = :SENT_TO_HEAD, NUM_OF_PIECES_ARRIVED = :NUM_O' +
        'F_PIECES_ARRIVED, TOTAL_NUM_OF_PIECES = :TOTAL_NUM_OF_PIECES, FK' +
        '_CLEARANCE_TYPE = :FK_CLEARANCE_TYPE, FK_DELIVERY_TERM = :FK_DEL' +
        'IVERY_TERM, ORIGIN_STATION = :ORIGIN_STATION, EC2_NUMBER_DATE = ' +
        ':EC2_NUMBER_DATE, SENDERS_INV_NO = :SENDERS_INV_NO, NUMBER_OF_PA' +
        'RCELS = :NUMBER_OF_PARCELS, FK_CUSTOMER_ACCOUNT = :FK_CUSTOMER_A' +
        'CCOUNT, DISTRICT = :DISTRICT, DELIVERY_ORDER_AMOUNT = :DELIVERY_' +
        'ORDER_AMOUNT, OTHER2_CHARGE_AMOUNT = :OTHER2_CHARGE_AMOUNT, FK_O' +
        'THER2_CHARGE_CODE = :FK_OTHER2_CHARGE_CODE, POSOSTOSIS = :POSOST' +
        'OSIS, TOTAL_DUTIES = :TOTAL_DUTIES, CLEARANCE_WAITING_CODE = :CL' +
        'EARANCE_WAITING_CODE, CLEARANCE_WAITING_REASON = :CLEARANCE_WAIT' +
        'ING_REASON, DATE_CLEARED = :DATE_CLEARED, DATE_REGISTERED = :DAT' +
        'E_REGISTERED, FACTOR = :FACTOR, FK_COUNTRY_ORIGIN = :FK_COUNTRY_' +
        'ORIGIN, CHARGE_TRL = :CHARGE_TRL, CHARGE_VAT = :CHARGE_VAT, CHAR' +
        'GE_EXCISE = :CHARGE_EXCISE, CHARGE_IMPORT = :CHARGE_IMPORT, INVO' +
        'ICABLE = :INVOICABLE, TOTAL_CHARGES = :TOTAL_CHARGES, CUSTOMER_N' +
        'AME = :CUSTOMER_NAME, EDE_COMMENTS = :EDE_COMMENTS, FK_MAWB_ID =' +
        ' :FK_MAWB_ID, SIGNATORY_NAME = :SIGNATORY_NAME, XML_HOUSE_ID = :' +
        'XML_HOUSE_ID, SENDER_NAME = :SENDER_NAME, SENDER_ADDRESS_1 = :SE' +
        'NDER_ADDRESS_1, SENDER_ADDRESS_2 = :SENDER_ADDRESS_2, SENDER_ADD' +
        'RESS_3 = :SENDER_ADDRESS_3, IS_PRIVATE = :IS_PRIVATE, DELIVERY_O' +
        'RDER_ID = :DELIVERY_ORDER_ID, OTHER4_CHARGE_AMOUNT = :OTHER4_CHA' +
        'RGE_AMOUNT, FK_OTHER4_CHARGE = :FK_OTHER4_CHARGE, IS_PAID = :IS_' +
        'PAID, PARTIAL_FLAG = :PARTIAL_FLAG, PARTIAL_WEIGHT = :PARTIAL_WE' +
        'IGHT, PARTIAL_DELIVERY_ORDER_ID = :PARTIAL_DELIVERY_ORDER_ID, PA' +
        'RTIAL_MAWB_ID = :PARTIAL_MAWB_ID, PARTIAL_PIECES = :PARTIAL_PIEC' +
        'ES, PARTIAL_MAWB_REFER_NUMBER = :PARTIAL_MAWB_REFER_NUMBER, STAT' +
        'US_C = :STATUS_C, IS_MEDIUM = :IS_MEDIUM, MEDIUM_VAT_RATE = :MED' +
        'IUM_VAT_RATE, IS_CHARGED_DELIVERY = :IS_CHARGED_DELIVERY, IS_VAL' +
        'ID = :IS_VALID, IS_PREPAID = :IS_PREPAID, OTHER5_CHARGE_AMOUNT =' +
        ' :OTHER5_CHARGE_AMOUNT, FK_DUTY_RELIEVE = :FK_DUTY_RELIEVE, FK_C' +
        'LEARANCE_INSTRUCTION = :FK_CLEARANCE_INSTRUCTION, SENDER_POST_CO' +
        'DE = :SENDER_POST_CODE, SENDER_CITY = :SENDER_CITY, SENDER_COUNT' +
        'RY = :SENDER_COUNTRY'
      'WHERE'
      '  SERIAL_NUMBER = :Old_SERIAL_NUMBER')
    SQLRefresh.Strings = (
      'select HA.*, ssi.customs_value AS customs_amount'
      
        'from HAWB ha left outer join SENDER_INVOICE ssi  on ha.serial_nu' +
        'mber=ssi.fk_hawb_serial'
      '  SERIAL_NUMBER = :SERIAL_NUMBER')
    SQLLock.Strings = (
      'SELECT NULL FROM HAWB'
      'WHERE'
      'SERIAL_NUMBER = :Old_SERIAL_NUMBER'
      'FOR UPDATE WITH LOCK')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ('
      'SELECT 1 AS C  FROM HAWB'
      ''
      ') q')
    Connection = ClairDML.CabCOnnection
    Transaction = WriteTrans
    UpdateTransaction = WriteTrans
    SQL.Strings = (
      'select HA.*, ssi.customs_value AS customs_amount'
      '   from HAWB ha '
      'left outer join '
      '  SENDER_INVOICE ssi  on '
      'ha.serial_number=ssi.fk_hawb_serial'
      'where serial_number= :HawbSerial')
    Left = 248
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'HawbSerial'
        Value = nil
      end>
    object HawbSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
    end
    object HawbSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Size = 1
    end
    object HawbSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Size = 1
    end
    object HawbSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object HawbSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
    end
    object HawbSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object HawbSQLFK_CURRENCY: TStringField
      FieldName = 'FK_CURRENCY'
      Size = 3
    end
    object HawbSQLEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
    end
    object HawbSQLINVOICE_TOTAL: TFloatField
      FieldName = 'INVOICE_TOTAL'
    end
    object HawbSQLFREIGHT_AMOUNT: TFloatField
      FieldName = 'FREIGHT_AMOUNT'
    end
    object HawbSQLFK_OTHER_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER_CHARGE_CODE'
      Size = 6
    end
    object HawbSQLOTHER_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER_CHARGE_AMOUNT'
    end
    object HawbSQLOTHER_CHARGE_PAID: TStringField
      FieldName = 'OTHER_CHARGE_PAID'
      Size = 1
    end
    object HawbSQLSTAMPS_AMOUNT: TFloatField
      FieldName = 'STAMPS_AMOUNT'
    end
    object HawbSQLEXPS_NON_INVOICABLE: TFloatField
      FieldName = 'EXPS_NON_INVOICABLE'
    end
    object HawbSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object HawbSQLCUSTOMS_VALUE: TFloatField
      FieldName = 'CUSTOMS_VALUE'
    end
    object HawbSQLINVOICE_SERIAL: TIntegerField
      FieldName = 'INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField
      FieldName = 'COURIER_INVOICE_SERIAL'
    end
    object HawbSQLCOURIER_INVOICE_VALUE: TFloatField
      FieldName = 'COURIER_INVOICE_VALUE'
    end
    object HawbSQLHIGH_VALUE: TStringField
      FieldName = 'HIGH_VALUE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_SEC_MAWB_REFER_NUMBER'
    end
    object HawbSQLEDE_STORAGE_EXPENSES: TFloatField
      FieldName = 'EDE_STORAGE_EXPENSES'
    end
    object HawbSQLEDE_DELIVERY_EXPENSES: TFloatField
      FieldName = 'EDE_DELIVERY_EXPENSES'
    end
    object HawbSQLDATE_INVOICED: TDateField
      FieldName = 'DATE_INVOICED'
    end
    object HawbSQLSENT_TO_HEAD: TStringField
      FieldName = 'SENT_TO_HEAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
    end
    object HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField
      FieldName = 'TOTAL_NUM_OF_PIECES'
    end
    object HawbSQLFK_CLEARANCE_TYPE: TStringField
      FieldName = 'FK_CLEARANCE_TYPE'
      Size = 12
    end
    object HawbSQLFK_DELIVERY_TERM: TStringField
      FieldName = 'FK_DELIVERY_TERM'
      Size = 3
    end
    object HawbSQLORIGIN_STATION: TStringField
      FieldName = 'ORIGIN_STATION'
      Size = 12
    end
    object HawbSQLEC2_NUMBER_DATE: TStringField
      FieldName = 'EC2_NUMBER_DATE'
      Size = 40
    end
    object HawbSQLSENDERS_INV_NO: TStringField
      FieldName = 'SENDERS_INV_NO'
      Size = 50
    end
    object HawbSQLNUMBER_OF_PARCELS: TIntegerField
      FieldName = 'NUMBER_OF_PARCELS'
    end
    object HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField
      FieldName = 'FK_CUSTOMER_ACCOUNT'
    end
    object HawbSQLDISTRICT: TStringField
      FieldName = 'DISTRICT'
      FixedChar = True
      Size = 3
    end
    object HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField
      FieldName = 'DELIVERY_ORDER_AMOUNT'
    end
    object HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER2_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER2_CHARGE_CODE: TStringField
      FieldName = 'FK_OTHER2_CHARGE_CODE'
      FixedChar = True
      Size = 6
    end
    object HawbSQLPOSOSTOSIS: TStringField
      FieldName = 'POSOSTOSIS'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_DUTIES: TFloatField
      FieldName = 'TOTAL_DUTIES'
    end
    object HawbSQLCLEARANCE_WAITING_CODE: TStringField
      FieldName = 'CLEARANCE_WAITING_CODE'
      FixedChar = True
      Size = 3
    end
    object HawbSQLCLEARANCE_WAITING_REASON: TStringField
      FieldName = 'CLEARANCE_WAITING_REASON'
      FixedChar = True
      Size = 40
    end
    object HawbSQLDATE_CLEARED: TDateField
      FieldName = 'DATE_CLEARED'
    end
    object HawbSQLDATE_REGISTERED: TDateField
      FieldName = 'DATE_REGISTERED'
    end
    object HawbSQLFACTOR: TFloatField
      FieldName = 'FACTOR'
    end
    object HawbSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
    end
    object HawbSQLCHARGE_TRL: TFloatField
      FieldName = 'CHARGE_TRL'
    end
    object HawbSQLCHARGE_VAT: TFloatField
      FieldName = 'CHARGE_VAT'
    end
    object HawbSQLCHARGE_EXCISE: TFloatField
      FieldName = 'CHARGE_EXCISE'
    end
    object HawbSQLCHARGE_IMPORT: TFloatField
      FieldName = 'CHARGE_IMPORT'
    end
    object HawbSQLINVOICABLE: TStringField
      FieldName = 'INVOICABLE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLTOTAL_CHARGES: TFloatField
      FieldName = 'TOTAL_CHARGES'
    end
    object HawbSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object HawbSQLEDE_COMMENTS: TStringField
      FieldName = 'EDE_COMMENTS'
      Size = 100
    end
    object HawbSQLFK_MAWB_ID: TStringField
      FieldName = 'FK_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbSQLSIGNATORY_NAME: TStringField
      FieldName = 'SIGNATORY_NAME'
      FixedChar = True
      Size = 50
    end
    object HawbSQLXML_HOUSE_ID: TStringField
      FieldName = 'XML_HOUSE_ID'
      FixedChar = True
      Size = 13
    end
    object HawbSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_1: TStringField
      FieldName = 'SENDER_ADDRESS_1'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_2: TStringField
      FieldName = 'SENDER_ADDRESS_2'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_ADDRESS_3: TStringField
      FieldName = 'SENDER_ADDRESS_3'
      FixedChar = True
      Size = 60
    end
    object HawbSQLIS_PRIVATE: TStringField
      FieldName = 'IS_PRIVATE'
      FixedChar = True
      Size = 1
    end
    object HawbSQLDELIVERY_ORDER_ID: TStringField
      FieldName = 'DELIVERY_ORDER_ID'
      FixedChar = True
      Size = 10
    end
    object HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER4_CHARGE_AMOUNT'
    end
    object HawbSQLFK_OTHER4_CHARGE: TStringField
      FieldName = 'FK_OTHER4_CHARGE'
      FixedChar = True
      Size = 3
    end
    object HawbSQLIS_PAID: TStringField
      FieldName = 'IS_PAID'
      FixedChar = True
      Size = 1
    end
    object HawbSQLPARTIAL_FLAG: TStringField
      FieldName = 'PARTIAL_FLAG'
      FixedChar = True
      Size = 1
    end
    object HawbSQLPARTIAL_WEIGHT: TFloatField
      FieldName = 'PARTIAL_WEIGHT'
    end
    object HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField
      FieldName = 'PARTIAL_DELIVERY_ORDER_ID'
      Size = 10
    end
    object HawbSQLPARTIAL_MAWB_ID: TStringField
      FieldName = 'PARTIAL_MAWB_ID'
      FixedChar = True
      Size = 15
    end
    object HawbSQLPARTIAL_PIECES: TIntegerField
      FieldName = 'PARTIAL_PIECES'
    end
    object HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'PARTIAL_MAWB_REFER_NUMBER'
    end
    object HawbSQLSTATUS_C: TStringField
      FieldName = 'STATUS_C'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_MEDIUM: TStringField
      FieldName = 'IS_MEDIUM'
      FixedChar = True
      Size = 1
    end
    object HawbSQLMEDIUM_VAT_RATE: TFloatField
      FieldName = 'MEDIUM_VAT_RATE'
    end
    object HawbSQLIS_CHARGED_DELIVERY: TStringField
      FieldName = 'IS_CHARGED_DELIVERY'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_VALID: TStringField
      FieldName = 'IS_VALID'
      FixedChar = True
      Size = 1
    end
    object HawbSQLIS_PREPAID: TStringField
      FieldName = 'IS_PREPAID'
      FixedChar = True
      Size = 1
    end
    object HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField
      FieldName = 'OTHER5_CHARGE_AMOUNT'
    end
    object HawbSQLFK_DUTY_RELIEVE: TStringField
      FieldName = 'FK_DUTY_RELIEVE'
      FixedChar = True
      Size = 5
    end
    object HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField
      FieldName = 'FK_CLEARANCE_INSTRUCTION'
      FixedChar = True
      Size = 5
    end
    object HawbSQLSENDER_POST_CODE: TStringField
      FieldName = 'SENDER_POST_CODE'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_CITY: TStringField
      FieldName = 'SENDER_CITY'
      FixedChar = True
      Size = 60
    end
    object HawbSQLSENDER_COUNTRY: TStringField
      FieldName = 'SENDER_COUNTRY'
      FixedChar = True
      Size = 60
    end
    object HawbSQLCUSTOMS_AMOUNT: TFloatField
      FieldName = 'CUSTOMS_AMOUNT'
      ReadOnly = True
    end
  end
  object UpdateSQL: TIBCSQL
    Connection = ClairDML.CabCOnnection
    Transaction = WriteTrans
    AutoCommit = True
    Left = 328
    Top = 136
  end
end
