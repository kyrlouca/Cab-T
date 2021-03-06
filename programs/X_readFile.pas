
unit X_readFile;
//XMLNode has Childnodes , and you can use Node.Childnodes[0] or Node.ChildNodes['Hdr] to get child node
//XMLNodeList is the list itself. it has attribute list.count and list['arrive'] to get the node
// childnodes will create a node if NOT found . FindNode will result to null and chekc assign
//if Assigned(list['data'])
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.DateUtils,System.Variants, System.Classes, System.ioUtils,Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc, Data.DB, MemDS, DBAccess, IBC,Math, RzButton, RzPanel,
  Vcl.ExtCtrls, Vcl.Mask, RzEdit, vcl.Wwdbedit, RzLabel, RzShellDialogs,CodeSiteLogging;

type
TMawbRec =Record
  mawbSerial:integer;
  MawbId:String;
  EquipmentId:String;
  ArrivalDate:TDate;
  FileName:String;
End;
THawbRec =Record
  HawbId:String;
  HawbSerial:Integer;
  MawbSerial:Integer;
  MawbId:String;
  ArrivalDate:String;
End;
THawbAge=(haNotFound, haSame, haPartial, haOld, haDuplicate);

  TX_readFileFRM = class(TForm)
    XMLDocument1: TXMLDocument;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    HawbSQL: TIBCQuery;
    MawbSQL: TIBCQuery;
    SenderInvoiceSQL: TIBCQuery;
    SenderInvoiceSQLFK_HAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_SERIAL: TIntegerField;
    SenderInvoiceSQLINVOICE_NUMBER: TStringField;
    SenderInvoiceSQLFK_HAWB_ID: TStringField;
    SenderInvoiceSQLINVOICE_AMOUNT: TFloatField;
    SenderInvoiceSQLFREIGHT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLINSURANCE_AMOUNT: TFloatField;
    SenderInvoiceSQLOTHER_CHARGES_AMOUNT: TFloatField;
    SenderInvoiceSQLTOTAL_AMOUNT: TFloatField;
    SenderInvoiceSQLCURRENCY: TStringField;
    SenderInvoiceSQLEXCHANGE_RATE: TFloatField;
    SenderInvoiceSQLFACTOR: TFloatField;
    SenderInvoiceSQLFREIGHT_CYP_AMOUNT: TFloatField;
    SenderInvoiceSQLCUSTOMS_VALUE: TFloatField;
    SenderInvoiceSQLFK_MAWB_SERIAL: TIntegerField;
    SenderInvoiceSQLIS_VALID: TStringField;
    SenderInvoiceSQLNUMBER_OF_HAWB_ITEMS: TIntegerField;
    SenderInvoiceSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    SenderInvoiceSQLDISCOUNT_RATE: TFloatField;
    SenderInvoiceSQLFACTOR_NUMERIC: TFloatField;
    HawbItemSQL: TIBCQuery;
    HawbItemSQLSERIAL_NUMBER: TIntegerField;
    HawbItemSQLFK_HAWB_SERIAL: TIntegerField;
    HawbItemSQLFK_COUNTRY_ORIGIN: TIntegerField;
    HawbItemSQLDESCRIPTION: TStringField;
    HawbItemSQLFK_RELIEF_CODE: TStringField;
    HawbItemSQLFK_IMPORT_TYPE: TStringField;
    HawbItemSQLINVOICE_VALUE: TFloatField;
    HawbItemSQLDUTY_TYPE: TStringField;
    HawbItemSQLTARIFF_DESCRIPTION: TStringField;
    HawbItemSQLNET_QUANTITY: TIntegerField;
    HawbItemSQLIMPORT_DUTY_RATE: TFloatField;
    HawbItemSQLRELIEVED_IMPORT_DUTY: TFloatField;
    HawbItemSQLEXCISE_DUTY_RATE: TFloatField;
    HawbItemSQLEXCISE_RELIEVED: TFloatField;
    HawbItemSQLTRL_RATE: TFloatField;
    HawbItemSQLTRL_RELEIVED: TFloatField;
    HawbItemSQLVAT_RATE: TFloatField;
    HawbItemSQLVAT_RELEIVED: TFloatField;
    HawbItemSQLCUSTOMS_VALUE: TFloatField;
    HawbItemSQLCURRENCY_RATE: TFloatField;
    HawbItemSQLCURRENCY: TStringField;
    HawbItemSQLFK_MAWB: TIntegerField;
    HawbItemSQLFK_VAT_CODE: TIntegerField;
    HawbItemSQLFK_TARIFF_C_CODE: TStringField;
    HawbItemSQLFK_TARIFF_CODE: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_UNIT: TStringField;
    HawbItemSQLIMPORT_DUTY_RATE_QUANT: TFloatField;
    HawbItemSQLIMPORT_DUTY_RATE_BASE: TFloatField;
    HawbItemSQLDUTY_IMPORT_PAY: TFloatField;
    HawbItemSQLDUTY_TRL_PAY: TFloatField;
    HawbItemSQLDUTY_EXCISE_PAY: TFloatField;
    HawbItemSQLDUTY_VAT_PAY: TFloatField;
    HawbItemSQLDUTY_IMPORT_TOTAL: TFloatField;
    HawbItemSQLDUTY_EXCISE_TOTAL: TFloatField;
    HawbItemSQLDUTY_TRL_TOTAL: TFloatField;
    HawbItemSQLDUTY_VAT_TOTAL: TFloatField;
    HawbItemSQLTOTAL_VALUE_FOR_VAT: TFloatField;
    HawbItemSQLDUTY_TOTAL_CHARGES: TFloatField;
    HawbItemSQLFK_EXCISE_CODE: TStringField;
    HawbItemSQLEURO1: TStringField;
    HawbItemSQLEURO2: TStringField;
    HawbItemSQLPOSOSTOSIS: TStringField;
    HawbItemSQLFK_SENDER_INVOICE_SERIAL: TIntegerField;
    HawbItemSQLMULTI_ITEMS_INVOICE: TStringField;
    HawbItemSQLINVOICE_LINE: TIntegerField;
    HawbItemSQLPRE_DISCOUNT_AMOUNT: TFloatField;
    HawbItemSQLWEIGHT_NET: TFloatField;
    HawbItemSQLUNIT: TStringField;
    HawbItemSQLEURO_PENDING: TStringField;
    MawbSQLREFERENCE_NUMBER: TIntegerField;
    MawbSQLMAWB_ID: TStringField;
    MawbSQLDATE_ARRIVED: TDateField;
    MawbSQLFK_COUNTRY_CONSIGNEE: TIntegerField;
    MawbSQLREFERENCE_YEAR: TSmallintField;
    MawbSQLFK_PORT_IMPORTATION: TIntegerField;
    MawbSQLSIGNATORY_NAME: TStringField;
    MawbSQLFORM_DATE: TDateField;
    MawbSQLFLIGHT_NUMBER: TStringField;
    MawbSQLPASSED: TStringField;
    MawbSQLROTATION_NUMBER: TIntegerField;
    MawbSQLROTATION_YEAR: TSmallintField;
    MawbSQLFK_PORT_CLEARING: TIntegerField;
    MawbSQLGOODS_NUMBER: TIntegerField;
    MawbSQLGOODS_DESCRIPTION: TStringField;
    MawbSQLCBOOK_NUMBER: TStringField;
    MawbSQLINVOICED: TStringField;
    MawbSQLSENT_TO_HEAD: TStringField;
    MawbSQLCUSTOMS_OVERTIME_HOURS: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE: TFloatField;
    MawbSQLSTORAGE_EXPENSES: TFloatField;
    MawbSQLDELIVERY_EXPENSES: TFloatField;
    MawbSQLAMOUNT_NOT_INVOICED: TFloatField;
    MawbSQLAMOUNT_INVOICED: TFloatField;
    MawbSQLDATE_PASSED: TDateField;
    MawbSQLGOODS_WEIGHT: TIntegerField;
    MawbSQLHAWBS_CLEARED_FIRST_TIME: TIntegerField;
    MawbSQLHAWBS_IN_MAWB: TIntegerField;
    MawbSQLDOCS_NUMBER: TIntegerField;
    MawbSQLDOCS_WEIGHT: TFloatField;
    MawbSQLHIGH_VALUE_NUMBER: TIntegerField;
    MawbSQLHIGH_VALUE_WEIGHT: TFloatField;
    MawbSQLMEDIUM_VALUE_NUMBER: TIntegerField;
    MawbSQLMEDIUM_VALUE_WEIGHT: TFloatField;
    MawbSQLLOW_VALUE_NUMBER: TIntegerField;
    MawbSQLLOW_VALUE_WEIGHT: TFloatField;
    MawbSQLCUSTOMS_OVERTIME_RATE_TYPE: TStringField;
    MawbSQLXML_CONSOLIDATED_ID: TStringField;
    MawbSQLROTATION_2: TStringField;
    MawbSQLHMSD: TStringField;
    MawbSQLLOW_VALUE_TDID: TStringField;
    MawbSQLSTATUSC_NUMBER: TIntegerField;
    MawbSQLSTATUSC_WEIGHT: TIntegerField;
    MawbSQLTDID_NEW: TStringField;
    MawbSQLF63: TStringField;
    MawbSQLSTATUSC: TStringField;
    MawbSQLTDID_MEDIUM: TStringField;
    HawbSQLSERIAL_NUMBER: TIntegerField;
    HawbSQLHAB_ID: TStringField;
    HawbSQLFK_MAWB_REFER_NUMBER: TIntegerField;
    HawbSQLFK_CUSTOMER_CODE: TIntegerField;
    HawbSQLFK_CLEARANCE_INSTRUCTION: TStringField;
    HawbSQLDESCRIPTION: TStringField;
    HawbSQLWEIGHT: TFloatField;
    HawbSQLFK_CLEARING_STATE: TStringField;
    HawbSQLFK_INVOICE_STATUS: TStringField;
    HawbSQLFK_CURRENCY: TStringField;
    HawbSQLEXCHANGE_RATE: TFloatField;
    HawbSQLINVOICE_TOTAL: TFloatField;
    HawbSQLFREIGHT_AMOUNT: TFloatField;
    HawbSQLFK_OTHER_CHARGE_CODE: TStringField;
    HawbSQLOTHER_CHARGE_AMOUNT: TFloatField;
    HawbSQLOTHER_CHARGE_PAID: TStringField;
    HawbSQLSTAMPS_AMOUNT: TFloatField;
    HawbSQLEXPS_NON_INVOICABLE: TFloatField;
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
    HawbSQLSENDER_POST_CODE: TStringField;
    HawbSQLSENDER_CITY: TStringField;
    HawbSQLSENDER_COUNTRY: TStringField;
    HawbSQLCUSTOMER_VAT_ID: TStringField;
    HawbSQLCUSTOMER_AUTHORITY_TO_AGENT: TStringField;
    HawbSQLIS_LOW: TStringField;
    Panel1: TRzPanel;
    Label1: TLabel;
    RzPanel2: TRzPanel;
    RzBitBtn2: TRzBitBtn;
    Panel2: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    MawbSQLDHL_EQUIPMENT_ID: TStringField;
    Button3: TButton;
    ValueFLD: TwwDBEdit;
    MawbSQLFILE_NAME_XML: TStringField;
    ProcessFLD: TRzLabel;
    OpenfileDLG: TRzOpenDialog;
    HawbSQLDESTINATION_STATION: TStringField;
    All: TButton;
    MawbSQLMSG_TIME: TDateTimeField;
    MawbSQLMOVEMENT_NUMBER: TStringField;
    MawbSQLDATE_DEPART: TDateField;
    MessagesMemo: TRzMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AllClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
