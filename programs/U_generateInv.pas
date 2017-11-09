unit U_generateInv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  vcl.Wwdbedit, Vcl.ExtCtrls,G_KyrSQL,G_kyriacosTypes, Data.DB, MemDS, DBAccess,
  IBC, vcl.wwclearbuttongroup, vcl.wwradiogroup;

type
  TU_GenerateInvFRM = class(TForm)
    Panel3: TPanel;
    StaticText1: TStaticText;
    MAWB_FLD: TwwDBEdit;
    ListBox1: TListBox;
    SendBTN: TBitBtn;
    GenerateInvoicesBTN: TBitBtn;
    InvoiceSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    InvLineSQL: TIBCQuery;
    InvLineSQLSERIAL_NUMBER: TIntegerField;
    InvLineSQLFK_INVOICE_SERIAL: TIntegerField;
    InvLineSQLDUTY_TYPE: TStringField;
    InvLineSQLFK_TARIFF_USAGE: TStringField;
    InvLineSQLAMOUNT: TFloatField;
    ChargesSQL: TIBCQuery;
    ChargesSQLFK_HAWB: TIntegerField;
    ChargesSQLFK_TARIFF_USAGE: TStringField;
    ChargesSQLDUTY_TYPE: TStringField;
    ChargesSQLAMOUNT: TFloatField;
    InvoiceSQLSERIAL_NUMBER: TIntegerField;
    InvoiceSQLMAWB_SERIAL: TIntegerField;
    InvoiceSQLMAWB_ID: TStringField;
    InvoiceSQLHAWB_SERIAL: TIntegerField;
    InvoiceSQLHAWB_ID: TStringField;
    InvoiceSQLHAWB_DESCRIPTION: TStringField;
    InvoiceSQLCUSTOMER_SERIAL: TIntegerField;
    InvoiceSQLCUSTOMER_NAME: TStringField;
    InvoiceSQLCUSTOMER_ACCOUNT: TIntegerField;
    InvoiceSQLDISTRICT: TStringField;
    InvoiceSQLDATE_INVOICED: TDateField;
    InvoiceSQLAMOUNT: TFloatField;
    HawbSQL: TIBCQuery;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLCUSTOMS_VALUE: TFloatField;
    HawbSQLINVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_SERIAL: TIntegerField;
    HawbSQLCOURIER_INVOICE_VALUE: TFloatField;
    HawbSQLHIGH_VALUE: TStringField;
    HawbSQLFK_SEC_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLEDE_STORAGE_EXPENSES: TFloatField;
    HawbSQLEDE_DELIVERY_EXPENSES: TFloatField;
    HawbSQLDATE_INVOICED: TDateField;
    HawbSQLSENT_TO_HEAD: TStringField;
    HawbSQLNUM_OF_PIECES_ARRIVED: TIntegerField;
    HawbSQLTOTAL_NUM_OF_PIECES: TIntegerField;
    HawbSQLFK_CLEARANCE_TYPE: TStringField;
    HawbSQLFK_DELIVERY_TERM: TStringField;
    HawbSQLORIGIN_STATION: TStringField;
    HawbSQLEC2_NUMBER_DATE: TStringField;
    HawbSQLSENDERS_INV_NO: TStringField;
    HawbSQLNUMBER_OF_PARCELS: TIntegerField;
    HawbSQLFK_CUSTOMER_ACCOUNT: TIntegerField;
    HawbSQLDISTRICT: TStringField;
    HawbSQLDELIVERY_ORDER_AMOUNT: TFloatField;
    HawbSQLOTHER2_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER2_CHARGE_CODE: TStringField;
    HawbSQLPOSOSTOSIS: TStringField;
    HawbSQLTOTAL_DUTIES: TFloatField;
    HawbSQLCLEARANCE_WAITING_CODE: TStringField;
    HawbSQLCLEARANCE_WAITING_REASON: TStringField;
    HawbSQLDATE_CLEARED: TDateField;
    HawbSQLDATE_REGISTERED: TDateField;
    HawbSQLFACTOR: TFloatField;
    HawbSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbSQLCHARGE_TRL: TFloatField;
    HawbSQLCHARGE_VAT: TFloatField;
    HawbSQLCHARGE_EXCISE: TFloatField;
    HawbSQLCHARGE_IMPORT: TFloatField;
    HawbSQLINVOICABLE: TStringField;
    HawbSQLTOTAL_CHARGES: TFloatField;
    HawbSQLCUSTOMER_NAME: TStringField;
    HawbSQLEDE_COMMENTS: TStringField;
    HawbSQLFK_MAWB_ID: TStringField;
    HawbSQLSIGNATORY_NAME: TStringField;
    HawbSQLXML_HOUSE_ID: TStringField;
    HawbSQLSENDER_NAME: TStringField;
    HawbSQLSENDER_ADDRESS_1: TStringField;
    HawbSQLSENDER_ADDRESS_2: TStringField;
    HawbSQLSENDER_ADDRESS_3: TStringField;
    HawbSQLIS_PRIVATE: TStringField;
    HawbSQLDELIVERY_ORDER_ID: TStringField;
    HawbSQLOTHER4_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_OTHER4_CHARGE: TStringField;
    HawbSQLIS_PAID: TStringField;
    HawbSQLPARTIAL_FLAG: TStringField;
    HawbSQLPARTIAL_WEIGHT: TFloatField;
    HawbSQLPARTIAL_DELIVERY_ORDER_ID: TStringField;
    HawbSQLPARTIAL_MAWB_ID: TStringField;
    HawbSQLPARTIAL_PIECES: TIntegerField;
    HawbSQLPARTIAL_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLSTATUS_C: TStringField;
    HawbSQLIS_MEDIUM: TStringField;
    HawbSQLMEDIUM_VAT_RATE: TFloatField;
    HawbSQLIS_CHARGED_DELIVERY: TStringField;
    HawbSQLIS_VALID: TStringField;
    HawbSQLIS_PREPAID: TStringField;
    HawbSQLOTHER5_CHARGE_AMOUNT: TFloatField;
    HawbSQLFK_DUTY_RELIEVE: TStringField;
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    HawbSQLCUSTOMS_AMOUNT: TFloatField;
    Panel2: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    ClearingFLD: TwwRadioGroup;
    ChargesSQLDHL_GLOBAL_CODE: TStringField;
    InvLineSQLDHL_GLOBAL_CODE: TStringField;
    InvoiceSQLIS_DDP: TStringField;
    UpdateSQL: TIBCSQL;
    procedure GenerateInvoicesBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    function CreateHawbCharge(Const HawbSerial:Integer):Integer;
  public
    { Public declarations }
    IN_mawbSerial:Integer;
    IN_MawbID:String;
    IN_HawbSerial:Integer;
    IN_SelectedList:TStrings;
    procedure GenerateAll(Const MawbSerial:Integer);
    function GenerateOneInvoice(Const HawbSerial:Integer;InvoiceDate:Tdatetime):double;
  end;

