unit I_createInvoiceXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,System.DateUtils, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, RzPanel,
  Vcl.StdCtrls, Xml.xmldom, Xml.XMLIntf, Xml.adomxmldom, Xml.XMLDoc, Data.DB,
  MemDS, DBAccess, IBC, Xml.Win.msxmldom, RzLabel, Vcl.Mask, vcl.Wwdbedit;

type
  TSerials=Record
    minSerial:Integer;
    maxSerial:Integer;
  End;
  TCreateSerials=Record
    LastSerial:Integer;
    CountRecs:integer;
  End;

  TI_CreateInvoiceXmlFRM = class(TForm)
    Panel2: TRzPanel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzPanel2: TRzPanel;
    Panel1: TRzPanel;
    XMLDoc: TXMLDocument;
    IBCQuery1: TIBCQuery;
    FromFLD: TwwDBEdit;
    RzLabel2: TRzLabel;
    CreateBTN: TRzBitBtn;
    Button1: TButton;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure CreateBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    Function  AddNodeText(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;
    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;overload;
    Function  AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode; overload;
    Function  AddAtrribute(aNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
    function FindSerials():TSerials;

//    function CreateFile(Const FileName:String;Const HawbSerial:integer):Integer;

  public
    { Public declarations }
    IN_hawbSerial:Integer;
    IN_FileName:String;
    function CreateFile(Const FileName:String;Const InvoiceSerial:Integer):Boolean;
    Procedure CreateXML;
  end;

var
  I_CreateInvoiceXmlFRM: TI_CreateInvoiceXmlFRM;

implementation

{$R *.dfm}

uses U_ClairDML, G_KyrSQL, G_generalProcs;

procedure TI_CreateInvoiceXmlFRM.CreateBTNClick(Sender: TObject);
var
  fileName:string;
  FromSerial,ToSerial:Integer;
  SysPath:string;
  SerialsNew:TSerials;
  CreateSerials:TCreateSerials;
  qr:TksQuery;
  ParamsRec:TParameterRecord;
begin


  paramsRec:=GetTheSystemParameter(cn,'IG6');
  if (not DirectoryExists(ParamsRec.P_String1)) then begin
     MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
     exit;
  end;
  sysPath:=paramsRec.P_String1;

  fileName:= sysPath+'\LAC_GWC_'+intToStr(IN_HawbSerial)+'_'+formatDateTime('yyyymmddhhnnss',now)+'.XML';
//  fileName:='C:\Data\DelphiProjects\TestXSD\test1.xml';
  CreateFile(filename,IN_HawbSerial);
end;

procedure TI_CreateInvoiceXmlFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

Procedure TI_CreateInvoiceXmlFRM.CreateXML;
begin
  CreateFile(IN_FileName,IN_hawbSerial);
end;


function TI_CreateInvoiceXmlFRM.CreateFile(Const FileName:String;Const InvoiceSerial:Integer):Boolean;
var
//  FileName:string;
  TheDoc: IXmlDocument;
  HawbNOde:IXmlNode;
  RootNode,HeaderNode,LinesNode,InvoicesNode,InvNode,invLineNode,shpNode, bdNode,aNode,bNode,AddressNode: IXmlNode;
  strXML:String;
  i,j:Integer;
  countRecs:integer;
  temp,str:String;
  HawbId:String;
  HawbDescription:String;
  Ha_OriginStation,Ha_destinationStation:String;
  ha_weight:Double;
  ha_isDTP:boolean;
  ha_NumberOfParcels:Integer;
  CustomerName:String;
  cu_name,cu_addr1,cu_addr2,cu_addr3,cu_postCode,cu_city,cu_phone:String;
  cu_Account:String;
  se_name,se_addr1,se_addr2,se_addr3,se_postCode,se_city,se_country ,Se_phone:String;
  inv_dateInvoiced:TDate;
  inv_CustomerAccount,Inv_payType:String;
  inv_TotalPieces:Integer;
  inv_amount:Double;

  Amount:Double;
 qrHawb:TksQuery;
begin
//   FileName:= 'C:\Data\TEST\Xml\decon2.xml';
//  MawbSerial:=12268;

// xsdFile:=XsdFile+'\DhlInvoices.xsd';

   str:=
  ' select'
  +'      inv.*,'
  +'      ha.description,ha.fk_country_origin,'
  +'      ha.sender_name,ha.sender_address_1,ha.sender_address_2,ha.sender_address_3,ha.sender_post_code,ha.sender_city,ha.sender_country,'
  +'      ha.Origin_station ,ha.Destination_station, ha.weight ,ha.is_prepaid,'
  +'      HA.total_num_of_pieces, ha.fk_clearance_instruction,'
  +'      cu.address1, cu.address2,cu.address3, cu.address_post_code,cu.address_city,cu.tel_no1,cu.account_number '
  +'  from'
  +'      invoice_new inv left outer join'
  +'      Hawb ha on inv.hawb_serial=ha.serial_number left outer join'
  +'      Customer cu on cu.code= ha.fk_customer_code'
  +'  where inv.serial_number= :InvoiceSerial';

    qrHawb:=TksQuery.Create(cn,str);

  try
    qrHawb.ParamByName('InvoiceSerial').AsInteger:= InvoiceSerial;
    qrHawb.Open;

    if qrHawb.IsEmpty then
     exit;


    HawbId:=qrHawb.FieldByName('hawb_id').AsString;
    HawbDescription:=qrHawb.FieldByName('hawb_description').AsString;
//    HawbOrigin:=qrHawb.FieldByName('fk_country_origin').AsString;
    Ha_OriginStation:=qrHawb.FieldByName('origin_station').AsString;
    Ha_destinationStation:=qrHawb.FieldByName('destination_station').AsString;
    Ha_Weight:=qrHawb.FieldByName('weight').AsFloat;
    ha_isDTP:=qrHawb.FieldByName('is_prepaid').AsString='Y';
    ha_NumberOfParcels:=qrHawb.FieldByName('NUMBER_OF_PARCELS').AsInteger;

    Cu_Name:=qrHawb.FieldByName('Customer_name').AsString;
    Cu_addr1:=qrHawb.FieldByName('address1').AsString;
    Cu_addr2:=qrHawb.FieldByName('address2').AsString;
    Cu_addr3:=qrHawb.FieldByName('address3').AsString;
    Cu_PostCode:=qrHawb.FieldByName('address_Post_code').AsString;
    Cu_City:=qrHawb.FieldByName('address_City').AsString;
    Cu_Phone:=qrHawb.FieldByName('TEL_NO1').AsString;
    Cu_Phone:=qrHawb.FieldByName('TEL_NO1').AsString;
    cu_account:=qrHawb.FieldByName('account_number').AsString;;

    se_Name:=qrHawb.FieldByName('Sender_name').AsString;
    Se_addr1:=qrHawb.FieldByName('Sender_address_1').AsString;
    SE_addr2:=qrHawb.FieldByName('Sender_address_2').AsString;
    Se_addr3:=qrHawb.FieldByName('Sender_address_3').AsString;
    Se_PostCode:=qrHawb.FieldByName('Sender_Post_code').AsString;
    Se_City:=qrHawb.FieldByName('Sender_City').AsString;
    Se_Country:=qrHawb.FieldByName('Sender_country').AsString;

    inv_dateInvoiced:=qrHawb.FieldByName('DATE_INVOICED').AsDateTime;
    inv_TotalPieces :=qrHawb.FieldByName('total_num_of_pieces').AsInteger;
    inv_Amount :=qrHawb.FieldByName('Amount').AsFloat;
//    inv_payType:=qrHawb.FieldByName('fk_clearance_instruction').AsString;

//    aNode:=AddNodeText(HawbNode,'Tmstmp',FormatTimeStampUTCF(now));

  finally
    qrHawb.Close;
    qrHawb.Free;
  end;



  CountRecs:=0;


  TheDoc:=XMLDoc;
  TheDoc.Active := True;

  TheDoc.Version := '1.0';
  TheDoc.Encoding := 'UTF-8';
  RootNode := TheDoc.AddChild('MSG','http://www.w3.org/2001/XMLSchema-instance');
//I used Microsoft MSXML in the XMLDOC
//  RootNode.Attributes['xmlns']:='invDHL';

  RootNode.Attributes['xmlns:xsi']:='http://www.w3.org/2001/XMLSchema-instance';
  RootNode.Attributes['xmlns:xsd']:='http://www.w3.org/2001/XMLSchema';
//  RootNode.Attributes['xsi:schemaLocation']:='http://www.w3.org/2001/XMLSchema';

//   Rootnode.Attributes['xsi:noNamespaceSchemaLocation']:= 'DhlInvoice.xsd';


  HeaderNode:=RootNode.AddChild('Hdr');
  AddAtrribute(HeaderNode,'Id','INV-POD');
  AddAtrribute(HeaderNode,'Ver','1.033');
  AddAtrribute(HeaderNode,'Dtm',FormatDateTime('yyyy-mm-dd HH:MM:SS',now));
  AddAtrribute(HeaderNode,'GmtOff','7');
//  aNode:= AddNodeText(HeaderNode, 'MsgMajVsn','1');
//  aNode:= AddNodeText(HeaderNode, 'CrtnDm',FormatTimeStampUTCF(now));
//  function ToUniversalTime(const ADateTime: TDateTime; const ForceDaylight: Boolean = False): TDateTime; inline;
//  aNode:= AddNodeText(HeaderNode, 'LastProcessedDm',FormatTimeStampUTCF(now));

   aNode := HeaderNode.AddChild('Sndr');

   AddAtrribute(aNode,'AppCd','CABT');
   AddAtrribute(aNode,'AppVer','1.80');
   AddAtrribute(aNode,'CtryCd','CY');
   AddAtrribute(aNode,'AppNm','CABT');
   AddAtrribute(aNode,'PrcsId','CABT ');



   bdNode:=RootNOde.AddChild('Bd',-1);


/////////////////////////////////////////////////////

    InvNode:=bdNode.AddChild('Inv',-1);

      if ha_isDTP or (trim(cu_Account)>'') then
        temp:='OPI'
      else
        temp:='CSH';
      AddAtrribute(InvNode,'PMthTyCd',temp); //cash/or what 0r account
      AddAtrribute(InvNode,'TotAmt',gpFloatToStr(inv_amount,3));
      AddAtrribute(InvNode,'TotChrgWgt',gpFloatToStr(ha_weight,3));
      AddAtrribute(InvNode,'TotNOfPcs',intToStr(ha_NumberOfParcels));
      AddAtrribute(InvNode,'PayCurCd','EUR');

      if ha_isDTP then
        temp:='DDP'
      else
        temp:='REG';
      aNode:=InvNode.AddChild('InvDocTy',-1);
        AddAtrribute(aNode,'InvDcTyCd',temp);
        AddAtrribute(aNode,'StCd','C');

      aNode:=InvNode.AddChild('GI',-1);
        AddAtrribute(aNode,'SrcCtryCd','CY');
        AddAtrribute(aNode,'SrcSrvaCd','LCA');
        AddAtrribute(aNode,'SrcFcCd','GTW');
        AddAtrribute(aNode,'SrcCtryNm','CYPRUS');

      aNode:=InvNode.AddChild('InvAddInf',-1);
        AddAtrribute(aNode,'AttNm','1.033');
        AddAtrribute(aNode,'AttVal','1.033');


    //Here are the lines
    LinesNode:=InvNode.AddChild('CntOrdLnTr',-1);
      AddAtrribute(LinesNode,'OrdLnNo','1.033');
      AddAtrribute(LinesNode,'PayChrg','1.033');

      //for each invlice line
      aNode:=LinesNode.AddChild('OrdLnTrAdInf',-1);
        AddAtrribute(aNode,'AttNm','1.033');
        AddAtrribute(aNode,'AttVal','1.033');


  shpNode:=bdNOde.AddChild('Shp',-1);
  AddAtrribute(shpNode,'id',HawbId);

  ///////////////////////////////////////
  aNode:=shpNOde.AddChild('ShpTr',-1);
  AddAtrribute(aNode,'DstSrvaCd',Ha_destinationStation);
  AddAtrribute(aNode,'OrgSrvaCd',Ha_OriginStation);
//  AddAtrribute(aNode,'MgNProdCd','xx');
  AddAtrribute(aNode,'SActWgt',gpFloatToStr(ha_weight,2));
//  AddAtrribute(aNode,'PuDtm','xx');
//  AddAtrribute(aNode,'TrmTrdCd','xx');
////////////////////////////////////////////
  bNode:=aNOde.AddChild('SCDtl',-1);
  AddAtrribute(bNode,'CRlTyCd','BT');
  AddAtrribute(bNode,'CustNm','xx');//standard for normal, Special for DTP, and Customer Account if exists
  AddAtrribute(bNode,'CntNm',Cu_name);
  AddAtrribute(bNode,'Addr1',CU_addr1);
  AddAtrribute(bNode,'Addr2',cu_addr2);
  AddAtrribute(bNode,'Addr3',Cu_addr3);
  AddAtrribute(bNode,'Zip',cu_postCode);
  AddAtrribute(bNode,'CtyNm',cu_city);
  AddAtrribute(bNode,'CDivCd',Cu_phone);

  aNode:=bNOde.AddChild('SCCDev',-1);
  AddAtrribute(aNode,'CDevTyCd','xx');
  AddAtrribute(aNode,'CDevNo','xx');
  ///////////////////////////////////////
    bNode:=aNOde.AddChild('SCDtl',-1);
  AddAtrribute(bNode,'CRlTyCd','RV');
  AddAtrribute(bNode,'CustNm','xx');//standard for normal, Special for DTP, and Customer Account if exists
  AddAtrribute(bNode,'CntNm',Cu_Name);
  AddAtrribute(bNode,'Addr1',CU_addr1);
  AddAtrribute(bNode,'Addr2',cu_addr2);
  AddAtrribute(bNode,'Addr3',Cu_addr3);
  AddAtrribute(bNode,'Zip',cu_postCode);
  AddAtrribute(bNode,'CtyNm',cu_city);
  AddAtrribute(bNode,'CDivCd',Cu_phone);

  aNode:=bNOde.AddChild('SCCDev',-1);
  AddAtrribute(aNode,'CDevTyCd','xx');
  AddAtrribute(aNode,'CDevNo','xx');
  ///////////////////////////////////////
  bNode:=aNOde.AddChild('SCDtl',-1);
  AddAtrribute(bNode,'CRlTyCd','SP');
  AddAtrribute(bNode,'CustNm','xx');//standard for normal, Special for DTP, and Customer Account if exists
  AddAtrribute(bNode,'CntNm',Se_name);
  AddAtrribute(bNode,'Addr1',Se_addr1);
  AddAtrribute(bNode,'Addr2',Se_addr2);
  AddAtrribute(bNode,'Addr3',Se_addr3);
  AddAtrribute(bNode,'Zip',Se_postCode);
  AddAtrribute(bNode,'CtyNm',Se_city);
  AddAtrribute(bNode,'CDivCd',Se_phone);

  aNode:=bNOde.AddChild('SCCDev',-1);
  AddAtrribute(aNode,'CDevTyCd','xx');
  AddAtrribute(aNode,'CDevNo','xx');
  ///////////////////////////////////////

  ///
  ///
  ///
  aNode:=shpNOde.AddChild('ShpDsc',-1);
  AddAtrribute(aNode,'DscGds',HawbDescription);

  bNode:=shpNOde.AddChild('ShpRef',-1);
  AddAtrribute(bNode,'ShpRef','id');

//  aNode:=shpNOde.AddChild('ShpInDoc',-1);
//    bNode:=aNOde.AddChild('SDoc',-1);
//    AddAtrribute(bNode,'InctrmCd','id');

  aNode:=shpNOde.AddChild('ShpRef',-1);
    AddAtrribute(aNode,'ShpRef','id');
    bNode:=aNOde.AddChild('TrcRefTy',-1);
      AddAtrribute(bNode,'cd','id');

  aNode:=bdNOde.AddChild('GEvt',-1);
  AddAtrribute(aNode,'MvmtId','id');
  AddAtrribute(aNode,'EvtDtm','id');

  aNode:=bdNOde.AddChild('Mvmt',-1);
  bNode:=aNOde.AddChild('MvmtSc',-1);
  AddAtrribute(bNode,'MvmtSchDDtm','id');

  TheDoc.SaveToFile(FileName);
  TheDoc.Active := false;
  result:=True;

//  TheDoc.SaveToXML(xmlText);
//  Memo1.Lines.Text := xmlText;

end;

function TI_CreateInvoiceXmlFRM.FindSerials():TSerials;
var
  qr:TksQuery;
  str:String;
  param:String;
  ParamsRec:TParameterRecord;
begin
  ParamsRec:=GetTheSystemParameter(cn,'IG6');
  result.minSerial:=ParamsRec.P_Integer1+1;

  qr:=TksQuery.Create(cn,'select max(inv.serial_number) as maxSer from Invoice_new inv');
  try
    qr.Open;
    Result.maxSerial:=qr.FieldByName('MaxSer').AsInteger;
  finally
    qr.Free;
  end;

end;

procedure TI_CreateInvoiceXmlFRM.FormActivate(Sender: TObject);
var
 serialsNew:Tserials;
 ParamsRec:TParameterRecord;
begin

    ParamsRec:=GetTheSystemParameter(cn,'IG6');
    if ParamsRec.P_ID='' then begin
      MessageDlg('Folder path Required: Use Menu->System->Parms->System Params->Create XML File', mtError, [mbOK], 0);
      exit;
    end;

    FromFLD.Text:=IntToStr(IN_hawbSerial);

end;

procedure TI_CreateInvoiceXmlFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

Function TI_CreateInvoiceXmlFRM.AddNodeText(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;
Begin
  result:= FatherNode.AddChild(NodeName,-1);
  result.Text:=NodeText;
end;


procedure TI_CreateInvoiceXmlFRM.Button1Click(Sender: TObject);
var
st1:string;
t1:tDateTime;
begin
//  t1:=TTimeZone.Local.ToUniversalTime(Now);
//  ShowMessage(Format('%s (%s)', [DateTimeToStr(Now),TTimeZone.Local.GetAbbreviation(Now, true)]));
ShowMessage(FormatTimeStampUTCF(now));

end;

Function TI_CreateInvoiceXmlFRM.AddNodeAtr(FatherNode:IXMLNode;NodeName:String; NodeText:String):IXMLNode;
Begin
  result:= FatherNode.AddChild(NodeName,-1);
  result.Attributes['VALUE']:=NodeText;
end;

Function TI_CreateInvoiceXmlFRM.AddNodeAtr(FatherNode:IXMLNode;NodeName:String; AttributeName:String;AttributeText:String):IXMLNode;
Begin
  result:= FatherNode.AddChild(NodeName,-1);
  result.Attributes[AttributeName]:=AttributeText;
end;

Function TI_CreateInvoiceXmlFRM.AddAtrribute(aNode:IXMLNode; AttributeName:String;AttributeText:String):IXMLNode;
Begin
  aNode.Attributes[AttributeName]:=AttributeText;
  result:=aNode;
end;

end.
