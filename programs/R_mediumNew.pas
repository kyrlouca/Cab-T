unit R_mediumNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, IBC, MemDS,
  Vcl.StdCtrls;

type
  TR_MediumNewFRM = class(TForm)
    MawbSQL: TIBCQuery;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLXML_CONSOLIDATED_ID: TStringField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLTDID_MEDIUM: TStringField;
    MawbSQLHMSD: TStringField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLDATE_ARRIVED: TDateField;
    mediumSimpleSQL: TIBCQuery;
    mediumSimpleSQLHAB_ID: TStringField;
    mediumSimpleSQLSERIAL_NUMBER: TIntegerField;
    mediumSimpleSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    mediumSimpleSQLFK_CLEARING_STATE: TStringField;
    mediumSimpleSQLFK_INVOICE_STATUS: TStringField;
    mediumSimpleSQLDESCRIPTION: TStringField;
    mediumSimpleSQLCUSTOMER_NAME: TStringField;
    mediumSimpleSQLSENDER_NAME: TStringField;
    mediumSimpleSQLFK_COUNTRY_ORIGIN: TIntegerField;
    mediumSimpleSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    mediumSimpleSQLFK_CUSTOMER_CODE: TIntegerField;
    mediumSimpleSQLWEIGHT: TFloatField;
    mediumSimpleSQLMEDIUM_VAT_RATE: TFloatField;
    mediumSimpleSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    mediumSimpleSQLCURRENCY: TStringField;
    mediumSimpleSQLRATE: TFloatField;
    mediumSimpleSQLEUROVAL: TFloatField;
    HawbMediumValueSRC: TIBCDataSource;
    MawbSRC: TIBCDataSource;
    Button1: TButton;
  private
    { Private declarations }
        TitleText1:String;
    procedure PrintPrivReport(MawbSerial:Integer);

  public
    { Public declarations }
    IN_MawbSerial:Integer;
    procedure PrintReport();

  end;

var
  R_MediumNewFRM: TR_MediumNewFRM;

implementation

{$R *.dfm}

uses U_ClairDML;



procedure TR_MediumNewFRM.PrintPrivReport(MawbSerial:Integer);
Var
   Str1,Str2:String;
   MediumValueMin,MediumValueMax:Integer;
   temp:double;
   ss2:String;
   i1,i2:Integer;

begin

  with MawbSQL do begin
     close;
     If not prepared then prepare ;
     ParamByName('MawbSerial').value:=MawbSerial;
     Open;
     showMessage( 'Mawbs='+ intToStr(RecordCount));
  end;

//    with HawbMediumValueSQL do begin
    with MediumSimpleSQL  do begin
     close;
     If not prepared then prepare ;
     ParamByName('MawbSerial').value:=MawbSerial;
     Open;
     showMessage( 'Med='+intToStr(RecordCount));
  end;


//    MediumRPT.Print;

End;


procedure TR_MediumNewFRM.PrintReport();
begin
  ShowMessage('Med');
  PrintPrivReport(IN_MawbSerial);
end;

end.
