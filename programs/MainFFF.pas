unit MainFFF;
//test

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBAccess, IBC, StdCtrls, MemDS, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  Mask, wwdbedit, Wwdotdot, Wwdbcomb, vcl.wwspeedbutton, vcl.wwdbnavigator,
  vcl.wwclearpanel,g_generalProcs, Vcl.Menus, Vcl.Buttons, RzPanel, RzSplit,
  RzButton, RzSpnEdt, RzBmpBtn, Vcl.ComCtrls, vcl.wwriched;

type
  TMainFRM = class(TForm)
    t1: TIBCQuery;
    read: TIBCTransaction;
    write: TIBCTransaction;
    t1SERIAL_NUMBER: TIntegerField;
    t1FK_DUTY_RELIEVE: TIntegerField;
    t1FK_DUTY_TYPE: TStringField;
    t1PERCENTAGE_RELIEVE: TFloatField;
    MainMenu1: TMainMenu;
    Tariffs1: TMenuItem;
    SelectNormalTariffs1: TMenuItem;
    SelectDHLTariffs1: TMenuItem;
    System1: TMenuItem;
    BaseTariffs1: TMenuItem;
    RelievedRates1: TMenuItem;
    DutyTypes1: TMenuItem;
    InsertaTariff1: TMenuItem;
    InsertaTariff2: TMenuItem;
    ariffGroups1: TMenuItem;
    SelectCustomTariffs1: TMenuItem;
    ButtonsPNL: TPanel;
    Panel3: TPanel;
    Customs3: TMenuItem;
    InvoiceReport2: TMenuItem;
    NonInvoicedReport1: TMenuItem;
    N5: TMenuItem;
    ReadInvoiceFiles1: TMenuItem;
    CustomPayments2: TMenuItem;
    EditCheque1: TMenuItem;
    ReadFiles1: TMenuItem;
    ReadXML1: TMenuItem;
    RzSizePanel1: TRzSizePanel;
    RzSizePanel2: TRzSizePanel;
    Button4: TButton;
    Button15: TButton;
    ab1: TMenuItem;
    ManualUpdates1: TMenuItem;
    UpdateMawb1: TMenuItem;
    UpdateHawb1: TMenuItem;
    ExportTariffKeys1: TMenuItem;
    ReadKeys1: TMenuItem;
    Hawb1: TMenuItem;
    ables1: TMenuItem;
    Customers2: TMenuItem;
    Flights2: TMenuItem;
    BitBtn1: TRzBitBtn;
    ExchangeRates1: TMenuItem;
    BaseTables1: TMenuItem;
    Countries2: TMenuItem;
    Currencies2: TMenuItem;
    District1: TMenuItem;
    Units2: TMenuItem;
    DeliveryTerm1: TMenuItem;
    ariffs2: TMenuItem;
    CustomsPaymentType1: TMenuItem;
    ClearanceWaitingCodes1: TMenuItem;
    Params1: TMenuItem;
    Security1: TMenuItem;
    XMLparameters2: TMenuItem;
    SystemParameters1: TMenuItem;
    UserSecurity1: TMenuItem;
    LoginBTN: TRzBitBtn;
    PanelButtonsBTN: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Invoice1: TMenuItem;
    CreateInvoices1: TMenuItem;
    VatCategories1: TMenuItem;
    Reports: TMenuItem;
    UnclearedHawbs1: TMenuItem;
    UninvoicedHawbs1: TMenuItem;
    Customers1: TMenuItem;
    ariffKeys1: TMenuItem;
    MawbPerformance1: TMenuItem;
    N1: TMenuItem;
    Ports1: TMenuItem;
    Help1: TMenuItem;
    HelpFDL: TwwDBRichEdit;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    AllowToSave1: TMenuItem;
    User1: TMenuItem;
    ChangePassword1: TMenuItem;
    EmailSMSmessages1: TMenuItem;
    DeleteMawb1: TMenuItem;
    CreateFile1: TMenuItem;
    CustomPaymentCodes1: TMenuItem;
    Charges1: TMenuItem;
    Batch1: TMenuItem;
    ClearingStatus1: TMenuItem;
    DeleteHiddenTariff1: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure SelectNormalTariffs1Click(Sender: TObject);
    procedure SelectDHLTariffs1Click(Sender: TObject);
    procedure BaseTariffs1Click(Sender: TObject);
    procedure baseTariff1Click(Sender: TObject);
    procedure RelievedRates1Click(Sender: TObject);
    procedure DutyTypes1Click(Sender: TObject);
    procedure InsertaTariff1Click(Sender: TObject);
    procedure InsertaTariff2Click(Sender: TObject);
    procedure ariffGroups1Click(Sender: TObject);
    procedure SelectCustomTariffs1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure CustomPayments2Click(Sender: TObject);
    procedure EditCheque1Click(Sender: TObject);
    procedure ReadInvoiceFiles1Click(Sender: TObject);
    procedure ReadXML1Click(Sender: TObject);
    procedure UpdateMawb1Click(Sender: TObject);
    procedure ariff1Click(Sender: TObject);
    procedure ExportTariffKeys1Click(Sender: TObject);
    procedure ReadKeys1Click(Sender: TObject);
    procedure Hawb1Click(Sender: TObject);
    procedure LowValue1Click(Sender: TObject);
    procedure Customers2Click(Sender: TObject);
    procedure Flights2Click(Sender: TObject);
    procedure ExchangeRates1Click(Sender: TObject);
    procedure Countries2Click(Sender: TObject);
    procedure Currencies2Click(Sender: TObject);
    procedure District1Click(Sender: TObject);
    procedure UpdateHawb1Click(Sender: TObject);
    procedure Units2Click(Sender: TObject);
    procedure DeliveryTerm1Click(Sender: TObject);
    procedure CustomsPaymentType1Click(Sender: TObject);
    procedure ClearanceWaitingCodes1Click(Sender: TObject);
    procedure XMLparameters2Click(Sender: TObject);
    procedure SystemParameters1Click(Sender: TObject);
    procedure UserSecurity1Click(Sender: TObject);
    procedure LoginBTNClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CreateInvoices1Click(Sender: TObject);
    procedure VatCategories1Click(Sender: TObject);
    procedure UnclearedHawbs1Click(Sender: TObject);
    procedure UninvoicedHawbs1Click(Sender: TObject);
    procedure Customers1Click(Sender: TObject);
    procedure ariffKeys1Click(Sender: TObject);
    procedure MawbPerformance1Click(Sender: TObject);
    procedure Ports1Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure HelpFDLChange(Sender: TObject);
    procedure RzShapeButton1Click(Sender: TObject);
    procedure AllowToSave1Click(Sender: TObject);
    procedure ChangePassword1Click(Sender: TObject);
    procedure EmailSMSmessages1Click(Sender: TObject);
    procedure DeleteMawb1Click(Sender: TObject);
    procedure CreateFile1Click(Sender: TObject);
    procedure NonInvoicedReport1Click(Sender: TObject);
    procedure CustomPaymentCodes1Click(Sender: TObject);
    procedure InvoiceReport2Click(Sender: TObject);
    procedure ClearingStatus1Click(Sender: TObject);
    procedure DeleteHiddenTariff1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCCOnnection;
  Function CheckDefaultUnit():Boolean;
  Function CheckWaiveAmount():boolean;

  Function CheckDutyTypes():boolean;

  Function CheckChargingMethod():boolean;
  Function CheckTariffUsage():boolean;
  Function CheckTariffGroup():boolean;

  Function CheckVatMedium():boolean;
  Function CheckClearanceInstruction():boolean;
  Function CheckAccountCategory():boolean;
  Function CheckAccountCategoryItem():boolean;
  Function CheckDefaultIncoterm():Boolean;


  public
    { Public declarations }
    IsSaveTariff:Boolean;    // updated in SN_Login

  end;