var
  U_GenerateInvFRM: TU_GenerateInvFRM;

implementation

{$R *.dfm}

uses U_ClairDML, D_SendSMS;

procedure TU_GenerateInvFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TU_GenerateInvFRM.Button1Click(Sender: TObject);
begin
GenerateOneInvoice(80,now);
end;

procedure TU_GenerateInvFRM.FormActivate(Sender: TObject);
begin
  mawb_FLD.Text:=IN_MawbID;
end;

procedure TU_GenerateInvFRM.FormCreate(Sender: TObject);
begin
  cn:= ClairDML.CabCOnnection;
end;
procedure TU_GenerateInvFRM.GenerateInvoicesBTNClick(Sender: TObject);
var
  qr:TksQuery;
  mawbID:String;
  MawbSerial:Integer;
begin
  MawbId:=TRim(Mawb_fld.Text);
  if MawbID='' then
    exit;

  try
    qr:= TksQuery.Create(cn,'select reference_number from mawb where mawb_id= :mawbId order by reference_number descending');
    qr.ParamByName('MawbId').value:=MawbId;
    qr.Open;
    if qr.IsEmpty then begin
      ShowMessage('Mawb not found');
      exit;
    end;
   MawbSerial:=qr.FieldByName('reference_number').AsInteger;
   GenerateALl(MawbSerial);
  finally
   qr.Free;
  end;