//    DefaultDeliveryTerm:String;
//    DefaultUnit:String;

  Function GetTheFile:String;
  function   GetClearingInstruction(Const HawbSerial:Integer):String;


  function  FindExchangeRate(Const Currency:String):Double;
  function FindDefaultDelivery() :String;
  function FindDefaultUnit() :String;
  function FindMediumWaitingReason() :String; //if medium Val

  Function FindCountry(Const CountryStr:String):Integer;
  function  FindWaitingReason(Const Code4:String):String;
  function  FindClearanceInstruction(Const CodeVal:String):String;


  function ReadTheFile(Const FileName:String) :boolean;
  function findMawb(Const MawbId:String):TMawbRec;
  function isPartialMawb(const mawbNode:IXMLNode):Integer;
  function isOldMawb(const mawbNode:IXMLNode):Integer;
  function isMawbFileExists(const HeaderNode:IXMLNode;const mawbNode:IXMLNode):Boolean;

//  function findMawbEquipmentId(Const MawbId:String;Const EqId:String):Integer;
  //  function findMawbInSameFile(Const MawbId:String;Const DateArrived:TDate;Const FileName:String):Integer;

  function findHawb(Const HawbId:String;Mawbserial:Integer):boolean;
  function findHawbSmart(Const HawbId:String;Const mawbId:string; Const FileName:String):THawbAge;

  function ProcessOneMawb(headerNode:IXMLNode; mawbNode:IXMLNode;fileName:String):Integer;

  function CreateMawb(Const MawbId:String;Const HeaderNode:IXMLNode;Const MawbNode:IXMLNode;Const fileName:string):integer;