var
  MainFRM: TMainFRM;
  Global_UserID: String;


implementation

uses M_BaseTariff, M_Units, V_hawb, MN_DutyTYpe,
   LN_ListBaseTariffs, Unit1,LN_RelievedCodes,S_SelectTariffV1,
  M_STariffX1, testUnit, G_KyrSQL, U_ClairDML,
  LN_ListGroupTariffs, H_Mawb, V_Mawb, M_customerNew, S_selectCustomer,
  V_hawbItem4, V_hawbData, v_MawbHawb, U_generateInv, C_ListCustomPayments,
  c_readDHLInvoices, D_SendSMS, X_readFile, M_CHangeMawbID, R_tariffKeys,
  I_ReadTariffKeys, R_SearchHawbSimple, R_SearchLowValue, M_Flight,
  M_ExchangeRate, U_Country, U_currency, U_District, M_modifyHawb,
  M_deliveryTerm, M_CustomPaymentType, M_clearanceWaitingCode, M_XMLParam,
  M_Parameters, SN_User, SN_Login, m_VAT, TestForm, R_UnclearedHawbs,
  R_uninvoicedHawbs, R_CustsomersAll, R_MawbPerformanceNew, R_HawbsToReceive,
  M_port, H_Help, SN_ModifyPassword, M_EmailMessages, P_MultiEDE, M_DeleteMawb,
  I_createInvoiceFile, M_CustomPaymentCodes, R_GlobalDhlInvoices,
  M_ChangeStatusBatch, M_STariffDelete;