end;

function TU_GenerateInvFRM.GenerateOneInvoice(Const HawbSerial:Integer;InvoiceDate:Tdatetime):double;
var
  VatSQL:TksQuery;
  qr:TIBCQuery;
  invSerial:Integer;
  ClearInstruct:String;
  CustomsValue:Double;
//  MediumVAT:Double;
  MediumCharge:Double;
  TotalAMount:Double;
  isDTP:Boolean;
  isDTPStr:String;

begin
    result:=0;

    if WriteTrans.Active then
         WriteTrans.Rollback;
     WriteTrans.StartTransaction;

    qr:=HawbSQL;
    qr.Close;
    qr.AutoCommit:=false;
    if not qr.Prepared then qr.Prepare;
    qr.ParamByName('hawbSerial').AsInteger:=hawbserial;
    qr.Open;
    //will find if Im4, Medium, DO,DTP
    ClearInstruct:=qr.FIeldByName('FK_CLEARANCE_INSTRUCTION').AsString;
    CustomsValue:=qr.FIeldByName('CUSTOMS_amount').AsFloat;

    isDTPStr:=qr.FIeldByName('IS_PREPAID').AsString;
    if isDTPStr='' then isDTPStr:='N' ;

    isDTP:=qr.FIeldByName('IS_PREPAID').AsString='Y';

    with qr do begin


      InvoiceSQL.Close;
      InvoiceSQL.AutoCommit:=false;
      if not InvoiceSQL.Prepared then InvoiceSQL.Prepare;
      InvoiceSQL.Open;
      InvoiceSQL.Insert;

      InvoiceSQL.FieldByName('is_DDP').value            :=isDTPStr;
      InvoiceSQL.FieldByName('date_invoiced').value            :=InvoiceDate;
      InvoiceSQL.FieldByName('mawb_id').value            :=qr.FieldByName('FK_MAWB_ID').AsString;
      InvoiceSQL.FieldByName('Mawb_serial').Value :=qr.FieldByName('FK_MAWB_REFER_NUMBER').AsInteger;
      InvoiceSQL.FieldByName('hawb_serial').Value       :=qr.FieldByName('SERIAL_NUMBER').AsInteger;
      InvoiceSQL.FieldByName('hawb_id').Value           :=qr.FieldByName('HAB_ID').AsString;
      InvoiceSQL.FieldByName('hawb_description').Value           :=qr.FieldByName('description').AsString;
      InvoiceSQL.FieldByName('district').Value          :=qr.FieldByName('DISTRICT').AsString;
      InvoiceSQL.FieldByName('customer_name').Value        :=qr.FieldByName('CUSTOMER_NAME').AsString;
      InvoiceSQL.FieldByName('customer_account').Value  :=qr.FieldByName('FK_CUSTOMER_ACCOUNT').AsInteger;
      InvoiceSQL.FieldByName('customer_serial').Value     :=qr.FieldByName('FK_CUSTOMER_CODE').AsInteger;
      InvoiceSQL.Post;
      InvSerial:= InvoiceSQL.FieldByName('serial_number').AsInteger;

      if ClearInstruct = 'MED' then begin
        CreateHawbCharge(HawbSerial);
      end;


      ChargesSQL.Close;
      ChargesSQL.RestoreSQL;
      if (ClearInstruct<>'IM4')  then begin
        // discard tariff related charges which are associated with hawb_items if DO,DOZ,MED
        //for DTP still need to generate invoice which will be paid by sender
        ChargesSQL.AddWhere('fk_hawb_item is null ');
      end;

      if not ChargesSQL.Prepared then ChargesSQL.Prepare;
      ChargesSQL.ParamByName('hawbSerial').Value:=HawbSerial;
      ChargesSQL.Open;

      invLineSQL.Close;
      invLineSQL.AutoCommit:=false;
      if not invLineSQL.Prepared then invLineSQL.Prepare;

      invLineSQL.Open;


      while (not ChargesSQL.Eof) do begin
        if ChargesSQL.FieldByName('AMOUNT').AsFloat>0 then begin
          invLineSQL.Insert;
          invLineSQL.FieldByName('fk_invoice_serial').value  :=InvSerial;
          invLineSQL.FieldByName('dhl_global_code').Value          :=ChargesSQL.FieldByName('dhl_global_CODE').AsString;
          invLineSQL.FieldByName('DUTY_TYPE').Value          :=ChargesSQL.FieldByName('DUTY_TYPE').AsString;
          invLineSQL.FieldByName('fk_tariff_usage').Value    :=ChargesSQL.FieldByName('FK_TARIFF_USAGE').AsString;
          invLineSQL.FieldByName('amount').Value             :=ChargesSQL.FieldByName('AMOUNT').AsFloat;
          invLineSQL.Post;
          TotalAMount:=TotalAmount+invLineSQL.FieldByName('amount').Value;
        end;
        ChargesSQL.Next;
      end;

      InvoiceSQL.Close;
      InvoiceSQL.ParamByName('InvoiceSerial').value:=InvSerial;
      InvoiceSQL.Open;
      InvoiceSQL.Edit;
      InvoiceSQL.FieldByName('Amount').Value:=TotalAmount;
      InvoiceSQL.Post;




      qr.Edit;
      qr.FieldByName('fk_invoice_status').Value:='1';
      qr.FieldByName('FK_CLEARING_STATE').Value:='1';
      qr.Post;

      WriteTrans.Commit;
      result:=TotalAMount;
    end;