//  function UpdateMawb(Const MawbSerial:Integer;Const MawbNode:IXMLNode):Integer;
  function UpdateHawb(Const HawbSerial:Integer; hawbNode:IXMLNode):Integer;
  function UpdateCustomer(Const HawbSerial:Integer; const TraderId:integer;Const hawbNode:IXMLNode):Integer;

  //  function CreateSenderInvoice(Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
  function CreateHawb(Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
  function CreatePartialHawb(Const hawbId:String ;Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
  function CreateHawbItem(Const mawbSerial:Integer; Const hawbSerial:Integer ; hawbItemNode:IXMLNode):Integer;

  procedure DeleteHawb(hawbSerial:Integer);
  procedure DeleteMawb(aMawbSerial:Integer);
  procedure DeleteallMawbs(aMawbSerial:Integer);
 Function GetDefaultMediumVatRate():Double;


  public
    { Public declarations }
  end;

var
  X_readFileFRM: TX_readFileFRM;

implementation

{$R *.dfm}

uses  G_kyriacosTypes,  G_KyrSQL, G_generalProcs, U_ClairDML, MainFFF,
  V_MawbHawb, G_DebugUnit;





function TX_readFileFRM.FindMediumWaitingReason() :String;
var
  qr:TksQuery;
begin
  result:='';
  qr:=TksQuery.Create(cn,'select first 1 * from CLEARANCE_WAITING_CODE where DEFAULT_FOR_MEDIUM_VALUE =''Y'' ');
  try
    qr.Open;
    result:=qr.FieldByName('code').asString;
  finally
    qr.Free;
  end;

end;


function TX_readFileFRM.FindDefaultDelivery() :String;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select first 1 * from delivery_term order by order_number');
  try
    qr.Open;
    result:=qr.FieldByName('code').asString;
  finally

    qr.Free;
  end;

end;



function TX_readFileFRM.FindDefaultUnit() :String;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select first 1 * from UNIT_measure where is_default= ''Y'' ');
  try
    qr.Open;
    result:=qr.FieldByName('UNIT').asString;
  finally
    qr.Free;
  end;

end;


procedure TX_readFileFRM.FormActivate(Sender: TObject);
begin
ProcessFLD.Visible:=false;
end;

procedure TX_readFileFRM.FormCreate(Sender: TObject);
begin
  cn:=ClairDML.CabCOnnection;
end;








function TX_readFileFRM.ReadTheFile(Const FileName:String) :Boolean;
var
  Doc: IXMLDocument;
  Data: IXMLNode;
  Movements, Mawbs,Hawbs :IXMLNodeList;
  aHeader,aMovement,aMawb,aHawb:ixmlnODE;
  I: Integer;
//  j:Integer;
  MawbRec:TmawbRec;
  str:String;
  temptime:TDateTime;
  TotalHawbs:Integer;

begin
  TotalHawbs:=0;
  result:=true;
  Doc := LoadXMLDocument(FileName);
  Data := Doc.DocumentElement;

  Movements:=Data.ChildNodes['Dtls'].ChildNodes['Entries'].ChildNodes['Entry'].childNOdes['Mvmts'].ChildNodes;
  aHeader:=Data.ChildNodes['Hdr'];


  if Movements.Count <1 then begin
    result:=False;
    exit;
  end;
// ShowMessage(Movements[0].ChildNodes['MvmtNo'].Text);

  Mawbs:=Movements[0].ChildNodes['TDOCs'].ChildNodes; //only one movement is sent
  aMovement:=Movements[0];
  if Mawbs.Count <1 then begin
    result:=False;
    exit;
  end;

  //same first mawb exists in another file
  aMawb := Mawbs[0];
  if isMawbFileExists(aHeader, aMawb) then begin
    result:=False;
    exit;
  end;

  for I := 0 to Mawbs.Count-1 do  begin
  //each movement may hawe one or more mawbs  (each mawb is a TDOC) but may have more than one same mawb
    aMawb := Mawbs[i];
    TotalHawbs := TotalHawbs + ProcessOneMawb(aHeader,aMawb,fileName);
  end;

  MessagesMemo.Lines.Add('---------------------------------------------------------');
  MessagesMemo.Lines.Add('--------------------- Total Created:'+InttoStr(Totalhawbs));


  end;

procedure TX_readFileFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TX_readFileFRM.RzBitBtn2Click(Sender: TObject);
var
  FileName:String;
  FileNameXyz:String;
  MoveFolder:String;
  MoveFile:String;
  temp:string;
  strings:TstringList;
begin

//  fileName:='C:\Data\DelphiProjects\Tariffs\XMLFiles1\t1.Xml';
  ProcessFLD.Visible:=true;
  MessagesMemo.Clear;
  FileName:=GetTheFile();
  if FileName='' then begin
      exit;
  end else begin
  end;

  temp:=UpperCase(Tpath.GetExtension(filename));
  If UpperCase(temp)='.XYZ' then begin
      showmessage('cannot read file with EXTENSION XYZ');
      exit;
  end;

   MoveFOlder := GetTheSystemParameter(cn, 'F_1').P_String5;
   If not System.SysUtils.DirectoryExists(MoveFolder) then begin
    MessageDlg('Destination Directory Does NOT exist:'+#13+#10+ MOveFolder, mtError, [mbOK], 0);
    exit;
   end;


  MessagesMemo.lines.Add('Processing File:    '+FileName);

  FileNameXyz:=Tpath.ChangeExtension(FileName,'.xyz');

  try
    temp:=trim(system.IOutils.Tfile.ReadAllText(filename));
    strings:=TStringList.Create();
    strings.Add(temp);
    strings.SaveToFile(FileNameXyz,TEncoding.UTF8);
  finally
    strings.Free;
   end;
  Tfile.Delete(fileName);

{
  if not RenameFile(FileName,FileNameXyz) then begin
    MessageDlg('Cannot Temporarily change file extension to xyz:'+#13+#10+ FileName, mtError, [mbOK], 0);
    exit;
  end;
}
  ReadTheFile(FileNameXyz);


 temp:=Tpath.ChangeExtension(FileNameXYZ,'.XXX');
  If RenameFile(FileNameXYZ,temp ) then begin
      MoveFIle:=MoveFolder +'\'+System.SysUtils.ExtractFileName(temp);
      TRY
        Tfile.Move(temp,MoveFile);
      FINALLY
       self.ModalResult:=mrNone;
      END;
  end;

  MessagesMemo.lines.Add('----------------------------------------------------');
  MessagesMemo.lines.Add('Finish:    '+FileName);
  self.ModalResult:=mrNone;
  ProcessFLD.Visible:=false;

end;

function TX_readFileFRM.findMawb(Const MawbId:String):TmawbRec;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select reference_number,Mawb_id,DHL_Equipment_id,date_arrived from Mawb where Mawb_id= :MawbID');
  try
  qr.ParamByName('MawbID').Value:=MawbId;
  qr.Open;
  result.mawbSerial:=qr.FieldByName('reference_number').AsInteger;
  result.MawbId:=qr.FieldByName('Mawb_id').AsString;
  result.EquipmentId:=qr.FieldByName('DHL_EQUIPMENT_ID').AsString;
  result.ArrivalDate:=qr.FieldByName('date_arrived').AsDateTime;
  result.FileName:=qr.FieldByName('fiLE_nAME_XML').AsString;
  close;
  finally
    qr.Free;
  end;

End;

{
function TX_readFileFRM.findMawbEquipmentId(Const MawbId:String;Const EqId:String):Integer;
var
  qr:TksQuery;
begin
  try
  qr:=TksQuery.Create(cn,'select reference_number,Mawb_id,DHL_Equipment_id,date_arrived from Mawb where Mawb_id= :MawbID and DHL_EQUIPMENT_ID= :EqId');
  qr.ParamByName('MawbID').Value:=MawbId;
  qr.ParamByName('EqId').Value:=EqId;
  qr.Open;
  result:=qr.FieldByName('reference_number').AsInteger;
  close;
  finally
    qr.Free;
  end;

End;
}



function TX_readFileFRM.isPartialMawb(const mawbNode:IXMLNode):Integer;
// same mawb, same date arrived and depart
var
  qr:TksQuery;
  str:String;
  MawbId:String;
  ArrivalDate,DepartureDate:TDate;
begin
  result:=0;
  MawbId:=MawbNode.ChildNodes['TDOCNo'].Text;

  ArrivalDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text);
  DepartureDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text);

  str:=  'select reference_Number from mawb ma '
    +' where ma.mawb_id= :mawbId and ma.date_depart= :dateDepart';
  try
    qr:=TksQuery.Create(cn,str);
    qr.ParamByName('MawbID').Value:=MawbId;
//    qr.ParamByName('DateArrived').AsDate:= ArrivalDate;
    qr.ParamByName('DateDepart').AsDate := DepartureDate;
    qr.Open;
    result := qr.FieldByName('reference_number').AsInteger;
    close;
  finally
    qr.Free;
  end;

End;

function TX_readFileFRM.isOldMawb(const mawbNode:IXMLNode):Integer;
// same mawb, but different date arrived and depart
var
  qr:TksQuery;
  str:String;
  MawbId:String;
  ArrivalDate,DepartureDate:TDate;
begin
  result:=0;
  MawbId:=MawbNode.ChildNodes['TDOCNo'].Text;

  ArrivalDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text);
  DepartureDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text);

  //check both arrived and depart because arrive may be null and it would be the same anyway
  str:=  'select reference_Number from mawb ma '
    +' where ma.mawb_id= :mawbId and (  ma.date_depart<> :dateDepart)';
  try
    qr:=TksQuery.Create(cn,str);
    qr.ParamByName('MawbID').Value:=MawbId;