{$R *.DFM}

procedure TMainFRM.Button13Click(Sender: TObject);
begin
gpShowModal(TU_CountryFRM);
end;

procedure TMainFRM.Button14Click(Sender: TObject);
Var
Tariff:String;
begin
  S_SelectTariffV1FRM.In_SelectBy:='BY_TARIFF_CODE';
  S_SelectTariffV1FRM.IN_TariffUsage :='TARIFF';
  S_SelectTariffV1FRM.In_ForSelection:='N';

  S_selectTariffV1FRM.showModal;

end;

procedure TMainFRM.Button15Click(Sender: TObject);
begin
//gpShowModal(TX_readFileFRM);
gpShowModal(TI_createInvoiceFileFRM);

end;

procedure TMainFRM.Button17Click(Sender: TObject);
Var
  HawbItem:ThdHawbItemRecord;

begin
HawbItem.HawbItemSerial:=500071;
//HawbItem.HawbItemSerial:=1;

HawbItem.HawbSerial:=1;
HawbItem.HawbItemSerial:= 500071;
V_hawbItemFRM4.IN_HawbItem:=HawbItem;
V_hawbItemFRM4.IN_ACTION:='EDIT';
V_hawbItemFRM4.ShowModal;

end;

procedure TMainFRM.Button2Click(Sender: TObject);
begin
ShowMessage('Units table already exists as Measurement_unit');
end;

procedure TMainFRM.Button4Click(Sender: TObject);
begin
//testUnitFRM.ShowModal;
TestFormFRM.ShowModal;
end;

procedure TMainFRM.Button6Click(Sender: TObject);
begin
//  M_CustomerNewFRM.In_Action:='DISPLAY';
//  M_CustomerNewFRM.In_CustomerCode:=100001;
//
//  M_CustomerNewFRM.In_Action:='INSERT';
//  M_CustomerNewFRM.In_CustomerName:='George Louca 3';

//  M_CustomerNewFRM.showModal;
end;



procedure TMainFRM.DeleteHiddenTariff1Click(Sender: TObject);
begin
  gpShowModal(TM_STariffDeleteFRM);
end;

procedure TMainFRM.DeleteMawb1Click(Sender: TObject);
begin
gpShowModal(TM_DeleteMawbFRM);
end;

procedure TMainFRM.DeliveryTerm1Click(Sender: TObject);
begin
gpShowModal(TM_deliveryTermFRM);
end;

procedure TMainFRM.District1Click(Sender: TObject);
begin

gpShowModal(TU_DistrictFRM);
end;

procedure TMainFRM.DutyTypes1Click(Sender: TObject);
begin
  gpShowModal(TMN_DutyTYpeFRM);
end;

procedure TMainFRM.EditCheque1Click(Sender: TObject);
vAR

Frm:TC_ListCustomPaymentsFRM;
begin
  frm := TC_ListCustomPaymentsFRM.Create(nil);
  frm.IN_Access:='Y';
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TMainFRM.EmailSMSmessages1Click(Sender: TObject);
begin
gpShowModal(TM_EmailMessagesFRM);
end;

procedure TMainFRM.ExchangeRates1Click(Sender: TObject);
begin
gpShowModal(TM_ExchangeRateFRM);
end;

procedure TMainFRM.ExportTariffKeys1Click(Sender: TObject);
begin
 gpShowModal(TR_TariffKeysFRM);
end;

procedure TMainFRM.Flights2Click(Sender: TObject);
begin
gpShowModal(TM_FlightFRM);
end;

procedure TMainFRM.FormActivate(Sender: TObject);
begin
  CheckDutyTypes();
  CheckDefaultUnit();
  CheckChargingMethod();
  CheckTariffUsage();
  CheckTariffGroup();
  CheckWaiveAmount();
