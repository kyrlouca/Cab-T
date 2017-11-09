object R_MediumNewFRM: TR_MediumNewFRM
  Left = 0
  Top = 0
  Caption = 'R_MediumNewFRM'
  ClientHeight = 487
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 336
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object MawbSQL: TIBCQuery
    DMLRefresh = True
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'SELECT'
      
        'ma.reference_number, MA.FK_COUNTRY_CONSIGNEE, MA.XML_CONSOLIDATE' +
        'D_ID,ma.FLIGHT_NUMBER, ma.TDID_MEDIUM,ma.HMSD,ma.mawb_id, ma.dat' +
        'e_arrived'
      'from'
      '  MAWB ma'
      'where '
      'reference_number= :MawbSerial;')
    DetailFields = 'FK_MAWB_REFER_NUMBER'
    Active = True
    AutoCalcFields = False
    Left = 112
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MawbSerial'
        Value = nil
      end>
    object MawbSQLREFERENCE_NUMBER: TIntegerField
      FieldName = 'REFERENCE_NUMBER'
      Required = True
    end
    object MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField
      FieldName = 'FK_COUNTRY_CONSIGNEE'
    end
    object MawbSQLXML_CONSOLIDATED_ID: TStringField
      FieldName = 'XML_CONSOLIDATED_ID'
      FixedChar = True
      Size = 13
    end
    object MawbSQLFLIGHT_NUMBER: TStringField
      FieldName = 'FLIGHT_NUMBER'
      Size = 10
    end
    object MawbSQLTDID_MEDIUM: TStringField
      FieldName = 'TDID_MEDIUM'
      FixedChar = True
      Size = 15
    end
    object MawbSQLHMSD: TStringField
      FieldName = 'HMSD'
      FixedChar = True
    end
    object MawbSQLMAWB_ID: TStringField
      FieldName = 'MAWB_ID'
      Size = 15
    end
    object MawbSQLDATE_ARRIVED: TDateField
      FieldName = 'DATE_ARRIVED'
    end
  end
  object mediumSimpleSQL: TIBCQuery
    Connection = ClairDML.CabCOnnection
    SQL.Strings = (
      'select'
      
        '    ha.hab_id, ha.serial_number, ha.fk_mawb_refer_number, ha.fk_' +
        'clearing_State,fk_invoice_status, ha.Description,'
      '    ha.customer_name,'
      
        '    ha.sender_name, ha.fk_country_origin , ha.NUM_OF_PIECES_ARRI' +
        'VED,ha.FK_CUstomer_code,HA.WEIGHT,'
      '    ha.medium_vat_rate, ssi.pre_discount_amount,ssi.currency,'
      '    exr.rate , (ssi.pre_discount_amount /exr.rate ) as EuroVal'
      'from'
      '    hawb ha'
      
        'left outer join sender_invoice ssi on ha.serial_number= ssi.fk_h' +
        'awb_serial'
      
        'left outer join exchange_rate exr on ssi.currency = exr.fk_curre' +
        'ncy_code'
      'where'
      'ha.fk_clearance_instruction ='#39'MED'#39
      'and ha.fk_mawb_refer_number = :mawbSerial')
    Active = True
    AutoCalcFields = False
    Left = 32
    Top = 196
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mawbSerial'
        Value = nil
      end>
    object mediumSimpleSQLHAB_ID: TStringField
      FieldName = 'HAB_ID'
      Required = True
      Size = 10
    end
    object mediumSimpleSQLSERIAL_NUMBER: TIntegerField
      FieldName = 'SERIAL_NUMBER'
      Required = True
    end
    object mediumSimpleSQLFK_MAWB_REFER_NUMBER: TIntegerField
      FieldName = 'FK_MAWB_REFER_NUMBER'
      Required = True
    end
    object mediumSimpleSQLFK_CLEARING_STATE: TStringField
      FieldName = 'FK_CLEARING_STATE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object mediumSimpleSQLFK_INVOICE_STATUS: TStringField
      FieldName = 'FK_INVOICE_STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object mediumSimpleSQLDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object mediumSimpleSQLCUSTOMER_NAME: TStringField
      FieldName = 'CUSTOMER_NAME'
      FixedChar = True
      Size = 40
    end
    object mediumSimpleSQLSENDER_NAME: TStringField
      FieldName = 'SENDER_NAME'
      FixedChar = True
      Size = 60
    end
    object mediumSimpleSQLFK_COUNTRY_ORIGIN: TIntegerField
      FieldName = 'FK_COUNTRY_ORIGIN'
    end
    object mediumSimpleSQLNUM_OF_PIECES_ARRIVED: TIntegerField
      FieldName = 'NUM_OF_PIECES_ARRIVED'
    end
    object mediumSimpleSQLFK_CUSTOMER_CODE: TIntegerField
      FieldName = 'FK_CUSTOMER_CODE'
    end
    object mediumSimpleSQLWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object mediumSimpleSQLMEDIUM_VAT_RATE: TFloatField
      FieldName = 'MEDIUM_VAT_RATE'
    end
    object mediumSimpleSQLPRE_DISCOUNT_AMOUNT: TFloatField
      FieldName = 'PRE_DISCOUNT_AMOUNT'
      ReadOnly = True
    end
    object mediumSimpleSQLCURRENCY: TStringField
      FieldName = 'CURRENCY'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object mediumSimpleSQLRATE: TFloatField
      FieldName = 'RATE'
      ReadOnly = True
    end
    object mediumSimpleSQLEUROVAL: TFloatField
      FieldName = 'EUROVAL'
      ReadOnly = True
    end
  end
  object HawbMediumValueSRC: TIBCDataSource
    DataSet = mediumSimpleSQL
    Left = 92
    Top = 292
  end
  object MawbSRC: TIBCDataSource
    DataSet = MawbSQL
    Left = 32
    Top = 276
  end
end