//    qr.ParamByName('DateArrived').AsDate:= ArrivalDate;
    qr.ParamByName('DateDepart').AsDate := DepartureDate;
    qr.Open;
    result := qr.FieldByName('reference_number').AsInteger;
    close;
  finally
    qr.Free;
  end;

End;




function TX_readFileFRM.isMawbFileExists(const HeaderNode:IXMLNode;const mawbNode:IXMLNode):Boolean;
//will only check the first mawb in the file, since same mawb may exist in the same file
// same mawb, same date arrived but different file

var
  qr:TksQuery;
  str:String;
  MawbId:String;
  MsgTime:TDateTime;
  fileName:String;
begin

  MawbId:=MawbNode.ChildNodes['TDOCNo'].Text;

  Str:= HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgDate'].Text
  +' '+ HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgTime'].Text;
  MsgTime:=ConvertUTCTimeStampF(str);


  str:= 'select reference_Number ,FILE_NAME_XML from mawb ma'
  +' where ma.mawb_id= :mawbId and ma.msg_time= :MsgTime';
  try
    qr:=TksQuery.Create(cn,str);
    qr.ParamByName('MawbID').Value:=MawbId;
    qr.ParamByName('MsgTime').AsDateTime:=MsgTime;
    qr.Open;
    fileName:=qr.FieldByName('FILE_NAME_XML').AsString;
    result:= not qr.IsEmpty;
    close;
  finally
    qr.Free;
  end;

  if (result) then begin
    MessagesMemo.Lines.add('*******ERROR - SAME Mawb (Msg_Time) already EXISTS'+'Mawb id: '+ MawbId );
    MessagesMemo.Lines.add('----- Previous FileName '+ FileName );
    ShowMessage('*******ERROR - SAME Mawb (Msg_Time) already EXISTS');
    Self.ModalResult:=mrNone;
  end;

End;



function TX_readFileFRM.findHawbSmart(Const HawbId:String;Const mawbId:string; Const FileName:String):THawbAge;
var
//  qr:TksQuery;
  str:String;
  oldMawbId:string;
  oldMawbSerial:Integer;
  OldEqid:string;
  daysOld:Integer;
begin

  result:=haNotFound;

  //Same -- Same Mawb, same file
  //it's ok and will update the existing hawb
  str:='select ha.serial_number from hawb ha '
  +' left outer join mawb ma on ha.fk_mawb_refer_number=ma.reference_number'
  +' where hab_id = :hawbId'
  +' and ma.mawb_id= :MawbId'
  +' and ma.file_name_xml= :fileName';

  if ksCountRecSQL(cn,str,[hawbId,MawbId,Filename])>0 then begin
    result:=haSame;
    exit;
  end;

  //Duplicate -- Same mawb, different file
  str:='select ha.serial_number from hawb ha '
  +' left outer join mawb ma on ha.fk_mawb_refer_number=ma.reference_number'
  +' where hab_id = :hawbId'
  +' and ma.mawb_id= :MawbId'
  +' and ma.file_name_xml <> :fileName';
  if ksCountRecSQL(cn,str,[hawbId,MawbId,filename])>0 then begin
    result:=haDuplicate;
    exit;
  end;


//Partial -- Different mawb, recent 30 days (file doesn't matter anyway)
Str:= 'select alla.serial_number ,alla.fk_mawb_refer_number, alla.daysOld'
+' from ('
+' select ha.serial_number, hab_id,ha.fk_mawb_refer_number, ha.date_registered,'
+'  ( cast(''now'' as date) - ha.date_registered ) as DaysOld, ma.reference_number, ma.mawb_id'
+'  from hawb ha'
+'  left outer join mawb ma'
+'  on ha.fk_mawb_refer_number=ma.reference_number'
+'  where  hab_id = :HawbId'
+'  and ma.mawb_id <> :MawbId'
//+' and ma.file_name_xml <> :fileName'
+'  ) as alla'
+' where alla.daysOld <= 30';
  if ksCountRecSQL(cn,str,[hawbId,MawbId])>0 then begin
    result:=haPartial;
    exit;
  end;

// Old and different -- Different mawb, old hawb in the past (same or other file doesnt matter really)
// (this is just an old valid hawb)
Str:= 'select alla.serial_number ,alla.fk_mawb_refer_number, alla.daysOld'
+' from ('
+' select ha.serial_number, hab_id,ha.fk_mawb_refer_number, ha.date_registered,'
+'  ( cast(''now'' as date) - ha.date_registered ) as DaysOld, ma.reference_number, ma.mawb_id'
+'  from hawb ha'
+'  left outer join mawb ma'
+'  on ha.fk_mawb_refer_number=ma.reference_number'
+'  where  hab_id = :HawbId'
+'  and ma.mawb_id <> :MawbId'
+'  ) as alla'
+' where alla.daysOld > 30';
  if ksCountRecSQL(cn,str,[hawbId,MawbId])>0 then begin
    result:=haOld;
    exit;
  end;

End;



function TX_readFileFRM.findHawb(Const HawbId:String;Mawbserial:Integer):boolean;
var
  qr:TksQuery;
  str:String;
begin
//if there is a recent hawb (in less than 20 days) then it is a partial hawb
  Str:= 'select ha.serial_number from hawb ha where hab_id = :hawbId and fk_mawb_refer_number=  :mawbserial';
  result:=ksCountRecSQL(cn,str,[hawbId,IntToStr(MawbSerial)])>0 ;

End;

function TX_readFileFRM.ProcessOneMawb(headerNode:IXMLNode;MawbNode:IXMLNode;FileName:string):Integer;
var
  MawbId:String;
  hawbNodes :IXMLNodeList;
  hawbNode:ixmlnODE;
  hawbItemNodes:IxmlNodeList;
  hawbItemNode:IxmlNode;
  j,k:Integer;
  MawbSerial:Integer;
  Hawbserial:integer;
  hawb:string;
  isNewMawb:Boolean;
  HawbAge:THawbAge;