//  CheckVatMethod();
  CheckVatMedium();
  CheckClearanceInstruction();
  CheckAccountCategory();
  CheckAccountCategoryItem();
  CheckDefaultIncoterm();


  if Global_UserID='' then begin
    self.Menu:=nil;
    PanelButtonsBTN.Enabled:=false;
    exit;
  end;

  LoginBTN.SetFocus;

end;

procedure TMainFRM.FormCreate(Sender: TObject);
begin
    cn:=ClairDML.CabCOnnection;
end;

procedure TMainFRM.Hawb1Click(Sender: TObject);
begin
gpShowModal(TR_SearchHawbSimpleFRM);
end;

procedure TMainFRM.Help1Click(Sender: TObject);
var
        myForm:TH_HelpFRM;
begin
 myForm := TH_HelpFRM.Create(nil) ;
  try
     myForm.IN_RtfTExt:=HElpFDL.GetRTFText;
     myform.ShowModal;
   finally
     myForm.Free;
   end;

end;

procedure TMainFRM.HelpFDLChange(Sender: TObject);
var
        myForm:TH_HelpFRM;
        txt:String;
begin
 myForm := TH_HelpFRM.Create(nil) ;
  try
    txt:=HElpFDL.GetRTFText;
     myForm.IN_RtfTExt:=txt;
     myform.ShowModal;
   finally
     myForm.Free;
   end;

end;

procedure TMainFRM.InsertaTariff1Click(Sender: TObject);
Var
myForm:TM_STariffX1FRM;
begin
  try
     myForm := TM_STariffX1FRM.Create(nil);
     myForm.in_Action:='EDIT';
     myFOrm.in_TariffCode:='asdf';
     myForm.ShowModal;
   finally
     myForm.Free;
   end;

end;

procedure TMainFRM.InsertaTariff2Click(Sender: TObject);
Var
myForm:TM_STariffX1FRM;
begin
  try
     myForm := TM_STariffX1FRM.Create(nil);
     myForm.in_Action:='INSERT';
     myForm.in_TariffUsage:='TRF';
     //myFOrm.in_serial:=174;
     myForm.ShowModal;
   finally
     myForm.Free;
   end;

end;

procedure TMainFRM.InvoiceReport2Click(Sender: TObject);
begin
gpShowModal(TR_GlobalDhlInvoicesFRM);

end;

procedure TMainFRM.LoginBTNClick(Sender: TObject);
begin
gpShowModal(TSN_LoginFRm);
end;

procedure TMainFRM.LowValue1Click(Sender: TObject);
begin
gpShowModal(TR_SearchLowValueFRM);
end;

procedure TMainFRM.MawbPerformance1Click(Sender: TObject);
begin
 gpShowModal(TR_MawbPerformanceNewFRM);
end;

procedure TMainFRM.NonInvoicedReport1Click(Sender: TObject);
begin
  gpShowModal(TR_uninvoicedHawbsFRM);
end;

procedure TMainFRM.Ports1Click(Sender: TObject);
begin
gpShowModal(TM_portFRM);
end;

procedure TMainFRM.ReadInvoiceFiles1Click(Sender: TObject);
begin
gpShowModal(TC_ReadDhlInvoicesFRM);
{
var
Frm:TC_ReadDhlInvoicesFRM;
begin
  frm := TC_ReadDhlINvoicesFRM.Create(nil);
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;
}

end;

procedure TMainFRM.ReadKeys1Click(Sender: TObject);
begin
gpShowModal(TI_ReadTariffKeysFRM);

end;

procedure TMainFRM.ReadXML1Click(Sender: TObject);
begin
gpShowModal(TX_readFileFRM);
end;

procedure TMainFRM.RelievedRates1Click(Sender: TObject);
var
 myForm:TLN_RelievedCodesFRM;
begin
 myForm := TLN_RelievedCodesFRM.Create(nil) ;
  try
     myForm.ShowModal;

   finally
     myForm.Free;

   end;

end;

procedure TMainFRM.RzShapeButton1Click(Sender: TObject);
begin
gpShowModal(TSN_LoginFRm);

end;

procedure TMainFRM.SelectCustomTariffs1Click(Sender: TObject);
begin
  S_SelectTariffV1FRM.In_SelectBy:='BY_TARIFF_CODE';
  S_SelectTariffV1FRM.IN_TariffUsage :='CUS';
  S_SelectTariffV1FRM.In_ForSelection:='N';