End;


procedure TU_GenerateInvFRM.GenerateAll(Const MawbSerial:Integer);

var
I:Integer;
HawbSerial:Integer;
OneInvoiceAmount:Double;
M_FormDate:TDateTime;

UserMawbID:String;
TheMawbID:String;
TheMawbSerial :Integer;
IsMawbPassed:Boolean;
InvoicesNumber : Integer;
InvoicesValue  : Double;
M_Invoiced : String;
CountValidHawbs :Integer;
EmailCode:String;
timeStamp :TdateTime;


qr:TksQuery;
str:String;

whereArray: Array of String;
addStr:String;

begin

//    begin
//ProgressBar1.Position:=0;
  ListBox1.Clear;

  MAWB_FLD.Color:=clBtnFace;

  countValidHawbs:=0;
  InvoicesNumber:=0;
  InvoicesValue:=0;
  timeStamp:=now;


// Check if MAWB EXISTS


  try
  qr:= TksQuery.Create(cn,'select * from mawb where reference_number= :MawbSerial');
  qr.ParamByName('MawbSerial').AsInteger:=Mawbserial;
  qr.Open;
    if qr.IsEmpty then begin
    ShowMessage('Mawb not found');
    exit;
    end;

    IsMawbPassed:=qr.FieldByName('Passed').AsString='Y';
    TheMawbSerial:=qr.fieldByName('REFERENCE_NUMBER').AsInteger;
    TheMawbID:= qr.fieldByName('MAWB_ID').AsString;
    M_FormDate:= qr.fieldByName('FORM_DATE').AsDateTime;

    if (not IsMawbPassed) then begin
          MessageDlg('xxxx MAWB is NOT Passed. Can not be Invoiced', mtInformation,[mbOK], 0);
          exit;
    end;

  finally
    qr.Free;
  end;