//  OldmawbRec:TmawbRec;
  newEqId:String;
  CountNew,CountSame,CountPartial:integer;
  MawbMessage:String;
  ClearingInstruction:String;
  ArrivalDate:TDate;
  DepartureDate:TDate;
  OldMawbSerial:Integer;
  TraderId:Integer;

begin
  CountNew:=0;
  CountSame:=0;
  CountPartial:=0;
  ksOpenTables([MawbSQL,HawbSQL,SenderInvoiceSQL,HawbItemSQL]);



  MawbId:=MawbNode.ChildNodes['TDOCNo'].Text;
  ArrivalDate   :=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text);
  DepartureDate :=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text);

  newEqID:=MawbNode.ChildNodes['EquipmentID'].Text;

  //same mawb found with different dates but still not sure if is partial or Old
  OldMawbSerial:=isOldMawb(MawbNode);
  if (oldMawbSerial>0) then begin
    if (MessageDlg('Mawb: '+MawbId+ ' already Exists. Create NEW ONE ??', mtInformation, [mbYes, mbNo], 0)=mrYes) then begin
      MawbSerial:=0;
    end else begin
      MawbSerial:=OldMawbSerial;
    end;
  end else begin
    MawbSerial:=IsPartialMawb(MawbNode);
  end;

  isNewMawb:=False;
  if (MawbSerial=0) then begin
      MawbSerial:=CreateMawb(MawbId,HeaderNode,MawbNode,Tpath.GetFileName(fileName));
      isNewmawb:=True;
  end;

  hawbNOdes:=MawbNOde.ChildNodes['Shps'].ChildNodes;

  for j:= 0 to hawbNodes.Count -1 do begin
      hawbNode:=hawbNodes[j];
      hawb:=hawbNode.ChildNodes['HAWB'].Text;

      hawbAge:= FindHawbSmart(hawb,MawbId,Tpath.GetFileName( fileName));
      case hawbAge of
        haNotFound,haOld: begin
            inc(countNew);
            HawbSerial := CreateHawb(MawbSerial,hawbNode);
            if HawbSerial <1 then begin
              continue;
            end;

            TraderId:=StrToIntDef(hawbNode.ChildNodes['ShpImpter'].ChildNodes['ImpterCoDtls'].ChildNodes['TraderID'].Text,0);
            if TraderId>0 then begin
                if (ksCountRecVarSQL(cn,'select name from customer where code = :customerSerial',[TraderId] )>0) then begin
                  ksExecSQLVar(cn,'update hawb set FK_CUSTOMER_CODE = :cuCode where serial_number= :hawbSerial',[TraderId,HawbSerial]);
                  UpdateCustomer(HawbSerial,TraderId,HawbNOde);
                end;
            end;

            //It will ONLY create Group Charges
            //for Medium will also create charege
            ClearingInstruction:=GetClearingInstruction(Hawbserial);
            V_MawbHawbDML.ApplyGroupTariffs(HawbSerial,ClearingInstruction);
            if ClearingInstruction='MED' then begin
                V_MawbHawbDML.CreateMediumVatCharge(hawbSerial);
            end;

            hawbItemNodes:=hawbNode.ChildNodes['LineItems'].ChildNodes;
            for k:= 0 to hawbItemNodes.Count -1 do begin
              hawbItemNode:= hawbItemNodes[k];
              CreateHawbItem(MawbSerial,Hawbserial,HawbItemNode);
            end;
        end;
        haSame: begin
            inc(countSame);
            HawbSerial := UpdateHawb(HawbSerial,HawbNode);
            continue;
        end;
        haPartial: begin
            inc(countPartial);
            CreatePartialHawb(hawb,Mawbserial,hawbNode);
        end;
      end;


  end;

  if IsNewMawb then
    MawbMessage:='New Mawb Created:'
  else
    MawbMessage:='EXISTING Mawb UPDATED:';

  MessagesMemo.Lines.Add(MawbMessage+MawbId);
  MessagesMemo.Lines.Add('------Hawbs Created:'+IntToStr(CountNew));
  MessagesMemo.Lines.Add('------Partial Hawbs:'+IntToStr(CountPartial));
  MessagesMemo.Lines.Add('------Rejected Same Hawbs:'+InttoStr(CountSame));
  result:=CountNew;
end;



function TX_readFileFRM.CreateMawb(Const MawbId:String;Const HeaderNode:IXMLNode;Const MawbNode:IXMLNode;Const FileName:String):integer;
var
  ArrivalDate:TDate;
  DepartureDate:TDate;
//  ArrivalDate2:TDate;
  temp:String;
  Movement:String;
  str:string;
  MsgTime:TDateTime;
begin

  if MawbSQL.Active then
    MawbSQL.close;




  MawbSql.Open;
  MawbSQl.Edit;
  MawbSQL.FieldByName('Mawb_id').Value:=MawbId;
  mawbSQL.FieldByName('FILE_NAME_XML').value := TPath.GetFileName(FileName);

  if Trim(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text) ='' then begin
    ArrivalDate:=now;
  end else begin
    ArrivalDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['ArrivalDate'].Text);
  end;
  mawbSQL.FieldByName('date_arrived').value  :=arrivalDate;

  DepartureDate:=ConvertDateF(MawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text);
  mawbSQL.FieldByName('date_depart').value  :=DepartureDate;


  temp:= mawbNode.ParentNode.ParentNode.ChildNodes['DepartureDate'].Text;
  mawbSQL.FieldByName('FORM_DATE').value  := ConvertDateF(temp);

  temp:= mawbNode.ParentNode.ParentNode.ChildNodes['MvmtNo'].Text;
  mawbSQL.FieldByName('FLIGHT_NUMBER').value  := temp;

  MawbSQL.FieldByName('REFERENCE_YEAR').Value:=yearOf(arrivalDate);
  MawbSQL.FieldByName('Passed').Value:='N';
  MawbSQL.FieldByName('DHL_EQUIPMENT_ID').Value:=mawbNode.ChildNodes['EquipmentID'].Text;

   Movement:=MawbNode.ParentNode.ParentNode.ChildNodes['MvmtNo'].Text;
   MawbSQL.FieldByName('MOVEMENT_NUMBER').Value:=Movement;

  Str:= HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgDate'].Text
  +' '+ HeaderNode.ChildNodes['MsgCtl'].ChildNodes['MsgTime'].Text;
  MsgTime:=ConvertUTCTimeStampF(str);
  MawbSQL.FieldByName('MSG_TIME').AsDateTime:=MsgTime;



  MawbSQL.Post;
  result:=MawbSQL.FieldByName('Reference_number').AsInteger;

  MawbSQL.Close;
end;

procedure TX_readFileFRM.DeleteMawb(aMawbSerial:Integer);
var
  multiSQL:TksMultiSQL;
  hiStr:String;