//  S_SelectTariffV1FRM.IN_AllowAddition:=True;

  S_selectTariffV1FRM.showModal;

end;

procedure TMainFRM.SelectDHLTariffs1Click(Sender: TObject);
begin
  S_SelectTariffV1FRM.In_SelectBy:='BY_TARIFF_CODE';
  S_SelectTariffV1FRM.IN_TariffUsage :='DHL';
  S_SelectTariffV1FRM.In_ForSelection:='N';
//  S_SelectTariffV1FRM.IN_AllowAddition:=true;

  S_selectTariffV1FRM.showModal;

end;

procedure TMainFRM.SelectNormalTariffs1Click(Sender: TObject);
begin
  S_SelectTariffV1FRM.In_SelectBy:='BY_TARIFF_CODE';
  S_SelectTariffV1FRM.IN_TariffUsage :='TRF';
  S_SelectTariffV1FRM.In_ForSelection:='N';
//  S_SelectTariffV1FRM.IN_AllowAddition:=true;

  S_selectTariffV1FRM.showModal;

end;

procedure TMainFRM.SpeedButton1Click(Sender: TObject);
begin
  V_MawbFRM.showModal;
end;

procedure TMainFRM.SpeedButton2Click(Sender: TObject);
begin
    gpShowModal(TR_SearchHawbSimpleFRM);
end;

procedure TMainFRM.SystemParameters1Click(Sender: TObject);
begin
gpShowModal(TM_ParametersFRM);
end;

procedure TMainFRM.UnclearedHawbs1Click(Sender: TObject);
begin
  gpShowModal(TR_UnclearedHawbsFRM);
end;

procedure TMainFRM.UninvoicedHawbs1Click(Sender: TObject);
begin
  gpShowModal(TR_uninvoicedHawbsFRM);
end;

procedure TMainFRM.Units2Click(Sender: TObject);
begin
gpShowModal(TM_UnitsFRM);

end;

procedure TMainFRM.UpdateHawb1Click(Sender: TObject);
begin
gpShowmodal(TM_ModifyHawbFRM);
end;

procedure TMainFRM.UpdateMawb1Click(Sender: TObject);
begin
gpShowModal( TM_ChangeMawbIDFRM);
end;

procedure TMainFRM.UserSecurity1Click(Sender: TObject);
begin
gpShowModal(TSN_UserFRM);
end;

procedure TMainFRM.VatCategories1Click(Sender: TObject);
begin
gpShowModal(TM_VatFRM);

end;

procedure TMainFRM.XMLparameters2Click(Sender: TObject);
begin
gpShowModal(TM_XmlParamFRM);
end;

procedure TMainFRM.Button7Click(Sender: TObject);
Begin
//CreateForm(TMN_DutyTYpeFRM);
{
var
        myForm:TLN_ListDutyEntries2FRM;
begin
 myForm := TLN_ListDutyEntries2FRM.Create(nil) ;
  try
     myForm.ShowModal;

   finally
     myForm.Free;
   end;
}
end;

procedure TMainFRM.AllowToSave1Click(Sender: TObject);
begin
  ShowMessage('No action here. if you have access here, you can save tariffs on Hawb Screen ');
end;

procedure TMainFRM.ariff1Click(Sender: TObject);
begin
ShowMessage('tariff');
end;

procedure TMainFRM.ariffGroups1Click(Sender: TObject);
begin
gpShowModal(TLN_ListGroupTariffsFRM);
end;

procedure TMainFRM.ariffKeys1Click(Sender: TObject);
begin
 gpShowModal(TR_TariffKeysFRM);
end;

procedure TMainFRM.baseTariff1Click(Sender: TObject);
var
 myForm:TM_BaseTariffFRM;
begin
 myForm := TM_BaseTariffFRM.Create(nil) ;
  try
     myForm.ShowModal;

   finally
     myForm.Free;
   end;

end;

procedure TMainFRM.BaseTariffs1Click(Sender: TObject);
var
//        myForm:TLN_ListBaseTariffsFRM;
        myForm:TForm;
begin
 myForm := TLN_ListBaseTariffsFRM.Create(nil) ;
  try
     myForm.ShowModal;

   finally
     myForm.Free;
   end;

end;

