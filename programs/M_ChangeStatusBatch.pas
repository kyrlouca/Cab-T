unit M_ChangeStatusBatch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL,G_generalProcs, RzButton, RzPanel, vcl.wwcheckbox, VirtualTable, VirtualDataSet,
  RzLabel;
type
  TM_ChangeStatusBatchFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    TableSRC: TDataSource;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    ChangeStatusBTN: TRzBitBtn;
    NewStatusFLD: TwwDBComboBox;
    TableVRT: TVirtualTable;
    TableVRTHawbSerial: TIntegerField;
    TableVRTHawbID: TStringField;
    TableVRTTdid: TStringField;
    TableVRTMawbSerial: TIntegerField;
    wwDBGrid1: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    HawbFLD: TwwDBEdit;
    BYCodeBTN: TSpeedButton;
    TableVRTDescription: TStringField;
    TableVRTstatus: TStringField;
    unselectBTN: TBitBtn;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure ChangeStatusBTNClick(Sender: TObject);
    procedure HawbFLDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure unselectBTNClick(Sender: TObject);
    procedure BYCodeBTNClick(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  Function FindHawb(const val:String):boolean;
  Function ChangeSelectedHawbStatus(Const status:String):Integer;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  M_ChangeStatusBatchFRM: TM_ChangeStatusBatchFRM;

implementation

uses  MainFFF, U_ClairDML, V_MawbHawb;


{$R *.DFM}

procedure TM_ChangeStatusBatchFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_ChangeStatusBatchFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_ChangeStatusBatchFRM.unselectBTNClick(Sender: TObject);
begin
TableVRT.Clear;
end;

procedure TM_ChangeStatusBatchFRM.HawbFLDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

var
  val:String;
begin
if (key= VK_RETURN) then begin
  val:=trim(HawbFLD.Text);
  if not findHawb(val) then begin
    MessageDlg('Hawb '+val+ ' NOT found', mtError, [mbOK], 0);
  end;

  HawbFLD.Clear;


end;
end;

procedure TM_ChangeStatusBatchFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_ChangeStatusBatchFRM.FormActivate(Sender: TObject);
begin

  TableVRT.Close;
  TableVRT.Open;
  ksfillComboF1(cn,NewStatusFLD,'clearance_waiting_code','code','','code',true,false);
  hawbFLD.SetFocus;
end;

procedure TM_ChangeStatusBatchFRM.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
if not TableVRT.IsEmpty then begin
  showMessage('Change Status or Unselect');
  CanClose:=false;
end else begin
  CanClose:=true;
end;

end;

procedure TM_ChangeStatusBatchFRM.FormCreate(Sender: TObject);
begin
  cn:=ClairDML.CabCOnnection;
end;

procedure TM_ChangeStatusBatchFRM.ChangeStatusBTNClick(Sender: TObject);
var
  status:String;
  count:Integer;
begin
  if TableVRT.IsEmpty  then begin
    ShowMessage('Enter Hawbs First');
    exit;
  end;

  status := trim(NewStatusFLD.Value);
  if status='' then begin
    ShowMessage('Select the new status');
    exit;
  end;

  if status='None' then status:='';


  count:=ChangeSelectedHawbStatus(Status);
  SHowMessage('Changed Status to '+Status+'- Hawbs updated: '+IntToStr(count));
  TableVRT.Clear;

end;

Function TM_ChangeStatusBatchFRM.FindHawb(const val:String):boolean;
var
  qr:TksQuery;
  hawbSerial:Integer;
  str:String;
begin
  hawbSerial:=0;

//  XML_HOUSE_ID
  Str:='select first 1 ha.hab_id,ha.serial_number,clearance_waiting_code  ,ha.fk_mawb_refer_number, ha.xml_house_id,  ha.description from hawb ha '
    +' where hab_id= :hawbId or ha.xml_house_id = :tdid order by ha.fk_mawb_refer_number desc';
  if TableVRT.LocateEx('tdid',val,[]) or ( TableVRT.LocateEx('hawbId',val,[]))then begin
      result:=true;
      exit;                         
  end;

  qr:=TksQuery.Create(cn,str);
  try
    qr.ParamByName('hawbId').Value:=val;
    qr.ParamByName('tdid').Value:=val;
    qr.Open;
    result:=false;
    if not qr.IsEmpty then begin
      TableVrt.Insert;
      TableVRT.FieldByName('hawbSerial').Value:=qr.FieldByName('Serial_number').AsInteger;
      TableVRT.FieldByName('hawbId').Value:=qr.FieldByName('hab_id').AsString;
      TableVRT.FieldByName('tdid').Value:=qr.FieldByName('xml_house_id').AsString;
      TableVRT.FieldByName('status').Value:=qr.FieldByName('clearance_waiting_code').AsString;
      TableVRT.FieldByName('mawbSerial').Value:=qr.FieldByName('FK_Mawb_refer_number').AsInteger;
      TableVRT.FieldByName('description').Value:=qr.FieldByName('Description').AsString;
      TableVRT.Post;
      result:=true;
    end;
  finally
    qr.Free;
  end;


end;

procedure TM_ChangeStatusBatchFRM.BYCodeBTNClick(Sender: TObject);
var
  val:string;
begin
  val:=trim(HawbFLD.Text);
  if findHawb(val) then begin
    HawbFLD.Clear;
  end;

end;

Function TM_ChangeStatusBatchFRM.ChangeSelectedHawbStatus(Const status:String):Integer;
Var
Count:Integer;
HawbSerial:Integer;
Hawbid:string;
Begin
  count:=0;
  TableVRT.First;
  while not TableVRT.Eof do begin
        inc(count);
        HawbSerial:=TableVRT.FieldByName('HawbSerial').AsInteger;
        ksExecSQLVar(cn,'update hawb set clearance_waiting_code = :cl where serial_number=:Serial',[Status,HawbSerial] );
        V_MawbHawbDML.CreatewarehouseXML(HawbSerial);
        tableVRT.Next;
  end;
  result:=count;
end;


End.