//  mawbSerial:String;
begin
//    mawbserial:= IntToStr(aMawbSerial);
    hiStr:= 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in '
    + '( select hi.serial_number from  hawb_item hi where hi.fk_mawb= :mawb)';

    ksExecSQLVar(cn,hiStr,[aMawbSerial]);
    ksExecSQLVar(cn,'delete from hawb_comments hc where hc.fk_hawb_serial in '
         +' (select serial_number from hawb ha where hc.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number= :mawb)',[aMawbserial]);
    ksExecSQLVar(cn,'delete from hawb_partial where FK_MAWB_SERIAL_ORIGINAL = :mawb',[aMawbSerial] );
    ksExecSQLVar(cn,'delete from hawb_partial hp where hp.fk_mawb_serial_arrived  = :mawb ',[aMawbSerial] );
    ksExecSQLVar(cn,'Delete from hawb_item hi where hi.fk_hawb_serial in(select serial_number from hawb ha where ha.fk_mawb_refer_number= :mawb)',[amawbSerial]);
    ksExecSQLVar(cn,'delete from sender_invoice where fk_Mawb_serial= :mawb' ,[amawbSerial]);
    ksExecSQLVar(cn,'delete from hawb where fk_mawb_refer_number = :mawb ',[amawbSerial]) ;



   end;

procedure TX_readFileFRM.DeleteallMawbs(aMawbSerial:Integer);
var
  multiSQL:TksMultiSQL;
  hiStr:String;

begin
//    mawbserial:= IntToStr(aMawbSerial);
    hiStr:= 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in '
    + '( select hi.serial_number from  hawb_item hi where hi.fk_mawb>= :mawb)';

    ksExecSQLVar(cn,hiStr,[aMawbSerial]);
    ksExecSQLVar(cn,'delete from hawb_comments hc where hc.fk_hawb_serial in '
         +' (select serial_number from hawb ha where hc.fk_hawb_serial= ha.serial_number and ha.fk_mawb_refer_number >= :mawb)',[amawbserial]);
    ksExecSQLVar(cn,'delete from hawb_partial where FK_MAWB_SERIAL_ORIGINAL >= :mawb',[aMawbSerial] );
    ksExecSQLVar(cn,'delete from hawb_partial hp where hp.fk_mawb_serial_arrived  >= :mawb ',[aMawbSerial] );
    ksExecSQLVar(cn,'Delete from hawb_item hi where hi.fk_hawb_serial in(select serial_number from hawb ha where ha.fk_mawb_refer_number >= :mawb)',[amawbSerial]);
    ksExecSQLVar(cn,'delete from sender_invoice where fk_Mawb_serial >= :mawb' ,[amawbSerial]);
    ksExecSQLVar(cn,'delete from hawb where fk_mawb_refer_number >= :mawb ',[amawbSerial]) ;



   end;


procedure TX_readFileFRM.Button2Click(Sender: TObject);
begin
DeleteHawb(StrToIntDef(ValueFLD.Text,0));
end;

procedure TX_readFileFRM.AllClick(Sender: TObject);
begin
DeleteAllMawbs(StrToIntDef(ValueFLD.Text,0));
end;

procedure TX_readFileFRM.Button1Click(Sender: TObject);
begin
  DeleteMawb(StrToIntDef(ValueFLD.Text,0) );
end;