procedure TMainFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TMainFRM.ChangePassword1Click(Sender: TObject);
begin
gpShowModal(TSN_ModifyPasswordFRM);
end;

procedure TMainFRM.ClearanceWaitingCodes1Click(Sender: TObject);
begin
  gpShowModal(TM_ClearanceWaitingCodeFRM);
end;

procedure TMainFRM.ClearingStatus1Click(Sender: TObject);
begin
gpShowModal(TM_ChangeStatusBatchFRM);
end;

procedure TMainFRM.Countries2Click(Sender: TObject);
begin
  gpShowModal(TU_CountryFRM);
end;

procedure TMainFRM.CreateFile1Click(Sender: TObject);
begin
gpShowModal(TI_createInvoiceFileFRM);
end;

procedure TMainFRM.CreateInvoices1Click(Sender: TObject);
begin
//sdf
end;

procedure TMainFRM.Currencies2Click(Sender: TObject);
begin
      gpShowModal(TU_CurrencyFRM);
end;

procedure TMainFRM.Customers1Click(Sender: TObject);
begin
  gpShowModal(TR_CustomersAllFRM);
end;

procedure TMainFRM.Customers2Click(Sender: TObject);
begin
S_SelectCustomerFRM.SelectCustomer('-1');
S_SelectCustomerFRM.G_Caller :='MainFRM';
S_SelectCustomerFRM.ShowModal;

end;

procedure TMainFRM.CustomPaymentCodes1Click(Sender: TObject);
begin
gpShowModal(TM_CustomPaymentCodesFRM);
end;

procedure TMainFRM.CustomPayments2Click(Sender: TObject);
vAR

Frm:TC_ListCustomPaymentsFRM;
begin
  frm := TC_ListCustomPaymentsFRM.Create(nil);
  frm.IN_Access:='N';
  try
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

procedure TMainFRM.CustomsPaymentType1Click(Sender: TObject);
begin
  gpShowModal(TM_customPaymentTypeFRM);
end;


Function TMainFRM.CheckChargingMethod():boolean;
var
  qr: TksQuery;
begin

   try
    qr:=TksQuery.Create(cn,'select count(*) as cnt from Charging_method');
    qr.Open;
    if qr.FieldbyName('cnt').AsInteger<5 then begin
      ksExecSQLVar(cn,'delete from CHARGING_METHOD',[]);

      ksExecSQLVar(cn,'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)',['WG','By Weight','N']);
      ksExecSQLVar(cn,'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)',['VA','By Value','Y']);
      ksExecSQLVar(cn,'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)',['DR','Drop Charge','N']);
      ksExecSQLVar(cn,'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)',['UN','By Unit','N']);
      ksExecSQLVar(cn,'insert into charging_method (charging_code, description,is_default)  values( :code,:desc,:def)',['VL','By Value Limits','N']);

    end;
    qr.Close;
   finally
    qr.Free;
   end;
end;



Function TMainFRM.CheckVatMedium():boolean;
var
  qr: TksQuery;
  str:String;
begin

   try
    qr:=TksQuery.Create(cn,'select  * from VAT_CATEGORY Where code= :VatCode');
    qr.ParamByName('VatCode').Value :='MED';
    qr.Open;
    if qr.IsEmpty then begin
      str:='INSERT INTO VAT_CATEGORY (CODE, DESCRIPTION, RATE, XML_CODE, IS_DEFAULT)'
               +' VALUES (:Code, :desc, :RATE, :xml, :isDefault)';
      ksExecSQLVar(cn,str,['MED','Medium Value','19.00','VAT','N']);
    end;
    qr.Close;
   finally
    qr.Free;
   end;

   try
    qr:=TksQuery.Create(cn,'select * from VAT_CATEGORY Where code= :VatCode');
    qr.ParamByName('VatCode').Value :='V01';
    qr.Open;
    if qr.IsEmpty then begin
      str:='INSERT INTO VAT_CATEGORY (CODE, DESCRIPTION, RATE, XML_CODE, IS_DEFAULT)'
               +' VALUES (:Code, :desc, :RATE, :xml, :isDefault)';
      ksExecSQLVar(cn,str,['V01','Normal Rate','19.00','VAT','Y']);
    end;
    qr.Close;
   finally
    qr.Free;
   end;

end;




Function TMainFRM.CheckTariffUsage():boolean;
var
  qr: TksQuery;