//end;
  qr:=TksQuery.Create(cn,'Select * from Email_message where  MESSAGE_CODE_TYPE= :MessageCodeType order by Rank');
  try
    qr.ParamByName('MessageCodeType').Value:='INV';
    qr.Open;
    EmailCode:=qr.FieldByName('Code').AsString;
  finally
    qr.Free;
  end;

 if ClearingFLD.ItemIndex=3 then begin
   for i:= 0 to IN_SelectedList.Count-1 do begin
    HawbSerial:=StrToIntDef(IN_SelectedList[i],0) ;
    str:='SELECT serial_number,fk_invoice_status FROM HAWB'
        +' WHERE  (FK_CLEARING_STATE= ''1'' or FK_CLEARANCE_INSTRUCTION=''MED'' )  AND (FK_INVOICE_STATUS <> ''1'' or (fk_invoice_status is null) ) AND serial_number = :hawbSerial';
    if ksCountRecSQL(cn,str,[IntToStr(HawbSerial)] )>0 then begin
      OneInvoiceAmount:= GenerateOneInvoice(HawbSerial,timeStamp);
      D_sendSMSFRM.SendMyMessage(HawbSerial,EmailCode,'INV');
      InvoicesNumber:=InvoicesNumber+1;
      InvoicesValue:=InvoicesValue+OneInvoiceAmount;
    end;

   end;

     ListBox1.items.add(Format('Generated Invoices    : %9d',[InvoicesNumber]));
     ListBox1.items.add(Format('Total Invoiced Amount : %9.2f',[InvoicesValue]));

  exit;
 end;


  try
//    str:='SELECT serial_number FROM HAWB WHERE  FK_CLEARING_STATE=''1'' AND FK_INVOICE_STATUS < ''1'' AND FK_MAWB_REFER_NUMBER =  :MawbSerial';
    str:='SELECT serial_number,fk_invoice_status FROM HAWB'
        +' WHERE  (FK_CLEARING_STATE= ''1'' OR FK_CLEARANCE_INSTRUCTION = ''MED'' ) AND (FK_INVOICE_STATUS <> ''1'' or (fk_invoice_status is null) ) AND FK_MAWB_REFER_NUMBER = :MawbSerial';
    qr:= TksQuery.Create(cn,str);



    case ClearingFLD.ItemIndex  of
    0: begin
        qr.AddWhere('fK_clearance_instruction = ''IM4'' ');
      end;
    1: begin
        qr.AddWhere('fK_clearance_instruction = ''MED'' ');
      end;
    2: begin
        qr.AddWhere('fK_clearance_instruction = ''DO'' OR fK_clearance_instruction = ''DOZ'' ');
      end;
    3: begin
//        qr.AddWhere('serial_number = ' + intToStr(IN_HawbSerial) );
      end;
    4: begin
       //all
      end;

    end;


      qr.ParamByName('MawbSerial').AsInteger:=Mawbserial;
      qr.Open;

      while (not qr.eof) do begin
      HawbSerial:= qr.FieldByName('SERIAL_NUMBER').AsInteger;
      OneInvoiceAmount:= GenerateOneInvoice(HawbSerial,timeStamp);
      D_sendSMSFRM.SendMyMessage(HawbSerial,EmailCode,'INV');
      InvoicesNumber:=InvoicesNumber+1;
      InvoicesValue:=InvoicesValue+OneInvoiceAmount;
      qr.Next;
      end;


  finally
    qr.free;
  end;



{
With EmailSQL do begin
        Close;
        ParamByName('MessageCodeType').Value:='INV';
        If (Not Prepared) then Prepare;
        Open;
        First;
        EmailCode:=FieldByName('Code').AsString;
end;
}
//     ProgressBar1.Position:=ProgressBar1.Max;
     ListBox1.items.add(Format('Generated Invoices    : %9d',[InvoicesNumber]));
     ListBox1.items.add(Format('Total Invoiced Amount : %9.2f',[InvoicesValue]));
End;

function TU_GenerateInvFRM.CreateHawbCharge(Const HawbSerial:Integer):Integer;
var
  str:String;
  VatSQL             : TksQuery;
  qr                 : TIBCQuery;
  qrSenderInv        : TIBCQuery;
  qrUpd        : TIBCQuery;
  invSerial          : Integer;
  CustomsVal         : Double;
  TotalForeignAmount : double;
  AfterDiscountAmount: double;
  PreDiscountAmount  : double;
  FreightAmount      : Double;
  FreightCYP         : double;
  InsuranceAmount    : double;
  ExcRate            : Double;
  AmountNet:Double;
  UnitRate:Double;