function TX_readFileFRM.CreateHawb(Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
var
  qr:TIBCQuery;
  siSQL:TIBCQuery;
  hawbSerial:Integer;
  temp:string;
  senderNode:IXMLNode;
  CustomerNode:IXMLNode;
  ClearingInstruction:String;
  Currency:String;
  TraderId:String;
  hawbId:String;
  isDTP:String;
  isError:boolean;
begin

    HawbId:= hawbNode.ChildNodes['HAWB'].Text;
    senderNode:=hawbNode.ChildNodes['ShpCnsgnr'].ChildNodes['CnsgnrCoDtls'];
    CustomerNode:=hawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'];


//      codesite.Send('HawbID'+HawbId);


    qr:=HawbSQL;
    try
    qr.Insert;
    isError:=false;

    hawbSerial:=qr.FieldByName('serial_number').AsInteger;
    qr.FieldByName('Hab_id').value               :=hawbId;
    qr.FieldByName('fk_mawb_refer_number').value :=MawbSerial;
    qr.FieldByName('FK_mawb_id').value           :=''; //NOT used anymore

    qr.FieldByName('SENT_TO_HEAD').value   :='Y';
    qr.FieldByName('POSOSTOSIS').value      :='N';
    qr.FieldByName('DELIVERY_ORDER_AMOUNT').value :=0;

    qr.FieldByName('FK_CLEARING_STATE').value   :='0';
    qr.FieldByName('FK_INVOICE_STATUS').value   :='0';

//    temp:=HawbNode.ChildNodes['Status'].Text;
//    qr.FieldByName('CLEARANCE_WAITING_CODE').Value:= FindWaitingReason(temp);
    qr.FieldByName('CLEARANCE_WAITING_CODE').Value:= Trim(HawbNode.ChildNodes['Status'].Text);

    /////////////////////////////////
    IsDTP:=trim(hawbNode.ChildNodes['DHLServiceCd'].Text);
    if (IsDTP='DDP') or (IsDTP='DTP') then
        qr.FieldByName('IS_PREPAID').Value:='Y';

    ClearingInstruction:=FindClearanceInstruction(HawbNode.ChildNodes['Category'].Text);

    if ClearingInstruction='MED' then begin
        qr.FieldByName('FK_CLEARANCE_INSTRUCTION').Value:=FindMediumWaitingReason();
        qr.FieldByName('MEDIUM_VAT_RATE').Value:=GetDefaultMediumVatRate;
    end;
    qr.FieldByName('FK_CLEARANCE_INSTRUCTION').Value:=ClearingInstruction;


    /////////////////////////////////////////////////

    temp:=trim(hawbNode.ChildNodes['Incoterms'].Text);
    if temp='' then temp:=FindDefaultDelivery();
    qr.FieldByName('FK_DELIVERY_TERM').value   := temp;


    qr.FieldByName('date_registered').value     := NOW;
    qr.FieldByName('fk_country_origin').value   :=FindCountry( hawbNode.ChildNodes['ShpCtryOrgn'].Text);

    qr.FieldByName('DESTINATION_STATION').value := Trim(hawbNode.ChildNodes['ShpDest'].Text);
    qr.FieldByName('ORIGIN_STATION').value      := Trim( hawbNode.ChildNodes['ShpOrgn'].Text);


    qr.FieldByName('NUMBER_OF_PARCELS').value   :=StrToIntDef( hawbNode.ChildNodes['SDPieces'].Text,0);
    qr.FieldByName('NUM_OF_PIECES_ARRIVED').value :=StrToIntDef( hawbNode.ChildNodes['ManifestedPieces'].Text,0);
    qr.FieldByName('DESCRIPTION').value         := hawbNode.ChildNodes['CargoDesc'].Text;

    qr.FieldByName('weight').value              :=ConvertDecimalF( hawbNode.ChildNodes['GrossWgt'].Text);

     qr.FieldByName('Customer_name').Value:=CustomerNode.ChildNodes['CoName'].Text;


     qr.FieldByName('Sender_name').Value:=senderNode.ChildNodes['CoName'].Text;
     qr.FieldByName('SENDER_ADDRESS_1').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn1'].Text;
     qr.FieldByName('SENDER_ADDRESS_2').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn2'].Text;
     qr.FieldByName('SENDER_ADDRESS_2').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn2'].Text;
     qr.FieldByName('SENDER_ADDRESS_3').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['AddrLn3'].Text;
     qr.FieldByName('SENDER_POST_CODE').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['PostalCd'].Text;
     qr.FieldByName('SENDER_CITY').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['City'].Text;
     qr.FieldByName('SENDER_COUNTRY').Value:=senderNode.ChildNodes['AddrEng'].ChildNodes['CtryCd'].Text;


      qr.Post;
     except
      G_DebugUnit.GD_ShowDataRecord(qr);
       ShowMessage('hawb-id'+hawbid);
      result:=0;
      qr.Cancel;
      exit;

    end;

    try

    siSQL:=SenderInvoiceSQL;
    siSQL.Insert;
    siSQL.FieldByName('fk_hawb_serial').Value        :=hawbSerial;
    siSQL.FieldByName('Invoice_serial').Value        :=1;
    siSQL.FieldByName('fk_mawb_serial').value  :=MawbSerial;
    siSQL.FieldByName('fk_Hawb_id').value                :=''; //NOT used anymore
    siSQL.FieldByName('Invoice_number').Value        :='';
    siSQL.FieldByName('IS_VALID').Value        :='Y';
    siSQL.FieldByName('PRE_DISCOUNT_AMOUNT').value   :=ConvertDecimalF( hawbNode.ChildNodes['TxAndDty'].ChildNodes['CstmsVal'].Text);

    temp:=hawbNode.ChildNodes['Frght'].Text;
    if temp='asf' then showMessage('s');
    siSQL.FieldByName('FREIGHT_AMOUNT').value   :=ConvertDecimalF( hawbNode.ChildNodes['Frght'].Text);


    Currency:=hawbNode.ChildNodes['TxAndDty'].ChildNodes['CstmsValCrncyCd'].Text;
    siSQL.FieldByName('CURRENCY').value   :=Currency;
    siSQL.FieldByName('EXCHANGE_RATE').Value :=FindExchangeRate(currency);

    siSQL.FieldByName('invoice_amount').Value        :=0.00;

      siSQL.Post;
     except
      G_DebugUnit.GD_ShowDataRecord(siSQL);
       ShowMessage('SenderInvoice error: '+hawbid);
      siSQL.Cancel;
      result:=0;
      exit;
    end;


    result:=HawbSerial;

end;

function TX_readFileFRM.CreatePartialHawb(Const hawbId:String ;Const mawbSerial:Integer; hawbNode:IXMLNode):Integer;
var
  qr:TksQuery;
  oh:TksQuery;
  SerialNumber:Integer;
  OldHawbSerial:Integer;
  OldMawbSerial:Integer;
  OldMawbId:String;
begin

  try
    oh:=TksQuery.Create(cn,'SELECT NEXT VALUE FOR HAWB_PARTIAL_GENERATOR FROM RDB$DATABASE');
    oh.Open;
    SerialNumber :=oh.FieldByName('GEN_ID').AsInteger;
    oh.Close;
  finally
    oh.Free;
  end;

  try
    oh:=TksQuery.Create(cn,'select serial_number, hab_id, fk_mawb_refer_number from hawb where hab_Id= :HawbId');
    oh.ParamByName('hawbId').Value:=hawbId;
    oh.Open;

    qr:=TksQuery.Create(cn,'select * from hawb_partial where serial_number =0 ');
    qr.Open;
    qr.Insert;
    qr.FieldByName('serial_number').value:=SerialNumber;

    qr.FieldByName('FK_HAWB_SERIAL_ORIGINAL').value := oh.FieldByName('serial_number').AsInteger;
    qr.FieldByName('FK_HAWB_ID_ORIGINAL').value     := oh.FieldByName('hab_id').AsString;

    qr.FieldByName('FK_MAWB_SERIAL_ORIGINAL').value := oh.FieldByName('fk_mawb_refer_number').AsInteger;
    qr.FieldByName('FK_MAWB_ID_ORIGINAL').value     := ''; //not used anymore

    qr.FieldByName('FK_MAWB_SERIAL_ARRIVED').value  := MawbSerial;
    qr.FieldByName('FK_MAWB_ID_ARRIVED').value      :='';

    qr.FieldByName('PARTIAL_WEIGHT').value          := ConvertDecimalF(hawbNode.ChildNodes['GrossWgt'].Text);
    qr.FieldByName('PARTIAL_PIECES').value          := StrToIntDef(hawbNode.ChildNodes['ManifestedPieces'].Text,0);
    qr.FieldByName('PARTIAL_DELIVERY_ORDER_ID').value := HawbId;
    qr.FieldByName('DESCRIPTION').value             := hawbNode.ChildNodes['CargoDesc'].Text;


    qr.Post;
    result:=0;
    qr.close;
    oh.Close;
  finally
    qr.Free;
    oh.free;
  end;

end;

function TX_readFileFRM.UpdateHawb(Const HawbSerial:Integer; hawbNode:IXMLNode):Integer;
var
  PiecesArrived:Integer;
begin
  piecesArrived:=StrToIntDef( hawbNode.ChildNodes['ManifestedPieces'].Text,0);
  ksExecSQLVar(cn,'update hawb set NUM_OF_PIECES_ARRIVED = NUM_OF_PIECES_ARRIVED + :pieces where serial_number= :serial',[PiecesArrived,HawbSerial]);

end;




function TX_readFileFRM.UpdateCustomer(Const HawbSerial:Integer; const TraderId:integer; Const hawbNode:IXMLNode):Integer;
var
  qr:TksQuery;
  str:string;
  addr:IXMLNode;
  Name:string;
  Device:String;
  Phone:string;
begin
  addr:=HawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'].ChildNodes['AddrEng'];

  Name:=Copy(HawbNode.ChildNodes['ShpCnsgne'].ChildNodes['CnsgneCoDtls'].ChildNodes['CoName'].Text,1,80);
  phone:=Copy(addr.ChildNodes['Cntct'].ChildNodes['CntctDevices'].ChildNodes['DeviceDtls'].Text,10);

  Str:=' Update customer set name= :CustomerName, Address1= :Address1, Address2= :Address2, Address3= :Address3, '
  +'ADDRESS_POST_CODE= :post ,ADDRESS_CITY= :city ,ADDRESS_COUNTRY = :country, TEL_NO1 = :tel'
  +' where code= :CustomerCode';

  ksExecSQLVar(cn,str,[
  Name,
  Copy(addr.ChildNodes['AddrLn1'].text,1,50),
  Copy(addr.ChildNodes['AddrLn2'].text,1,50),
  Copy(addr.ChildNodes['AddrLn3'].text,1,50),
  Copy(addr.ChildNodes['PostalCd'].text,1,50),
  Copy(addr.ChildNodes['City'].text,1,50),
  Copy(addr.ChildNodes['CtryCd'].text,1,50),
  Phone,
  TraderId
   ]);

end;



function TX_readFileFRM.CreateHawbItem(Const mawbSerial:Integer; Const hawbSerial:Integer ; hawbItemNode:IXMLNode):Integer;
var
  OldMawbId:String;
  HawbNode:IXMLNode;
  Count:Integer;
  Weight:Double;
//  unit:string;
begin
  try
  HawbItemSQL.Insert;
  HawbItemSQL.FieldByName('FK_MAWB').Value              := MawbSerial;
  HawbItemSQL.FieldByName('FK_HAWB_SERIAL').Value       := HawbSerial;
  HawbItemSQL.FieldByName('FK_SENDER_INVOICE_SERIAL').Value := 1;

  HawbItemSQL.FieldByName('PRE_DISCOUNT_AMOUNT').value  := ConvertDecimalF( hawbItemNode.ChildNodes['InvLineVal'].Text);
  HawbItemSQL.FieldByName('DESCRIPTION').value          := hawbItemNode.ChildNodes['DescOfGoods'].Text;
  HawbItemSQL.FieldByName('NET_QUANTITY').value         := math.Ceil ( ConvertDecimalF(HawbItemNode.ChildNodes['TariffQnty'].Text) );
//  HawbItemSQL.FieldByName('INVOICE_VALUE').value        := ConvertDecimalF( hawbItemNode.ChildNodes['UnitPrice'].Text);
  HawbItemSQL.FieldByName('CURRENCY').value             :=hawbItemNode.ChildNodes['InvCrncyCd'].Text;
//  HawbItemSQL.FieldByName('IMPORT_DUTY_RATE_UNIT').value :=hawbItemNode.ChildNodes['DescOfGoods'].Text;

   HawbNode:=hawbItemNode.ParentNode.ParentNode;
   Count:=HawbNode.ChildNodes['LineItems'].ChildNodes.Count;

    Weight:= ConvertDecimalF(HawbNode.ChildNodes['GrossWgt'].Text);
    if Count>0 then begin
      weight:=weight/Count;
    end;
    HawbItemSQL.FieldByName('WEIGHT_NET').value:=Weight;

  HawbItemSQL.FieldByName('FK_COUNTRY_ORIGIN').value    :=FindCountry(hawbItemNode.ChildNodes['CtryMfctrerOrgn'].Text);

  HawbItemSQL.FieldByName('unit').value    :=FindDefaultUnit();


  HawbItemSQL.Post;
  except
      G_DebugUnit.GD_ShowDataRecord(HawbItemSQL);
      ShowMessage('HawbItem error: hawb-serial= '+IntToStr(hawbSerial));
      HawbItemSQL.Cancel;
      result:=0;
      exit;

  end;

end;



Function TX_readFileFRM.FindCountry(Const CountryStr:String):Integer;
var
  qr:TksQuery;
Begin
  qr:=TksQuery.Create(cn,'select number from country where XML_Country= :XmlCountry');
  try
    qr.ParamByName('XMLCountry').Value:=CountryStr;
    qr.Open;
    result:=qr.FieldByName('Number').AsInteger;
    qr.Close;
  finally
    qr.free;
  end;
end;

function  TX_readFileFRM.FindWaitingReason(Const Code4:String):String;
var
  qr:TksQuery;
Begin
     if Code4='' then begin
        result:='';
        exit;
     end;

     qr:=TksQuery.Create(cn,'Select * From Clearance_Waiting_code where code_4= :XMLCode');
     try
      qr.ParamByName('XMLCode').Value:= Code4;
      qr.Open;
      If (not qr.IsEmpty) then begin
            Result:=qr.FieldByName('CODE').AsString;
      end else begin
            Result:='';
      end;

     finally
       qr.Free;
     end;

End;

function  TX_readFileFRM.GetClearingInstruction(Const HawbSerial:Integer):String;
var
  qr:TksQuery;
Begin
     qr:=TksQuery.Create(cn,'Select fk_clearance_instruction From hawb Where serial_number= :HawbSerial');
     try
      qr.ParamByName('HawbSerial').Value:= HawbSerial;
      qr.Open;
      Result:=qr.FieldByName('FK_clearance_instruction').AsString;
     finally
       qr.Free;
     end;

End;

function  TX_readFileFRM.FindExchangeRate(Const Currency:String):Double;
var
  qr:TksQuery;
Begin
     qr:=TksQuery.Create(cn,'Select rate From EXCHANGE_RATE Where fk_currency_code= :Currency');
     try
      qr.ParamByName('Currency').Value:= currency;
      qr.Open;
      Result:=qr.FieldByName('Rate').AsFloat;
     finally
       qr.Free;
     end;

End;



function  TX_readFileFRM.FindClearanceInstruction(Const CodeVal:String):String;
begin

         If (Trim(CodeVal)='1')or (Trim(CodeVal)='2')or(Trim(CodeVal)='3') then begin
              result:='LOW';
        end else If (Trim(CodeVal)='4') then begin
                result:='MED';
        end else If (Trim(CodeVal)='5')or (Trim(CodeVal)='6')or(Trim(CodeVal)='7') then begin
              result:='IM4';
        end else begin
              result:='IM4';
        end;
  end;


Function TX_readFileFRM.GetTheFile:String;
Var
//        Success:integer;
        DefaultDir:String;
        ParamRec:TParameterRecord;
Begin
        DefaultDir:= GetTheSystemParameter(cn, 'F_1').P_String4;
        If DefaultDir='' then begin
          MessageDlg('Menu ->System->Params-> System Parameters. Then Add record with Code=F1 ', mtWarning, [mbOK], 0);
        end;

//        OpenDialog1.InitialDir:=DefaultDir;
//        OpenDialog1.Filter:='XML files (*.XML) | *.XML';
        OpenFileDLG.InitialDir:=Defaultdir;
        OpenFIleDLG.Filter:='No Extention|*.;XML|*.XML';

        with OpenfileDLG do begin
                if Execute then begin
                        Result:= Filename;
                end else begin
                        Result:='';
                end; //execute
        end;{with}
End;




procedure TX_readFileFRM.DeleteHawb(hawbSerial:Integer);
var
  multiSQL:TksMultiSQL;
  hiStr:String;
  HawbStr:string;
begin
  HawbStr:=IntToStr(HawbSerial);
   try
    hiStr:= 'Delete  from hawb_item_certificate dd where dd.fk_hawb_item in '
    + '( select hi.serial_number from  hawb_item hi where hi.fk_hawb_serial = :hawb )';

    multiSQL:=TksMultiSQL.Create(cn)
    .add(hiStr,[HawbStr])
    .add('delete from hawb_comments where fk_hawb_serial = :hawb',[HawbStr] )
    .add('delete from hawb_partial where FK_HAWB_SERIAL_ORIGINAL = :hawb',[HawbStr] )
    .add('delete from hawb_item where fk_hawb_serial =:hawb',[HawbStr] )
    .add('delete from sender_invoice where fk_hawb_serial = :hawb' ,[HawbStr])
    .add('delete from hawb where serial_number = :hawb',[HawbStr])
    .ExecSQL();

   finally
     multiSQL.Free;
   end;

end;

Function TX_readFileFRM.GetDefaultMediumVatRate():Double;
var
  qr:TksQuery;
begin
    result:=0;
    qr:=TksQuery.Create(cn, 'select rate from VAT_Category where code= ''MED'' ');
    try
      qr.Open;
      Result:=qr.FieldByName('rate').AsFloat;
    finally
      qr.Free;
    end;

end;


END.