begin

   try
    qr:=TksQuery.Create(cn,'select count(*) as cnt from TARIFF_USAGE');
    qr.Open;
    if qr.FieldbyName('cnt').AsInteger<>3 then begin
      ksExecSQLVar(cn,'delete from Tariff_usage',[]);
      ksExecSQLVar(cn,'insert into TARIFF_USAGE (USAGE_code, description,order_number)  values( :code,:desc,:ord)',['TRF','For Tariffs','1']);
      ksExecSQLVar(cn,'insert into TARIFF_USAGE (USAGE_code, description,order_number)  values( :code,:desc,:ord)',['DHL','DHL Charges','2']);
      ksExecSQLVar(cn,'insert into TARIFF_USAGE (USAGE_code, description,order_number)  values( :code,:desc,:ord)',['CUS','Custom Charges','3']);
//      ksExecSQL(cn,'insert into TARIFF_USAGE (USAGE_code, description,order_number)  values( :code,:desc,:ord)',['VAT','VAT','4']);
    end;
    qr.Close;
   finally
    qr.Free;
   end;
end;


Function TMainFRM.CheckWaiveAmount():boolean;
var
  qr: TksQuery;
begin
   if ksCountRecSQL(cn,'select spa.parameter_id, spa.int_1 from system_parameters spa where parameter_id = :Param ',['IG3'])=0 then begin
      ksExecSQLVar(cn,'insert into SYSTEM_PARAMETERS (parameter_ID,INT_1) values( :code, :VAL)',['IG3',150]);
   end;

end;


Function TMainFRM.CheckDutyTypes():boolean;
var
  qr: TksQuery;
begin
   if ksCountRecSQL(cn,'select duty_code from Duty_type where duty_code= :dutyCode',['IMP'])=0 then begin
      ksExecSQLVar(cn,'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)',['IMP','Y','Import Duty','N',1]);
   end;

   if ksCountRecSQL(cn,'select duty_code from Duty_type where duty_code= :dutyCode',['EXC'])=0 then begin
      ksExecSQLVar(cn,'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)',['EXC','Y','Excise Duty','N','2']);
   end;

   if ksCountRecSQL(cn,'select duty_code from Duty_type where duty_code= :dutyCode',['VAT'])=0 then begin
      ksExecSQLVar(cn,'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)',['VAT','Y','VAT','Y','7']);
   end;

   if ksCountRecSQL(cn,'select duty_code from Duty_type where duty_code= :dutyCode',['DHL'])=0 then begin
      ksExecSQLVar(cn,'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)',['DHL','Y','DHL Charges','N','8']);
   end;

   if ksCountRecSQL(cn,'select duty_code from Duty_type where duty_code= :dutyCode',['CUS'])=0 then begin
      ksExecSQLVar(cn,'insert into DUTY_TYPE (DUTY_CODE, IS_ACTIVE, description,is_vat,order_number) values( :code,:active,:desc,:isVat,:ord)',['CUS','Y','Custom Charges','N','9']);
   end;


end;




Function TMainFRM.CheckDefaultUnit():Boolean;
var
  qr:TksQuery;
  str:string;
begin

   if ksCountRecSQL(cn,'select UNIT from UNIT_MEASURE where unit= :UNIT',['UNI'])=0 then begin
      str:= 'INSERT INTO UNIT_MEASURE (SERIAL_NUMBER, UNIT, DESCRIPTION, ORDER_NUMBER, XML_CODE,is_default) VALUES (:num, :unit,:desc,:order ,:Xml,:default)' ;
      ksExecSQLVar(cn,str,['1000','UNI','Units','1','UN','Y']);
   end;

end;


Function TMainFRM.CheckDefaultIncoterm():Boolean;
var
  qr:TksQuery;
  str:string;
begin

   if ksCountRecSQL(cn,'select CODE from DELIVERY_TERM where Code= :CODE',['DDU'])=0 then begin
      str:= 'INSERT INTO DELIVERY_TERM (CODE,ORDER_NUMBER) VALUES (:code,:NUM)' ;
      ksExecSQLVar(cn,str,['DDU','1']);
   end;

end;



Function TMainFRM.CheckTariffGroup():boolean;
var
  qr: TksQuery;
