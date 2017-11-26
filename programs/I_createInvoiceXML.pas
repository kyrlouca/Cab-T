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
  RootNode,HeaderNode,HawbNode,InvoicesNode,InvNode,invLineNode, cuNode,linesNode,aNode,AddressNode: IXmlNode;
  strXML:String;
  i,j:Integer;
  countRecs:integer;
  temp,str:String;
  HawbId:String;
  Amount:Double;
 qrHawb:TksQuery;
begin
//   FileName:= 'C:\Data\TEST\Xml\decon2.xml';
//  MawbSerial:=12268;

// xsdFile:=XsdFile+'\DhlInvoices.xsd';

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
  AddNodeAtr(HeaderNode,'Ver','1.033');
  AddNodeAtr(HeaderNode,'Dtm','1.033');
  AddNodeAtr(HeaderNode,'GmtOff','1.033');
//  aNode:= AddNodeText(HeaderNode, 'MsgMajVsn','1');
//  aNode:= AddNodeText(HeaderNode, 'CrtnDm',FormatTimeStampUTCF(now));
//  function ToUniversalTime(const ADateTime: TDateTime; const ForceDaylight: Boolean = False): TDateTime; inline;
//  aNode:= AddNodeText(HeaderNode, 'LastProcessedDm',FormatTimeStampUTCF(now));

//  aNode:=HeaderNOde.AddChild('Sndr');
   aNode := LDocument.CreateNode('Sndr', ntElement, '');
   HeaderNode.ChildNodes.Add(aNode);
   AddNodeAtr(aNode,'AppCd','1.033');
   AddNodeAtr(aNode,'AppVer','1.033');




/////////////////////////////////////////////////////

  try
    str:= 'select ha.serial_number,ha.hab_id,ha.fk_mawb_refer_number ,ha.date_registered'
+'     ,ha.clearance_waiting_code,cwc.is_cleared'
+'      ,HA.ORIGIN_STATION, HA.DESTINATION_STATION, ma.mawb_id'
+'      from hawb ha'
+'      left outer join mawb ma on ha.fk_mawb_refer_number=ma.reference_number'
+'      left outer join clearance_waiting_code cwc on cwc.code=ha.clearance_waiting_code'
+'      where ha.serial_number = :HawbSerial';

    qrHawb:=TksQuery.Create(cn,str);
    qrHawb.ParamByName('HawbSerial').AsInteger:= 11;
    qrHawb.Open;

    HawbNode:=RootNOde.AddChild('Bd',-1);
    aNode:=AddNodeText(HawbNode,'ShpAWBNum',qrHawb.FieldByName('hab_id').AsString);

    aNode:=AddNodeText(HawbNode,'Tmstmp',FormatTimeStampUTCF(now));

    temp:=Trim(qrHawb.FieldByName('is_cLEARED').AsString);
    if Temp='' then temp:='N';
    aNode:=AddNodeText(HawbNode,'ClrFlg',temp);

    aNode:=AddNodeText(HawbNode,'ShpSts',qrHawb.FieldByName('CLEARANCE_WAITING_CODE').AsString);
    aNode:=AddNodeText(HawbNode,'OrgnSrvaCd',qrHawb.FieldByName('ORIGIN_STATION').AsString);
    aNode:=AddNodeText(HawbNode,'DestSrvaCd',qrHawb.FieldByName('DESTINATION_STATION').AsString);

  finally
    qrHawb.Close;
    qrHawb.Free;
  end;

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