begin
str:= 'select ha.serial_number,ha.medium_vat_rate, siv.*'
  +' from Sender_invoice siv'
  +' left outer join hawb ha on ha.serial_number=siv.fk_hawb_serial'
  +' where ha.serial_number  = :HawbSerial';

 ksExecSQLVar(cn,'delete from hawb_charge ha where ha.fk_hawb= :hawbSerial and fk_tariff_usage=''TRF'' ',[HawbSerial]);

 try
    with qrSenderInv do begin
      qrSenderInv:=TksQUery.Create(cn,str);
      qrSenderInv.ParamByName('HawbSerial').Value:=HawbSerial;
      qrSenderInv.Open;

     PreDiscountAmount  :=FieldByName('PRE_DISCOUNT_AMOUNT').AsFloat;
     afterDiscountAmount:=PrediscountAmount;
     FreightAmount      :=FieldByName('FREIGHT_AMOUNT').AsFloat;
     FreightCYP         :=FieldByName('FREIGHT_CYP_AMOUNT').AsFloat;
     InsuranceAmount    :=FieldByName('INSURANCE_AMOUNT').AsFloat;
     ExcRate            :=FieldByName('EXCHANGE_RATE').AsFloat;

     UnitRate            :=FieldByName('MEDIUM_VAT_RATE').AsFloat;

     TotalForeignAmount :=AfterDiscountAmount+FreightAmount+InsuranceAmount;
     CustomsVal         := Round( (TotalForeignAmount / ExcRate)+ FreightCYP );
     qrSenderInv.Close;

    end;

    with qr do begin
      qr:=TksQuery.Create(cn,'Select * from Hawb_charge where fk_hawb= :hawbSerial');
      ParamByName('HawbSerial').Value:= HawbSerial;
      KeyFields:='SERIAL_NUMBER';
      KeyGenerator:='GEN_HAWB_CHARGE';
      open;
      insert;
      FieldbyName('fk_hawb').Value:= HawbSerial;
      FieldbyName('fk_hawb_item').Value:=null;

      FieldbyName('fk_Tariff_usage').Value:='TRF';
      FieldbyName('fk_tariff_line').Value:=0;


      FieldbyName('CUSTOMS_VALUE').Value:=CustomsVal;
      FieldbyName('PRE_DISCOUNT_AMOUNT').Value:=PrediscountAmount;
      FieldbyName('QUANTITY').Value:=1;
      FieldbyName('weight').Value:=0;

      FieldbyName('tariff_code').Value:='VAT';
      FieldbyName('tariff_units_NOT_CHARGED').Value:=0;
      FieldbyName('tariff_charging_method').Value:='VA';

      FieldbyName('tariff_unit').Value:='';
      FieldbyName('Tariff_unit_increment').Value:=0;

      FieldbyName('Tariff_unit_rate').Value:= UnitRate;

      FieldbyName('duty_type').Value:='VAT';
      FieldbyName('amount_relieved').Value:=0;

      FieldbyName('amount_net').Value:=CustomsVal*UnitRate/100;

      FieldbyName('vat_code').Value:='';  //vat lines do not have vat code
      FieldbyName('Vat_rate').Value:=0;
      FieldbyName('tariff_relieved_RATE').Value:=0;

      Post;
      str:='update sender_invoice siv set customs_value= :val where siv.fk_hawb_serial = :HawbSerial';
      ksExecSQLVar(cn,str,[CustomsVal,HawbSerial]);
//      qrUpd:=TksQuery.Create(cn,str);
//      qr.ParamByName('val').Value:=CustomsVal;
//      qr.ParamByName('HawbSerial').Value:=Hawbserial;
//      qr.open

    end;
 finally
   qr.Free;
   qrSenderInv.Free;
 end;



end;


end.