begin

   try
    qr:=TksQuery.Create(cn,'select count(*) as cnt from TARIFF_GROUP');
    qr.Open;
    if qr.FieldbyName('cnt').AsInteger <> 6 then begin
      ksExecSQLVar(cn,'delete from TARIFF_GROUP',[]);

      ksExecSQLVar(cn,'insert into TARIFF_GROUP (code, description)  values( :code, :desc)',['IM4','IM4 - Normal import']);
      ksExecSQLVar(cn,'insert into TARIFF_GROUP (code, description)  values( :code, :desc)',['LOW','DTP - Low Value']);
      ksExecSQLVar(cn,'insert into TARIFF_GROUP (code, description)  values( :code, :desc)',['DO' ,'DO  - Delivery Order']);
      ksExecSQLVar(cn,'insert into TARIFF_GROUP (code, description)  values( :code, :desc)',['DOZ','DOZ - Zero Delivery']);
      ksExecSQLVar(cn,'insert into TARIFF_GROUP (code, description)  values( :code, :desc)',['MED','MED - Medium Value']);
      ksExecSQLVar(cn,'insert into TARIFF_GROUP (code, description)  values( :code, :desc)',['STC','STC - Status C']);

    end;
    qr.Close;
   finally
    qr.Free;
   end;
end;



Function TMainFRM.CheckClearanceInstruction():boolean;
var
  qr: TksQuery;
begin

   try
    qr:=TksQuery.Create(cn,'select count(*) as cnt from CLEARANCE_INSTRUCTION');
    qr.Open;
    if qr.FieldbyName('cnt').AsInteger<>6 then begin
      ksExecSQLVar(cn,'delete from CLEARANCE_INSTRUCTION',[]);

      ksExecSQLVar(cn,'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',['IM4','IM4 - Normal import'   ,'IM4' ,'Y','1','Y']);
      ksExecSQLVar(cn,'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',['MED','MED - Medium Value'    ,'MED' ,'Y','2','Y']);
      ksExecSQLVar(cn,'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',['LOW','LOW - Low Value'       ,'LOW' ,'N','3','N']);
      ksExecSQLVar(cn,'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',['STC','STC - Status C'        ,'STC' ,'N','4','N']);
      ksExecSQLVar(cn,'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',['DO' ,'DO  - Delivery Order'  ,'DO'  ,'N','5','Y']);
      ksExecSQLVar(cn,'insert into CLEARANCE_INSTRUCTION (code, description, fk_tariff_group,is_vat_apply,order_number,is_display)  values( :code, :desc, :tarGroup, :Isvat, :orderNum, :disp)',['DOZ','DOZ - DO Zero Delivery','DOZ' ,'N','6','Y']);

    end;
    qr.Close;
   finally
    qr.Free;
   end;
end;



Function TMainFRM.CheckAccountCategory():boolean;
var
  qr: TksQuery;
begin
//used in custom payments
   if ksCountRecSQL(cn,'select serial_number from account_category',[]) <7 then begin

    ksExecSQLVar(cn,'delete from account_category_item',[]);
    ksExecSQLVar(cn,'delete from account_category',[]);

    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :type, :collect)',['100' ,'CASH','Y']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :TYPE, :collect)',['101' ,'DDP' ,'N']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :type, :collect)',['102', 'WOF', 'N']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :type, :collect)',['103', 'PRE', 'N']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:serial, :type, :collect)',['104', 'BRO', 'N']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:Serial, :type, :collect)',['105', 'AC1', 'N']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY (SERIAL_NUMBER, ACCOUNT_TYPE, IS_COLLECTED) VALUES (:Serial, :type, :collect)',['106', 'ERR', 'Y']);
   end;

end;

Function TMainFRM.CheckAccountCategoryItem():boolean;
begin
   if ksCountRecSQL(cn,'select serial_number from account_category_item',[]) <7 then begin
    ksExecSQLVar(cn,'delete from account_category_item',[]);

    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)',['200' ,'DUTYCYDTU','100']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)',['201' ,'DUTYCYDTP','101']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)',['202' ,'DUTYCYWOF','102']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)',['203' ,'470004263','103']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)',['204' ,'961195524','104']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)',['205' ,'470022281','105']);
    ksExecSQLVar(cn,'INSERT INTO ACCOUNT_CATEGORY_ITEM (SERIAL_NUMBER, ACCOUNT_NUMBER,FK_ACCOUNT_CATEGORY) VALUES (:serial, :ACCOUNT, :Category)',['206' ,'47'       ,'105']);
   end;

end;


end.
