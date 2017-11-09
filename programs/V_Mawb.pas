unit V_Mawb;

interface

uses
  Windows, Messages, SysUtils,System.Math, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, IBC, DASQLMonitor, IBCSQLMonitor, Db, MemDS, ImgList, Menus,
  wwDialog, wwidlg, StdCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel,
  Buttons, Grids, Wwdbigrd, Wwdbgrid, wwdbdatetimepicker, Wwdotdot,
  Wwdbcomb, wwdblook, ComCtrls, Mask, wwdbedit, ExtCtrls,
  Wwkeycb, ppPrnabl, ppClass, ppCtrls, ppDB, ppBands, ppTypes,
  ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, DAScript,
  IBCScript,MemData, System.ImageList, vcl.wwcheckbox, RzPanel, RzButton,G_OtherProcs,G_kyriacosTypes,
  RzDBNav, Vcl.WinXCtrls, ppDesignLayer, ppParameter, RzCmboBx, RzRadGrp,
  RzDBRGrp;
const

    clrArray : array[0..2] of String= ('LOW','MED','STC');

type

  THawbDeleteType = (LowValue,StatusCValue);
  ClearAction= (DoClear,DoUnclear);

  TV_MawbFRM = class(TForm)
    Panel5: TRzPanel;
    MainMenu1: TMainMenu;
    Reports1: TMenuItem;
    LowValueDocumentsDeliveryOrder1: TMenuItem;
    MediumValueConsolidatedDeliveryOrder1: TMenuItem;
    HighValueItemsDeliveryOrder1: TMenuItem;
    N1: TMenuItem;
    HawbsToReceive1: TMenuItem;
    HawbsOnFlight1: TMenuItem;
    PrintSelection1: TMenuItem;
    DeliverySelected1: TMenuItem;
    EDESelected1: TMenuItem;
    WorksheetSelected1: TMenuItem;
    PrintCompleteSet1: TMenuItem;
    EDESelectedTEST1: TMenuItem;
    PrintInvoices1: TMenuItem;
    Selected1: TMenuItem;
    GenerateInvoices1: TMenuItem;
    GenerateInvoices2: TMenuItem;
    ImageList2: TImageList;
    PrintDeliverySelectedDirectly1: TMenuItem;
    Help1: TMenuItem;
    DbImages: TImageList;
    EmptyRep: TppReport;
    Panel8: TRzPanel;
    MawbPC: TPageControl;
    MawbDetailsTS: TTabSheet;
    Panel1: TPanel;
    PortsPNL: TGroupBox;
    Label17: TLabel;
    Label14: TLabel;
    ImportPortFLD: TwwDBComboBox;
    ClearingStationFLD: TwwDBComboBox;
    PassedPNL: TGroupBox;
    Label5: TLabel;
    Label11: TLabel;
    PassedFLD: TwwDBComboBox;
    DatePassedFLD: TwwDBDateTimePicker;
    MawbPNL: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    ReferenceFld: TwwDBEdit;
    MawbYearFld: TwwDBEdit;
    MawbFLD: TwwDBEdit;
    RotationFLD: TwwDBEdit;
    Rotation_2FLD: TwwDBEdit;
    RotationYearFLD: TwwDBEdit;
    AirportPNL: TGroupBox;
    Label10: TLabel;
    Label4: TLabel;
    ArrivalDateFLD: TwwDBDateTimePicker;
    FlightsDLG: TwwDBComboBox;
    MawbDetails: TGroupBox;
    a: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SignatoryFLD: TwwDBEdit;
    FormDateDLG: TwwDBDateTimePicker;
    CountryFLD: TwwDBComboBox;
    EditHawbBTN: TButton;
    Panel2: TPanel;
    AcceptBTN: TBitBtn;
    Panel4: TPanel;
    CloseBTN: TBitBtn;
    SendBTN: TBitBtn;
    CancelBTN: TBitBtn;
    Panel3: TRzPanel;
    asdf: TRzGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    BYStartDateFLD: TwwDBDateTimePicker;
    ByRefFLD: TSearchBox;
    ByMawbIDsFLD: TSearchBox;
    RzBitBtn1: TRzBitBtn;
    RzGroupBox1: TRzGroupBox;
    Label41: TLabel;
    Label6: TLabel;
    FilterBox: TwwDBComboBox;
    FindHawbFLD: TSearchBox;
    RzPanel1: TRzPanel;
    Panel6: TPanel;
    RzToolbar1: TRzToolbar;
    BtnLeft: TRzToolButton;
    BtnRight: TRzToolButton;
    BtnPost: TRzToolButton;
    BtnRefresh: TRzToolButton;
    BtnInsertRecord: TRzToolButton;
    BtnDeleteRecord: TRzToolButton;
    BtnCancel: TRzToolButton;
    MawbSelectGRD: TwwDBGrid;
    Panel28: TPanel;
    MhawbsGRD: TwwDBGrid;
    wwIButton1: TwwIButton;
    InsertHawbBTN: TRzBitBtn;
    DeletehawbBTN: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    Button1: TButton;
    PrintedHawbsTS: TTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    HawbLookupFLD: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    PartialHawbTS: TTabSheet;
    Panel15: TPanel;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton4: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton10: TwwNavButton;
    wwNavButton11: TwwNavButton;
    wwNavButton12: TwwNavButton;
    wwNavButton13: TwwNavButton;
    Panel16: TPanel;
    Panel20: TPanel;
    BitBtn5: TBitBtn;
    Button2: TButton;
    BitBtn11: TBitBtn;
    PartialHawbGRD: TwwDBGrid;
    SavedTs: TTabSheet;
    Panel32: TPanel;
    Panel33: TPanel;
    BitBtn9: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    LowGRD: TwwDBGrid;
    Panel34: TPanel;
    ToLeftBTN: TBitBtn;
    ToRightBTN: TBitBtn;
    HighGRD: TwwDBGrid;
    Panel31: TRzPanel;
    wwIncrementalSearch5: TwwIncrementalSearch;
    RzPanel2: TRzPanel;
    clrRGP: TRzRadioGroup;
    PrintWhatBTN: TRzBitBtn;
    CreateBTN: TRzBitBtn;
    XML1: TMenuItem;
    CreateWarehouseXML1: TMenuItem;
    ReferencesTS: TTabSheet;
    RzPanel3: TRzPanel;
    wwDBGrid2: TwwDBGrid;
    clrLbl: TLabel;
    RzPanel4: TRzPanel;
    Label32: TLabel;
    wwIncrementalSearch1: TwwIncrementalSearch;
    Label23: TLabel;
    Label22: TLabel;
    wwIncrementalSearch2: TwwIncrementalSearch;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    RzPanel5: TRzPanel;
    OtherRefGRP: TGroupBox;
    Label2: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label7: TLabel;
    HmsdFld: TwwDBEdit;
    LowValueIDFld: TwwDBEdit;
    F63FLD: TwwDBEdit;
    StatusCFLD: TwwDBEdit;
    TDIDNewFLD: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    BagsPNL: TGroupBox;
    Label15: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    NumbersFLD: TwwDBEdit;
    GoodsWeightFLD: TwwDBEdit;
    DocNumberFLD: TwwDBEdit;
    DocsWeightFLD: TwwDBEdit;
    LowValueNumberFLD: TwwDBEdit;
    LOWValueWeightFLD: TwwDBEdit;
    medValueNumberFLD: TwwDBEdit;
    MedValueWeightFLD: TwwDBEdit;
    hiValueItemFld: TwwDBEdit;
    HivalweightFLD: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    procedure HawbsGRDDblClick(Sender: TObject);
    procedure AcceptBTNClick(Sender: TObject);
    procedure CancelBTNClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
//    procedure PrintBTNClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FlightDLGNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
    procedure LowValueDocumentsDeliveryOrder1Click(Sender: TObject);
    procedure MediumValueConsolidatedDeliveryOrder1Click(Sender: TObject);
    procedure HighValueItemsDeliveryOrder1Click(Sender: TObject);
    procedure HawbLookupFLDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure RateCodeFLDNotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure RateCodeFLDCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBNavigator1Insert1Click(Sender: TObject);
//    procedure PrNewBTNClick(Sender: TObject);
    procedure HawbsToReceive1Click(Sender: TObject);
    procedure HawbsOnFlight1Click(Sender: TObject);
    procedure wwDBNavigator1Button1Click(Sender: TObject);
    procedure SendBTNClick(Sender: TObject);
    procedure CopyToClipBoardBTNClick(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure MawbDetailsTSEnter(Sender: TObject);
    procedure PartialHawbTSEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InsertHawbBTNClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure wwDBNavigator1PriorClick(Sender: TObject);
    procedure wwDBNavigator1NextClick(Sender: TObject);
    procedure MawbSelectGRDDblClick(Sender: TObject);
    procedure wwDBNavigator1InsertClick(Sender: TObject);
    procedure WorksheetSelected1Click(Sender: TObject);
    procedure DeliverySelected1Click(Sender: TObject);
    procedure EDESelected1Click(Sender: TObject);
    procedure PrintCompleteSet1Click(Sender: TObject);
    procedure PrintBTNClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure ImageBTNClick(Sender: TObject);
    procedure ToLeftBTNClick(Sender: TObject);
    procedure EDESelectedTEST1Click(Sender: TObject);
    procedure MediumGRDDblClick(Sender: TObject);
    procedure ToRightBTNClick(Sender: TObject);
    procedure Selected1Click(Sender: TObject);
    procedure MediumGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure MhawbsGRDDblClick(Sender: TObject);
    procedure DeleteHawbBTNClick(Sender: TObject);
    procedure GenerateInvoices2Click(Sender: TObject);
    procedure HawbImage1Click(Sender: TObject);
    procedure MhawbsGRDTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwIButton1Click(Sender: TObject);
    procedure FilterHawbRGPClick(Sender: TObject);
    procedure MhawbsGRDCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure PrintDeliverySelectedDirectly1Click(Sender: TObject);
    procedure wwDBNavigator1DeleteClick(Sender: TObject);
    procedure wwDBNavigator1PostClick(Sender: TObject);
    procedure wwDBNavigator1RefreshClick(Sender: TObject);
    procedure MawbPCChanging(Sender: TObject; var AllowChange: Boolean);
    procedure RotationFLDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Help1Click(Sender: TObject);
    procedure MhawbsGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChargesGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExapandChargesFLDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FilterBoxCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure BtnLeftClick(Sender: TObject);
    procedure BtnRightClick(Sender: TObject);
    procedure BtnDeleteRecordClick(Sender: TObject);
    procedure BtnInsertRecordClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure BtnRefreshClick(Sender: TObject);
    procedure MawbSelectGRDTitleButtonClick(Sender: TObject;
      AFieldName: string);
    procedure ByMawbIDsFLDInvokeSearch(Sender: TObject);
    procedure ByRefFLDInvokeSearch(Sender: TObject);
    procedure BYStartDateFLDCloseUp(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FindHawbFLDInvokeSearch(Sender: TObject);
    procedure ByMawbIDsFLDEnter(Sender: TObject);
    procedure ByRefFLDEnter(Sender: TObject);
    procedure FindHawbFLDEnter(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure EmptyRepBeforePrint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure clrRGPChanging(Sender: TObject; NewIndex: Integer;
      var AllowChange: Boolean);
    procedure HighGRDDblClick(Sender: TObject);
    procedure PrintWhatBTNClick(Sender: TObject);
    procedure CreateWarehouseXML1Click(Sender: TObject);
    procedure ReferencesTSExit(Sender: TObject);
    procedure MawbDetailsTSExit(Sender: TObject);
    procedure HighGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure LowGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure ClearancesTSEnter(Sender: TObject);
    procedure SelectClearanceFLDCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
    PreviousSortedField:String;
    MinMedium:Double;
    Function GetSelected() :TStrings;


    Function  IsMulti(hawbSerial:Integer):Boolean;
    procedure FilterHawbs;
//    procedure Clearhawb(Const HawbSerial:Integer);
//    procedure UnClearHawb(HawbSerial:Integer);

//    procedure SaveToClip(const HawbType:String);

//    procedure MakeLow(Const ClrType:String;LowDS:TibcQuery;HighDS:TIBCQuery);
    procedure MakeLow(Const ClrType:String;LowDS:TibcQuery;HighDS:TIBCQuery);
    procedure MakeIm4(Const ClrType:String;LowDS:TibcQuery;HighDS:TIBCQuery);
    procedure CopyAllToClipBoard(aDataSet:TDataset);

  procedure CreateAllWarehouseXML();
  procedure PrintOneInvoice(Const hawbSerial:Integer);


  public
    { Public declarations }
    GMawbSerial:Integer;
    GHawbSerial:integer;
    GAction:String;
    GTrick:String;
    sortInfoHawb:TSOrtInfo;

//    Function CountHawbItems(HawbSerial:Integer):Integer;
    procedure FindMawb(MawbSerial:Integer);
//        procedure DeleteStatusCHawbs(MawbSerial:Integer);

    procedure DeleteOneHawb(HawbSerial:Integer;HawbDeleteType:THawbDeleteType);
//    procedure DeleteSelectedHawbs(HawbDeleteType:THawbDeleteType);

    procedure UpdateHawbStatus(HawbSerial:Integer;MediumVatRate:Double;WaitingCode:String;HawbType:String;ClearanceInstruction:String);
    procedure UpdateHawbClear(HawbSerial:Integer;ClearValue:Integer);
    procedure OpenDatasets;

//    procedure InsertHawbDeleted(HawbSerial:integer;HawbDeleteType:THawbDeleteType);
//    procedure DisplaySelectedHawbs(ReportType:String);
    procedure PrintSelected(ReportType:String;OnPrinter:Boolean);
  procedure CreateSelectedXML();

  end;

var
  V_MawbFRM: TV_MawbFRM;

implementation

{$R *.DFM}

uses  V_MawbData, U_ClairDML, G_generalProcs, G_KyrSQL, V_hawb, V_MawbHawb,
  U_generateInv, R_deliveryOrderLow1, DeliveryOrder, R_HawbsToReceive,
   R_DisplayHawbCharges, R_printMultiInvoice, R_HawbStatusCDeleted,
  R_WorkinghSheetNew,  P_MultiEDE, D_SendSMS, P_SingleEDENew,
  I_createWarehouseXml, R_mediumNew, R_MediumHawb;







procedure TV_MawbFRM.FindMawb(MawbSerial:Integer);
begin
      With V_MawbDataDML.MawbSQL do begin
        close;
        ParamByName('mawbSerial').Value:=MawbSerial;
        Open;
     end;


     With V_MawbDataDML do begin
       ksOpenTables([hawbSQL]);
     end;

End;


procedure TV_MawbFRM.UpdateHawbStatus(HawbSerial:Integer;MediumVatRate:Double;WaitingCode:String;HawbType:String;ClearanceInstruction:String);
var
  str:string;


begin
str:= 'Update Hawb set fk_clearance_instruction = :ClearanceInstruction, MEDIUM_VAT_RATE= :medRate'
  + ' where Serial_number= :hawbSerial ';
    ksExecSQLVar(cn,str,[ClearanceInstruction,MediumVatRate,HawbSerial] );
{
      With UpdateHawbTypeSQL do begin
        ParamByName('HawbSerial').Value:=HawbSerial;
        ParamByName('MediumVatRate').Value:=MediumVatRate;
        ParamByName('WaitingCode').Value:=WaitingCode;
        ParamByName('TheValue').Value:=HawbType;
        ParamByName('IsHigh').Value:=IsHigh;
        Execute;
     end;
}
end;

procedure TV_MawbFRM.UpdateHawbClear(HawbSerial:Integer;ClearValue:Integer);
begin
{
      With UpdateHawbClearSQL do begin
        ParamByName('HawbSerial').Value:=HawbSerial;
        ParamByName('TheValue').Value:=ClearValue;
        Execute;
     end;
     }
end;






procedure TV_MawbFRM.HawbsGRDDblClick(Sender: TObject);
begin

     // debug GridClickBTN.Click;
end;

procedure TV_MawbFRM.AcceptBTNClick(Sender: TObject);
begin

with V_MawbDataDML do
begin
     if MawbSQL.state in [dsedit, dsinsert] then  begin
          MawbSQL.post;
     end;

end; //with
close;

end;

procedure TV_MawbFRM.CancelBTNClick(Sender: TObject);
begin

  with V_MawbDataDML do
  begin

     if MawbSQL.state in [dsedit, dsinsert] then begin
          MawbSQL.cancel;
     end;
  end; //with
  close;

end;

procedure TV_MawbFRM.ChargesGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_f10 then
  showMessage('inner');
end;

procedure TV_MawbFRM.OpenDatasets;
begin
with V_MawbDataDML do begin
  ksOpenTables([MawbSelectSQL,MawbSQL,hawbSQL,hawbChargeSQL,HawbIm4SQL])
end;

End;





procedure TV_MawbFRM.FormActivate(Sender: TObject);
Const
        Max=11;
Var
I:Integer;
DataSetArray :Array[1..Max] of TDataset;
TheDataset:TDataset;
rec:TParameterRecord;
begin
  cn:=ClairDML.CabCOnnection;
  OpenDatasets();
  clrRGP.ItemIndex:=0;
  rec:=G_generalProcs.GetTheSystemParameter(cn,'IG3');
  MinMedium:=rec.P_Integer1;



  if GAction ='SearchHawb' then begin
        FindMawb(GMawbSerial);
     MawbPC.activepage:=MawbDetailsTS;
     MHawbsGRD.DataSource.DataSet.Locate('SERIAL_NUMBER',GHawbSerial, []);//debug
     MHawbsGRD.UnselectAll;
     MHawbsGRD.SelectRecord;

end else if GAction ='SearchPartialHawb' then begin
     FindMawb(GMawbSerial);
     If not V_MawbDataDML.PartialHawbSQL.Active then begin
       V_MawbDataDML.PartialHawbSQL.Open;
     end;
     V_MawbDataDML.PartialHawbSRC.DataSet.Locate('SERIAL_NUMBER',GHawbSerial, []);
     MawbPC.activepage:=PartialHawbTS;
end;
  //gpMaxScreen(self);
{


if GAction ='SearchHawb' then begin
        FindMawb(GMawbSerial);
     //MawbPC.activepage:=HawbsTS;
     MHawbsGRD.DataSource.DataSet.Locate('SERIAL_NUMBER',GHawbSerial, []);//debug
     MHawbsGRD.UnselectAll;
     MHawbsGRD.SelectRecord;

end else if GAction ='SearchPartialHawb' then begin
     FindMawb(GMawbSerial);
     V_MawbDataDML.PartialHawbSRC.DataSet.Locate('SERIAL_NUMBER',GHawbSerial, []);
     MawbPC.activepage:=PartialHawbTS;
end else if GAction ='PRINT_EDE' then begin
     MawbPC.activepage:=MawbDetailsTS;
end else begin
     MawbPC.activepage:=MawbDetailsTS;
     FilterHawbs;
     If ByMawbIDFLD.CanFocus then
        ByMawbIDFLD.SetFocus;

end;
}
end;


procedure TV_MawbFRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{
with V_MawbDataDML do
begin
     if (MawbRSQL.state<>dsbrowse) then
     begin
          if  MessageDlg('Discard all changes?', mtConfirmation, [mbNo,mbYes], 0)= mrYes then
              MawbRSQL.cancel
          else abort;
     end;
end; //with
}
end;


procedure TV_MawbFRM.MhawbsGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 HawbSerial:Integer;
 isClear :Boolean;
 isIm4:boolean;
 diff:double;
 isClearCode:boolean;
begin

  If key= VK_SPACE then begin
    HawbSerial := V_MawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
    IsClear    := V_MawbDataDML.HawbSQL.FieldByName('fk_clearing_state').AsString >'0';
    IsClearCode    := (Trim(V_MawbDataDML.HawbSQL.FieldByName('CLEARANCE_WAITING_Code').AsString) >'')
      and (V_MawbDataDML.HawbSQL.FieldByName('CLEARANCE_WAITING_code').AsString <>'None');
    isIm4      :=V_MawbDataDML.HawbSQL.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString='IM4';

    if IsClear then begin
      V_MawbHawbDML.UnclearHawb(HawbSerial);
    end else begin
        diff:=V_MawbHawbDML.JCheckTotals(HawbSerial);
      if (diff>0.001) and isIm4 then begin
        ShowMessage('Cannot Clear: Amount different by '+FloattoStr(diff));
        exit;
      end;

      if not V_MawbHawbDML.JCheckTariffs(HawbSerial) and isIm4 then begin
        ShowMessage('Cannot Clear: Hawb Item does not have tariff');
        exit;
      end;

      if not isClearCode then begin
        ShowMessage('Cannot Clear: Hawb without Clearance Status');
        exit;
      end;

      V_MawbHawbDML.RecreateHawbAllCharges(HawbSerial);
      V_MawbHawbDML.ClearHawb(HawbSerial);
    end;

    V_MawbDataDML.HawbSQL.Refresh;

  end;



end;




procedure TV_MawbFRM.ClearancesTSEnter(Sender: TObject);
begin

ksOpenTables([V_MawbDataDML.HawbStatusSQL]);
//ksfillComboF1(cn,SelectClearanceFLD,'clearance_waiting_code','code','','code',true,true);
//ksfillComboF1(cn,NewStatusFLD,'clearance_waiting_code','code','','code',false,false);
end;




procedure TV_MawbFRM.FlightDLGNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
accept:=false;
end;

procedure TV_MawbFRM.wwSearchDialog1InitDialog(Dialog: TwwLookupDlg);
begin
Dialog.wwIncrementalSearch1.ShowMatchText:=true;
Dialog.wwIncrementalSearch1.CharCase:=ecUpperCase;
end;



procedure TV_MawbFRM.LowValueDocumentsDeliveryOrder1Click(Sender: TObject);
var
  myForm:TR_DeliveryOrderLow1FRM;
  MawbReference:Integer;
begin
 if V_MawbDataDML.MawbSQL.State in [dsEdit,dsInsert] then V_MawbDataDML.MawbSQL.post;

 MawbReference:= V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
 if mawbReference <1 then exit;
  try
      myForm := TR_DeliveryOrderLow1FRM.Create(nil) ;
      myForm.IN_FormType:='LOW';
      myForm.IN_MawbSerial:=MawbReference;
      myForm.PrintOne;
  finally
     myForm.Free;
   end;

end;


procedure TV_MawbFRM.MediumValueConsolidatedDeliveryOrder1Click(
  Sender: TObject);
var
  myForm:TR_DeliveryOrderLow1FRM;
  MawbReference:Integer;
begin
 if V_MawbDataDML.MawbSQL.State in [dsEdit,dsInsert] then V_MawbDataDML.MawbSQL.post;
 MawbReference:= V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
 if mawbReference <1 then exit;
  try
      myForm := TR_DeliveryOrderLow1FRM.Create(nil) ;
      myForm.IN_FormType:='MED';
      myForm.IN_MawbSerial:=MawbReference;
      myForm.PrintOne;
  finally
     myForm.Free;
   end;

end;

procedure TV_MawbFRM.HighValueItemsDeliveryOrder1Click(Sender: TObject);
var
  myForm:TR_DeliveryOrderLow1FRM;
  MawbReference:Integer;
begin
 if V_MawbDataDML.MawbSQL.State in [dsEdit,dsInsert] then V_MawbDataDML.MawbSQL.post;

 MawbReference:= V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
 if mawbReference <1 then exit;
  try
      myForm := TR_DeliveryOrderLow1FRM.Create(nil) ;
      myForm.IN_FormType:='HIGH';
      myForm.IN_MawbSerial:=MawbReference;
      myForm.PrintOne;
  finally
     myForm.Free;
   end;

end;


procedure TV_MawbFRM.HawbLookupFLDCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
FillTable.FieldByName('serial_number').value:=LookupTable.FieldByName('Serial_number').asInteger;
FillTable.FieldByName('Customer_name').value:=LookupTable.FieldByName('Customer_name').asString;
FillTable.FieldByName('Description').value:=LookupTable.FieldByName('Description').asString;
FillTable.FieldByName('fk_mawb_id').value:=LookupTable.FieldByName('FK_Mawb_id').asString;

end;



procedure TV_MawbFRM.RateCodeFLDNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
accept:=false;
end;

procedure TV_MawbFRM.ReferencesTSExit(Sender: TObject);
begin
//  if V_MawbDataDML.MawbSQL.State in [dsInsert,dsEdit] then
//    V_MawbDataDML.MawbSQl.Post;

end;

procedure TV_MawbFRM.RotationFLDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_F2 then begin
  ShowMessage('f2');
end;
end;

procedure TV_MawbFRM.RzBitBtn1Click(Sender: TObject);
begin
WIth  V_MawbDataDML.MawbSelectSQL do begin
        DisableControls;
        close;
        SQL.Clear;
        SQL.Add ('Select first 70 reference_number, mawb_id,date_arrived from Mawb order by reference_number desc');
        Open;
        EnableControls;
        Refresh;
end;

end;

procedure TV_MawbFRM.RzBitBtn2Click(Sender: TObject);
var
 myForm:TR_DisplayHawbChargesFRM;
begin
 myForm := TR_DisplayHawbChargesFRM.Create(nil) ;
  try
    myForm.IN_hawbSerial:=V_MawbDataDML.HawbSQL.FieldByName('Serial_Number').AsInteger;
    myForm.ShowModal;
    finally
     myForm.Free;
    end;
 end;

procedure TV_MawbFRM.clrRGPChanging(Sender: TObject; NewIndex: Integer;
  var AllowChange: Boolean);
var
 x:integer;
 NamesArray: Array of String;
 tbl:TIBCQuery;
 i:iNteger;
begin

  tbl:=V_MawbDataDML.hawbDiffSQL;
  try
    tbl.DisableControls;
    tbl.Close;

    i:=Max(NewIndex,0);
    clrLbl.Caption :=clrRGP.Items[i];
    printWhatBTN.Caption:= 'Print '+ clrRGP.Items[i];

    tbl.ParamByName('clr').Value:= clrArray[i];
    tbl.Open;


  finally
    tbl.EnableControls;
  end;

end;

procedure TV_MawbFRM.RateCodeFLDCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
If Modified then
begin
     FillTable.FieldByName('CUSTOMS_OVERTIME_RATE').value:=
     LookupTable.FieldByName('RATE').AsFloat;
end;
End;


procedure TV_MawbFRM.wwDBNavigator1Insert1Click(Sender: TObject);
begin
If MawbFLD.CanFocus then
   MawbFLD.SetFocus;
end;

procedure TV_MawbFRM.FindHawbFLDEnter(Sender: TObject);
begin
TsearchBox(Sender).Clear;
end;

procedure TV_MawbFRM.FindHawbFLDInvokeSearch(Sender: TObject);
Var
        HawbID:String;
        HawbDS:TIBCQUery;
begin
        HawbDS:=TIBCQUery(MHawbsGRD.DataSource.DataSet);
        HawbID:=Trim(FindHawbFLD.Text);
        HawbDS.LocateEx('Hab_id',HawbID,[lxPartialKey]);
        MHawbsGRD.SelectRecord;

end;

procedure TV_MawbFRM.CreateWarehouseXML1Click(Sender: TObject);
var
  paramsRec:TParameterRecord;
begin
  paramsRec:=GetTheSystemParameter(cn,'IG2');
  if (not DirectoryExists(ParamsRec.P_String1)) then begin
     MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
     exit;
  end;
//  MessageDlg('Creating XML Files ..' , mtInformation, [mbOK], 0);
  CreateAllWareHouseXML();
  MessageDlg('Files Created in folder: '+paramsRec.P_String1 , mtInformation, [mbOK], 0);

end;


procedure TV_MawbFRM.CreateSelectedXML();
var
  HawbSerial:Integer;
begin

end;



procedure TV_MawbFRM.CreateAllWarehouseXML();
var
  MawbSerial:Integer;
  HawbSerial:Integer;
  hawbId:String;
  fileName:String;
  qr:TksQuery;
  myForm:TI_createWarehouseXmlFRM;
  sysPath:String;
  paramsRec:TParameterRecord;
begin

  paramsRec:=GetTheSystemParameter(cn,'IG2');
  if (not DirectoryExists(ParamsRec.P_String1)) then begin
     MessageDlg('Directory Specified NOT valid. Menu->System->system params->create XML', mtError, [mbOK], 0);
     exit;
  end;
  sysPath:=paramsRec.P_String1;



  MawbSerial:=V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
  qr:=TksQuery.Create(cn,'select serial_number,hab_id from hawb ha'
  +' where  (ha.clearance_waiting_code <> ''None'') and (ha.clearance_waiting_code<>'''') '
  +' and ha.FK_MAWB_REFER_NUMBER= :mawbSerial');

  try
    myForm := TI_createWarehouseXmlFRM.Create(nil) ;

    qr.ParamByName('MawbSerial').Value:=MawbSerial;
    qr.Open;
    while not qr.Eof do begin
      HawbSerial:=qr.FieldByName('serial_number').AsInteger;
      HawbId:=qr.FieldByName('Hab_Id').AsString;
      fileName:= sysPath+'\dhlCypWr_'+hawbId+'_'+formatDateTime('yyyymmddhhnnss',now)+'.XML';
      myForm.IN_FileName:=fileName;
      myForm.IN_hawbSerial:=HawbSerial;
      myForm.CreateXML;
      qr.Next;
    end;
  finally
    myForm.free;
    qr.Free;
  end;
end;



procedure TV_MawbFRM.HawbsToReceive1Click(Sender: TObject);

var
  myForm:TR_HawbsToReceiveFRM;
  MawbReference:Integer;
begin
 if V_MawbDataDML.MawbSQL.State in [dsEdit,dsInsert] then V_MawbDataDML.MawbSQL.post;
 MawbReference:= V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
 if mawbReference <1 then exit;
  try
      myForm := TR_HawbsToReceiveFRM.Create(nil) ;
      myForm.In_ReportType :='NewIT2';
      myForm.In_MawbSerial:=MawbReference;
      myForm.PrintOne;
  finally
     myForm.Free;
   end;



//R_HawbsToReceiveFRM.ToPrint(TheRefNumber,'NewIT2');


end;

procedure TV_MawbFRM.HawbsOnFlight1Click(Sender: TObject);
var
  myForm:TR_HawbsToReceiveFRM;
  MawbReference:Integer;
begin
 if V_MawbDataDML.MawbSQL.State in [dsEdit,dsInsert] then V_MawbDataDML.MawbSQL.post;
 MawbReference:= V_MawbDataDML.MawbSQL.FieldByName('Reference_number').AsInteger;
 if mawbReference <1 then exit;
  try
      myForm := TR_HawbsToReceiveFRM.Create(nil) ;
      myForm.In_ReportType :='OnFlight';
      myForm.In_MawbSerial:=MawbReference;
      myForm.PrintOne;
  finally
     myForm.Free;
   end;
end;

procedure TV_MawbFRM.wwDBNavigator1Button1Click(Sender: TObject);
begin
//V_MawbDataDML.MawbSRC.DataSet.Close;
//V_MawbDataDML.MawbSRC.DataSet.Open;
abort;

end;


procedure TV_MawbFRM.wwDBNavigator1DeleteClick(Sender: TObject);
var
  qr:TksQuery;
  count:Integer;
  MawbSerial:Integer;
begin
  MawbSerial:=V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
  if mawbSerial<1 then
    abort;
  try
    qr:= TksQuery.Create(cn,'select count(*) cnt from hawb where fk_mawb_refer_number = :MawbSerial');
    qr.ParamByName('mawbSerial').Value:= MawbSerial;
    qr.Open;
    count:=qr.FieldByName('cnt').AsInteger;
    if count>1 then begin
      ShowMessage('Delete ALL Hawbs first');
      abort;
    end;
  finally
    qr.Free;
  end;
end;


Function  TV_MawbFRM.IsMulti(hawbSerial:Integer):Boolean;
var
  qr:TksQuery;
begin
  qr:=TksQuery.Create(cn,'select count(*) as cnt from hawb_item hi where hi.fk_hawb_serial= :hawbSerial');
  try
    qr.ParamByName('hawbSerial').Value:=hawbSerial;
    qr.Open;
    result:=qr.FieldByName('cnt').AsInteger>1;
    qr.Close;
  finally
    qr.Free;
  end;

end;


procedure TV_MawbFRM.PrintSelected(ReportType:String;OnPrinter:Boolean);
Var
I: integer;
SelectedCount:Integer;
HawbId:String;
HawbSerial:Integer;
TheDataset:TDataset;
IsEde:Boolean;
IsDeliveryOrder:Boolean;
HowMany:Integer;
DeliveryForm: TDeliveryOrderFRM;
WorksheetForm:TR_WorkingSheetNewFRM;
EdeSingleForm:TP_singelEdeNewFRM;
EdeMultiForm:TP_MultiEdeFRM;
isMultiItem:boolean;
Clearance:String;
PrinterSettings: TopPrinterSettings;

Begin

/////////////////////////////////////////
///   myForm:TDeliveryOrderFRM;
///
///


 SelectedCount:=  MHawbsGRD.SelectedList.Count;
 THeDataset:=MHawbsGRD.datasource.dataset;
 if SelectedCount<1 then
  exit;

 if OnPrinter then begin

  emptyRep.ShowPrintDialog:=true;
  emptyRep.DeviceType := dtPrinter;

  emptyRep.Print;
  emptyRep.SavePrinterSetup:=true;
  PrinterSettings.name:=emptyRep.PrinterSetup.PrinterName;
  PrinterSettings.copies:=emptyRep.PrinterSetup.Copies;
  PrinterSettings.DocumentName:=emptyRep.PrinterSetup.DocumentName;

 end;



 try
   deliveryForm := TDeliveryOrderFRM.Create(nil) ;
   WorksheetForm:= TR_WorkingSheetNewFRM.create(nil);
   EdeSingleForm:=TP_singelEdeNewFRM.create(nil);
   EdeMultiForm:=TP_MultiEdeFRM.create(nil);


    for i:= 0 to SelectedCount-1 do begin
       TheDataset.GotoBookmark(MHawbsGRD.SelectedList.items[i]);
       HawbId:=TheDataset.FieldByName('Hab_id').AsString;
       HawbSerial:=TheDataset.FieldByName('Serial_number').AsInteger;
       Clearance:=TheDataset.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString;
       if clearance<>'IM4' then
        continue;

      // ShowMessage(intToStr(hawbSerial)+'--'+hawbId);

       If (ReportType='DELIVERY') then begin
          deliveryForm.IN_hawbSerial:= hawbSerial;
          deliveryForm.In_Partial:=false;
          deliveryForm.IN_OnPrinter:=OnPrinter;
          deliveryForm.IN_PrinterSettings:=PrinterSettings;

          deliveryForm.PrintEde;
       end else If( ReportType='WORKSHEET') then begin
          WorksheetForm.IN_hawbSerial:=Hawbserial;
          WorksheetForm.IN_OnPrinter:=OnPrinter;
          WorksheetForm.IN_PrinterSettings:=PrinterSettings;

          WorksheetForm.PrintWorksheet;
       end else if (ReportType='EDE') then begin
          isMultiitem:=IsMulti(hawbSerial);
          if isMultiItem then begin
            EdeMultiForm.In_HawbSErial:=hawbSerial;
            EdeMultiForm.IN_OnPrinter:=OnPrinter;
            EdeMultiForm.IN_PrinterSettings:=PrinterSettings;

            EdeMultiForm.PrintHawb;
          end else begin
            EdeSingleForm.In_HawbSErial:= HawbSerial;
            EdeSingleForm.IN_OnPrinter:=Onprinter;
            EdeSingleForm.IN_printErSettings:=PrinterSettings;
            EdeSingleForm.PrintEDe;

          end;
       end else if (ReportType='ALL') then begin


          deliveryForm.IN_hawbSerial:= hawbSerial;
          deliveryForm.In_Partial:=false;
          deliveryForm.IN_PrinterSettings:=PrinterSettings;
          DeliveryForm.IN_OnPrinter:=OnPrinter;
          deliveryForm.PrintEde;

          WorksheetForm.IN_hawbSerial:=Hawbserial;
          WorksheetForm.IN_OnPrinter:=OnPrinter;
          WorksheetForm.IN_PrinterSettings:=PrinterSettings;
          WorksheetForm.PrintWorksheet;


          isMultiitem:=IsMulti(hawbSerial);
          if isMultiItem then begin
            EdeMultiForm.In_HawbSErial:=hawbSerial;
            EdeMultiForm.IN_OnPrinter:=OnPrinter;
            EdeMultiForm.IN_PrinterSettings:=PrinterSettings;

            EdeMultiForm.PrintHawb;
          end else begin
            EdeSingleForm.In_HawbSErial:= HawbSerial;
            EdeSingleForm.IN_OnPrinter:=Onprinter;
            EdeSingleForm.IN_printErSettings:=PrinterSettings;
            EdeSingleForm.PrintEDe;
          end;

       end;
    end;
 finally
    deliveryForm.Free;
    WorksheetForm.free;
    EdeSingleForm.Free;
    EdeMultiForm.Free;
 end;

end;
/// //////////////////////////////////////



procedure TV_MawbFRM.DeleteOneHawb(HawbSerial:Integer;HawbDeleteType:THawbDeleteType);
Var
I: integer;
SelectedCount:Integer;
HawbSerialStr:String;
HawbId:String;
DeleteSQL:String;
IsCleared,IsInvoiced,IsFound:Boolean;
MultiSQL:TksMultiSQL;
qr :TksQuery;
Begin

  try
    qr:=TksQuery.Create(cn, 'Select * from Hawb where Serial_number = :HawbSerial');
    qr.ParamByName('HawbSerial').value:= HawbSerial;
    qr.Open;

        IsFound:=(not qr.Isempty);
        IsCleared:= (qr.FieldByName('FK_CLEARING_STATE').AsString='1');
        IsInvoiced:=(qr.FieldByName('FK_INVOICE_STATUS').AsString='1');
        HawbId:= qr.FieldByName('Hab_id').AsString;
        HawbSerialStr:=IntToStr(hawbserial);
  finally
    qr.Free;
  end;


     if( IsFound and  (not IsInvoiced) and (not IsCleared)) then begin

//      InsertHawbDeleted(HawbSerial,HawbDeleteType);
        try

          MultiSQL := TksMultiSQL.Create(cn)
                  .add('Delete from hawb_item_certificate hic where hic.fk_hawb_item in ( select hi.serial_number from hawb_item hi where hi.fk_hawb_serial = :hawbSerial)',[HawbSerialStr])
                  .add('Delete from Hawb_Charge where fk_hawb= :HawbSerial',[HawbSerialStr])
                  .add('Delete from Hawb_cOMMENTS where fk_hawb_serial= :HawbSerial',[HawbSerialStr])
                  .add('Delete from Hawb_Partial where fk_hawb_serial_original= :hawbSerial',[HawbSerialStr])
                  .add('Delete from Hawb_item where fk_hawb_serial= :hawbSerial',[HawbSerialStr])
                  .add('Delete from SENDER_INVOICE where fk_hawb_serial= :hawbSerial',[HawbSerialStr])
                  .add('Delete from HAWB where SERIAL_NUMBER= :HawbSerial',[HawbSerialStr])
                  .ExecSQL();
        finally
          MultiSQL.free;
        end;
     end;

End;



procedure TV_MawbFRM.SendBTNClick(Sender: TObject);
Var
        HawbSerial:Integer;
        EmailCode:String;
        qr:TksQuery;
        str:string;
begin

  qr:=TksQuery.Create(cn,'Select * from Email_message where  MESSAGE_CODE_TYPE= :MessageCodeType order by Rank');
  try
    qr.ParamByName('MessageCodeType').Value:='DO';
    qr.Open;
    EmailCode:=qr.FieldByName('Code').AsString;
  finally
    qr.Free;
  end;

  str:=' Select * from hawb ha, clearance_waiting_code cl where fk_mawb_refer_number= :MawbReference '
      +' and ha.clearance_waiting_code=cl.code and cl.Code_4= ''BTO'' ';
  qr:=TksQuery.Create(cn,str);
  try
    qr.ParamByName('MawbReference').Value:=V_MawbDataDML.MawbSQL.FieldByname('reference_number').AsInteger;
    qr.Open;
    while (Not qr.EOF) do begin
      HawbSerial:=qr.FieldByName('serial_number').AsInteger;
      D_sendSMSFRM.SendMyMessage(HawbSerial,EmailCode,'DO');
      qr.next;
    end;

  finally
    qr.Free;
  end;

end;

procedure TV_MawbFRM.CopyToClipBoardBTNClick(Sender: TObject);
begin
  CopyAllToClipBoard(LowGRD.DataSource.DataSet);
end;

procedure TV_MawbFRM.CopyAllToClipBoard(aDataSet:TDataset);
var
tableSQL:TDataSet;
begin

//  tableSQL:=LowGRD.DataSource.DataSet;
  tableSQL:=aDataset;
  with TableSQL do begin
        memo1.Clear;
        tableSQL.DisableControls;
        first;
        while(not eof) do begin
                memo1.Lines.Add(fieldbyName('hab_id').AsString);
                next;
        end;

        memo1.SelectAll;
        memo1.CopyToClipboard;
        tableSQL.EnableControls;

  end;
end;

procedure TV_MawbFRM.CloseBTNClick(Sender: TObject);
begin
Close;

end;


procedure TV_MawbFRM.MawbDetailsTSEnter(Sender: TObject);
begin
//ksOpenTables([V_MawbDataDML.MawbSQL,V_MawbDataDML.MawbSelectSQL]);

End;

procedure TV_MawbFRM.MawbDetailsTSExit(Sender: TObject);
begin
 if V_MawbDataDML.MawbSQL.State in [dsEdit,dsInsert] then
    V_MawbDataDML.MawbSQL.post;
end;

procedure TV_MawbFRM.PartialHawbTSEnter(Sender: TObject);
begin
  ksOpenTables([V_MawbDataDML.PartialHawbSQL]);
if GAction ='SearchPartialHawb' then begin
     V_MawbDataDML.PartialHawbSRC.DataSet.Locate('SERIAL_NUMBER',GHawbSerial, []);
end;

End;

procedure TV_MawbFRM.FormCreate(Sender: TObject);
Var
        Dataset:TIBCQuery;
        FirstSErial:Integer;
begin
cN:= ClairDML.CabCOnnection;

with V_MawbDataDML do begin
  ksOpenTables([MawbSelectSQL]);
end;
ksfillComboF1(cn, FlightsDLG,'flight_numbers','flight_number','flight_number');
ksfillComboF1(cn, ImportPortFLD,'port','code','DESCRIPTION');
ksfillComboF1(cn, ClearingStationFLD,'port','code','DESCRIPTION');
ksfillComboF1(cn, CountryFLD,'COUNTRY','nUMBER','NAME');
//ksfillComboF1(cn,FilterBox,'CLEARANCE_INSTRUCTION','code','description','order_number',false,true);
FilterBox.ItemIndex:=0;

MawbPC.ActivePageIndex:=0;
end;

procedure TV_MawbFRM.InsertHawbBTNClick(Sender: TObject);
Var
HawbSerial:Integer;
MawbSerial:Integer;
begin


  with V_MawbDataDML do begin

     if MawbSQL.state<>dsbrowse then
        MawbSQL.post;

     MawbSerial:=MawbSQL.FieldByName('REFERENCE_nUMBER').AsInteger;;
     if (MawbSerial=0) then begin
        ShowMessage('Select Mawb First');
        Exit;
     end;

     V_HawbFRM.IN_MawbSerial:=MawbSerial;
     V_HawbFRM.IN_Action:='INSERT';
        V_HawbFRM.ShowModal;
     V_MawbDataDML.HawbSQL.Refresh;

  end;//with

End;
procedure TV_MawbFRM.BitBtn5Click(Sender: TObject);
begin
Close;
end;

procedure TV_MawbFRM.BitBtn9Click(Sender: TObject);
begin
close;
end;

procedure TV_MawbFRM.BitBtn4Click(Sender: TObject);
begin
Close;
end;

procedure TV_MawbFRM.wwDBNavigator1PostClick(Sender: TObject);
begin
V_MawbDataDML.MawbSelectSQL.Refresh;
end;

procedure TV_MawbFRM.wwDBNavigator1PriorClick(Sender: TObject);
begin
V_MawbDataDML.MawbSRC.DataSet.Next;
abort;
end;

procedure TV_MawbFRM.wwDBNavigator1RefreshClick(Sender: TObject);
begin
V_MawbDataDML.MawbSelectSQL.Refresh;
end;

procedure TV_MawbFRM.wwDBNavigator1NextClick(Sender: TObject);
begin
V_MawbDataDML.MawbSRC.DataSet.Prior;
abort;

end;

procedure TV_MawbFRM.MawbSelectGRDDblClick(Sender: TObject);
Var
        SerialNumber:integer;
begin
    if (V_MawbDataDML.MawbSQL.State in [dsEdit,dsInsert]) then begin
      V_MawbDataDML.MawbSQL.Post;
    end;

        SerialNumber:=V_MawbDataDML.MawbSelectSQL.FieldbyName('Reference_number').AsInteger;
        FindMawb(SerialNumber);
end;

procedure TV_MawbFRM.MawbSelectGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
  var
         sortInfoHawb:TSOrtInfo;
         Table:TIBCQuery;


  begin
        Table:=TIbcQuery(MawbSelectGRD.DataSource.DataSet);
        SortInfoHawb.Table:=Table;
        G_GeneralProcs.SortGrid(Table,AFieldName,SOrtInfoHawb);

end;

procedure TV_MawbFRM.wwDBNavigator1InsertClick(Sender: TObject);
begin
  V_MawbDataDML.MawbSelectSQL.Refresh;
    If MawbFLD.CanFocus then
        MawbFLD.SetFOcus;

end;

procedure TV_MawbFRM.WorksheetSelected1Click(Sender: TObject);
Begin
//Gaction:='PRINT_EDE';
PrintSelected('WORKSHEET',false);
end;

procedure TV_MawbFRM.DeliverySelected1Click(Sender: TObject);
var
 myForm:TDeliveryOrderFRM;
 HawbSerial:Integer;
begin
 PrintSelected('DELIVERY',false);
end;

procedure TV_MawbFRM.PrintDeliverySelectedDirectly1Click(Sender: TObject);
begin
  PrintSelected('DELIVERY',true);
end;


procedure TV_MawbFRM.EDESelected1Click(Sender: TObject);
begin
PrintSelected('EDE',false);

end;



procedure TV_MawbFRM.EDESelectedTEST1Click(Sender: TObject);
begin

PrintSelected('ALL',true);

end;

procedure TV_MawbFRM.PrintCompleteSet1Click(Sender: TObject);
begin
  PrintSelected('ALL',false);
end;

procedure TV_MawbFRM.Button1Click(Sender: TObject);
var
 HawbSerial:Integer;
 multiSQL:TksMultiSQL;
  str1,str2,str3:String;
  HawbStr:string;
begin
  HawbSerial:=V_MawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
  HawbStr:=IntToStr(HawbSerial);

    str1:='delete from invoice_line il where il.fk_invoice_serial in '
    +' (select inv.serial_number from invoice_new inv where inv.hawb_serial = :hawbSerial)';
    str2:='delete from invoice_new inv where inv.hawb_serial = :hawbSerial';
    str3:='update hawb ha set ha.fk_invoice_status=''0'',ha.fk_clearing_state=''0''  where ha.serial_number= :hawbSerial';


//    ksExecSQL(cn,str1,[hawbstr]);
    if cn.Connected then begin
      showMessage('conn');
    end;
//    ksExecSQL(cn,'update hawb ha set ha.fk_invoice_status=''0'',ha.fk_clearing_state=''0''  where ha.serial_number= :hawbSerial',['479']);
    ksExecSQLVar(cn,str1,[hawbstr]);
    ksExecSQLVar(cn,str2,[hawbstr]);
    ksExecSQLVar(cn,str3,[hawbstr]);
{
    multiSQL:=TksMultiSQL.Create(cn)
    .add(str1,[HawbStr] )
    .add(str2,[HawbStr] )
    .add(str3,[HawbStr] )
    .ExecSQL();
}

  V_MawbDataDML.HawbSQL.Refresh;

end;

Function TV_MawbFRM.GetSelected() :TStrings;
var
bList:TwwBookmarkList;
i:Integer;

begin
  try
    memo1.Clear;
    MhawbsGRD.DataSource.DataSet.DisableControls;
    for i:= 0 to MHawbsGRD.SelectedList.Count-1 do begin
      MhawbsGrd.DataSource.DataSet.goTobookmark(MhawbsGRd.SelectedList.items[i]);
       Memo1.Lines.Add(MHawbsGRd.DataSource.DataSet.FieldByName('Serial_Number').AsString );
//      SHowMessage(MHawbsGRd.DataSource.DataSet.FieldByName('Serial_Number').AsString );

    end;
  finally
    MhawbsGRD.DataSource.DataSet.EnableControls;
  end;
  result:=Memo1.Lines;

end;

procedure TV_MawbFRM.ByMawbIDsFLDEnter(Sender: TObject);
begin
TsearchBox(Sender).Clear;
end;

procedure TV_MawbFRM.ByMawbIDsFLDInvokeSearch(Sender: TObject);
Var
        FirstSerial:Integer;
begin
WIth V_MawbDataDML.MawbSelectSQL do begin
        DisableControls;
        close;
        DeleteWhere;
        AddWhere('Mawb_ID starting with :MawbID');
        SetOrderBy('Mawb_ID ascending');
        If not prepared then prepare;
        ParamByName('MawbId').AsSTring:=Trim(ByMawbIDsFLD.Text);
//        SHowMessage(MawbSelectSQL.FinalSQL);
        Open;
        FirstSErial:=-1;
        if not isEmpty then
                FirstSerial:=FieldBYName('reference_number').AsInteger;
        FindMawb(FirstSerial);
        EnableControls;
end;

end;

procedure TV_MawbFRM.ByRefFLDEnter(Sender: TObject);
begin
TsearchBox(Sender).Clear;
end;

procedure TV_MawbFRM.ByRefFLDInvokeSearch(Sender: TObject);
Var
        FirstSerial:Integer;
        SErialNumber:Integer;
begin
  WIth V_MawbDataDML.MawbSelectSQL do begin
        DisableControls;
        close;
        RestoreSQL;
        AddWhere('reference_number <=  :MawbSerial');
        SetOrderBy('REference_Number descending');
        If not prepared then prepare;
        SerialNumber:=-1;
        Try
                SerialNumber:=StrToInt(ByRefFLD.Text);
        except
                SerialNumber:=-1;
        end;
        ParamByName('MawbSerial').AsINteger:=SerialNUmber;
//        SHowMessage(MawbSelectSQL.FinalSQL);
        Open;
        FirstSErial:=-1;
        if not isEmpty then
                FirstSerial:=FieldBYName('reference_number').AsInteger;
        FindMawb(FirstSerial);
        EnableControls;
  end;

end;

procedure TV_MawbFRM.BYStartDateFLDCloseUp(Sender: TObject);
Var
        StartDate:TDate;
        FirstSerial:Integer;
begin
StartDate:=ByStartDateFLD.Date;
With  V_MawbDataDML.MawbSelectSQL do begin
        close;
        DeleteWhere;
        AddWhere('Date_Arrived >= :DateArrived');
        If not prepared then prepare;
        ParamByName('DateArrived').AsDate:=StartDate;
        SetOrderBy('Date_Arrived');
//        SHowMessage(MawbSelectSQL.FinalSQL);
        Open;
        FirstSErial:=-1;
        if not isEmpty then
                FirstSerial:=FieldBYName('reference_number').AsInteger;
        FindMawb(FirstSerial);
end;

end;

procedure TV_MawbFRM.PrintBTNClick(Sender: TObject);
var
        myForm:TR_HawbStatusCDeletedFRM;
        mawbSerial:Integer;
begin
  MawbSerial:=V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
  myForm := TR_HawbStatusCDeletedFRM.Create(nil) ;
  try
    myForm.In_MawbSerial:=MawbSerial;
     myForm.PrintIt;
   finally
     myForm.Free;
   end;

end;


procedure TV_MawbFRM.BtnCancelClick(Sender: TObject);
begin
  with V_MawbDataDML do begin
     if MawbSQL.state in [dsedit, dsinsert] then      begin
          MawbSQL.cancel;
     end;
  end; //with

end;

procedure TV_MawbFRM.BtnDeleteRecordClick(Sender: TObject);
var
  qr:TksQuery;
  count:Integer;
  MawbSerial:Integer;
begin
    MawbSerial:=V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
    if mawbSerial<1 then
      abort;
    try
    qr:= TksQuery.Create(cn,'select count(*) cnt from hawb where fk_mawb_refer_number = :MawbSerial');
    qr.ParamByName('mawbSerial').Value:= MawbSerial;
    qr.Open;
    count:=qr.FieldByName('cnt').AsInteger;
      if count>0 then begin
        ShowMessage('Delete ALL Hawbs first');
        abort;
      end;
    finally
    qr.Free;
    end;
    V_MawbdATADML.MawbSQL.Delete;
    V_MawbdATADML.MawbSelectSQL.Refresh;

end;

procedure TV_MawbFRM.BtnInsertRecordClick(Sender: TObject);
begin
    if V_MawbDataDML.MawbSQL.state in [dsInsert,dsEdit] then
      V_MawbDataDML.MawbSQL.Post;
    V_MawbDataDML.MawbSQL.INsert;
     If MawbFLD.CanFocus then
        MawbFLD.SetFOcus;
    V_MawbDataDML.MawbSelectSQL.Refresh;

end;

procedure TV_MawbFRM.BtnLeftClick(Sender: TObject);
begin
MawbSelectGRD.DataSource.DataSet.Prior;
end;

procedure TV_MawbFRM.BtnPostClick(Sender: TObject);
Var
  MawbSerial:Integer;
begin
    with V_MawbDataDML do begin
     if MawbSQL.state in [dsedit, dsinsert] then  begin
          MawbSQL.post;
          MawbSerial:=MawbSQL.FieldByName('reference_number').AsInteger;
          MawbSelectSQL.Refresh;
          MawbSelectSQL.LocateEx('reference_number',mawbSerial,[]);
     end;
    end;

end;

procedure TV_MawbFRM.BtnRefreshClick(Sender: TObject);
begin

  with V_MawbDataDML do begin
    MawbSelectSQL.Refresh;
     if MawbSQL.state in [dsBrowse] then      begin
          MawbSQL.Refresh;
          MawbSelectSQL.Refresh;
     end;

     if HawbSQL.state in [dsBrowse] then      begin
          HawbSQL.Refresh;
//          MawbSelectSQL.Refresh;
     end;
  end; //with


end;

procedure TV_MawbFRM.BtnRightClick(Sender: TObject);
begin
MawbSelectGRD.DataSource.DataSet.Next;

end;

procedure TV_MawbFRM.PrintOneInvoice(Const hawbSerial:Integer);
var
  InvoiceSerial:Integer;
  qr:TksQuery;
  myForm:TR_PrintMultiInvoiceFRM;

begin

  qr:=TksQuery.Create(cn,'select serial_number from INvoice_new where hawb_serial= :HawbSerial');
  try
    qr.ParamByName('hawbSerial').Value:=HawbSerial;
    qr.Open;
    InvoiceSerial:=qr.FieldByName('serial_number').AsInteger;
  finally
    qr.Free;
  end;
  if InvoiceSerial<1 then
    exit;

 myForm := TR_PrintMultiInvoiceFRM.Create(nil) ;
  try
      MyForm.PrintInvoice(InvoiceSerial);
   finally
     myForm.Free;
   end;


//  R_printMultiInvoiceFRm.PrintInvoice(InvoiceSerial);
end;

procedure TV_MawbFRM.BitBtn11Click(Sender: TObject);
Var

 myForm:TDeliveryOrderFRM;
 HawbSerial:Integer;
begin
  if V_MawbDataDML.PartialHawbSQL.State=dsEdit then begin
    V_MawbDataDML.PartialHawbSQL.Post
  end;
 myForm := TDeliveryOrderFRM.Create(nil) ;
  try
    myForm.IN_hawbSerial:= PartialHawbGRD.DataSource.DataSet.FieldByName('serial_number').AsInteger;
    myForm.In_Partial:=TRUE;
    myForm.PrintEde;
  finally
     myForm.Free;
  end;


  Hawbserial:=V_MawbDataDML.HawbSQL.FieldByName('serial_number').AsInteger;
  myForm.IN_hawbSerial:=HawbSerial;

End;


procedure TV_MawbFRM.BitBtn1Click(Sender: TObject);
begin
  CopyAllToClipBoard(MhawbsGRD.DataSource.DataSet);

end;

procedure TV_MawbFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;





procedure TV_MawbFRM.PrintWhatBTNClick(Sender: TObject);
var
        myForm:TR_HawbStatusCDeletedFRM;
        medForm:TR_MediumHawbFRM;
        mawbSerial:Integer;
        RepType:String;

begin

case  clrRGP.ItemIndex of
  0: begin
    MawbSerial:=V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
    myForm := TR_HawbStatusCDeletedFRM.Create(nil) ;
    try
     myForm.In_MawbSerial:=MawbSerial;
     myForm.In_ReportType:='LOW';
     myForm.IN_tITLE:='Κατάσταση Εμπορευμάτων Χαμηλής Αξίας';

     myForm.PrintIt;
    finally
     myForm.Free;
    end;


  end;
  1: begin
    //Medium
   MawbSerial:= LowGRD.DataSource.DataSet.FieldByName('fk_mawb_refer_number').AsInteger;
    medForm := TR_MediumHawbFRM.Create(nil) ;
    try
      MedForm.IN_MawbSerial:=MawbSerial;
      medForm.In_MawbSerial:=MawbSerial;
      MedForm.PrintReport();
    finally
     medForm.Free;
    end;


  end;
  2: begin
    MawbSerial:=V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger;
    myForm := TR_HawbStatusCDeletedFRM.Create(nil) ;
    try
      myForm.In_MawbSerial:=MawbSerial;
      myForm.In_ReportType:='STC';
      myForm.IN_tITLE:='Κατάσταση Εμπορευμάτων Status C';

     myForm.PrintIt;
    finally
     myForm.Free;
    end;

  end;
end;
end;

procedure TV_MawbFRM.fcShapeBtn1Click(Sender: TObject);
Var
SerialNumber:Integer;
MawbID:String;
Begin
  MawbID:=V_MawbDataDML.MawbSRC.Dataset.fieldbyName('Mawb_id').AsString;
end;

procedure TV_MawbFRM.ImageBTNClick(Sender: TObject);

Var
SerialNumber:Integer;
MawbID:String;
Begin
  MawbID:=V_MawbDataDML.MawbSRC.Dataset.fieldbyName('Mawb_id').AsString;

end;

procedure TV_MawbFRM.ToLeftBTNClick(Sender: TObject);
Begin
  MakeLow(clrArray[clrRGP.ItemIndex] ,V_MawbDataDML.HawbDiffSQL,V_MawbDataDML.hawbIm4SQL);
end;


procedure TV_MawbFRM.Help1Click(Sender: TObject);
begin
//ShowMessage('Press Ctrl Mouse to Clear');
end;

procedure TV_MawbFRM.MakeIm4(Const ClrType:String;LowDS:TibcQuery;HighDS:TIBCQuery);
Var
        HawbSerial:Integer;
        IsInvoiced:boolean;
        IsCleared:Boolean;
        ABookmark:TBookmark;
        MediuMVatRate:Double;
        Wd:String;
begin

  IsInvoiced := LowDS.FieldByName('FK_invoice_status').asString >'0';
  IsCleared  := LowDS.FieldByName('FK_clearing_state').asString >'0';


  If (IsInvoiced or IsCleared) then begin
    exit;
  end;

  If   not LowDS.IsEmpty then
        ABookMark:= LowDS.GetBookmark;

  HawbSerial:=LowDS.FieldByname('Serial_Number').AsInteger;
  UpdatehawbStatus(HawbSerial,0,Wd,'Y',clrType);
  LowDS.Refresh;
  HighDS.Refresh;
  HighDS.LocateEx('SErial_Number',HawbSerial,[]);

  If   not LowDS.IsEmpty then
  LowDS.GotoBookmark(aBookMark);
end;


procedure TV_MawbFRM.MakeLow(Const ClrType:String;LowDS:TibcQuery;HighDS:TIBCQuery);
Var
        HawbSerial:Integer;
        IsInvoiced:boolean;
        IsCleared:Boolean;
        ABookmark:TBookmark;
        MedVat:Double;
  begin

  IsInvoiced := HighDS.FieldByName('FK_invoice_status').asString >'0';
  IsCleared  := HighDS.FieldByName('FK_clearing_state').asString >'0';
  If not(IsInvoiced or IsCleared) then begin
  If   not HighDS.IsEmpty then
   ABookMark:= HIghDS.GetBookmark;

  HawbSerial:=HighDS.FieldByname('Serial_Number').AsInteger;
  MedVat:=V_MawbHawbDML.GetDefaultMediumVatRate();
  UpdatehawbStatus(HawbSerial,MedVat,'','N',clrType);

  LowDS.Refresh;
  HighDS.Refresh;
  LowDs.LocateEx('SErial_Number',HawbSerial,[]);

  If not HighDs.IsEmpty then
      HighDs.GotoBookmark(aBookMark);

//  If MediumGrd.CanFocus then
//                MediumGRD.SetFocus;
  end;
end;


procedure TV_MawbFRM.MediumGRDDblClick(Sender: TObject);
Var
     HawbSerial:Integer;
begin

  HawbSerial:= LowGRD.DataSource.DataSet.FieldByName('Serial_number').AsInteger;
  if HawbSerial<1 then begin
    exit;
  end;

  V_HawbFRM.IN_HawbSerial:=HawbSerial;

  V_HawbFRM.IN_Action:='EDIT';
  V_hawbFRM.ShowModal;
  ksOpenTables([V_MawbDataDML.HawbSQL]);
end;

procedure TV_MawbFRM.ToRightBTNClick(Sender: TObject);
begin
  MakeIm4('IM4',V_MawbDataDML.HawbDiffSQL,V_MawbDataDML.Hawbim4SQL);
End;


procedure TV_MawbFRM.HighGRDDblClick(Sender: TObject);
Var
     HawbSerial:Integer;
begin

  HawbSerial:= HighGRD.DataSource.DataSet.FieldByName('Serial_number').AsInteger;
  if HawbSerial<1 then begin
    exit;
  end;

  V_HawbFRM.IN_HawbSerial:=HawbSerial;

  V_HawbFRM.IN_Action:='EDIT';
  V_hawbFRM.ShowModal;
  ksOpenTables([V_MawbDataDML.HawbSQL]);

end;

procedure TV_MawbFRM.HighGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
var
       sortInfoHawb:TSOrtInfo;
       Serial:integer;
        HawbDS:TIBCQUery;

begin

        HawbDS:=TIBCQuery(HighGRD.DataSource.DataSet);
        Serial:=HawbDS.FieldByName('Serial_number').AsInteger;

        SortInfoHawb.Table:=HawbDS;
        G_GeneralProcs.SortGrid(HawbDs,AFieldName,SOrtInfoHawb);

        hawbDs.LocateEx('Serial_number',Serial,[]);
        highGRD.SelectRecord;

end;

procedure TV_MawbFRM.SelectClearanceFLDCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
var
val:String;
tbl:TIBCQuery;
begin

  if not select then exit;
  tbl:=V_MawbDataDML.HawbStatusSQL;
  val:=sender.Value;

  tbl.Close;
  tbl.RestoreSQL;
  if (Val='All') then begin

  end else if (val='None') or (val='''') then begin
    tbl.AddWhere('clearance_waiting_code='''' or  clearance_waiting_code=''None'' ');
  end else  begin
    tbl.AddWhere('clearance_waiting_code= :Code' );
    tbl.paramByName('code').value:=val;
  end;

  tbl.Open;


end;

procedure TV_MawbFRM.Selected1Click(Sender: TObject);
var
  HawbSerial:integer;
begin
  hawbSerial:=V_MawbDataDML.HawbSQL.FieldByName('Serial_number').AsInteger;
  PrintOneInvoice(HawbSerial);
end;


procedure TV_MawbFRM.MediumGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
vAR
        IsCustomerNull:Boolean;
        CustomsValue:Double;
        VatRate:Double;
begin


    If UpperCase(Field.FieldName)='FK_CUSTOMER_CODE' then begin
        IsCustomerNull:=(Field.DataSet.FieldByName('FK_CUSTOMER_CODE').IsNull) or (Field.DataSet.FieldByName('FK_CUSTOMER_CODE').AsString='');
        If IsCustomerNull then begin
                ABrush.Color := $006A6AFF;
                AFont.Size:=10;
                AFont.Name:='Arial';
        end;
    end else  If UpperCase(Field.FieldName)='CUSTOMS_VALUE' then begin
        CustomsValue:=Field.AsFloat;
        If CustomsValue<=0.001  then begin
                ABrush.Color := $006A6AFF;
                AFont.Size:=10;
                AFont.Name:='Arial';
        end;
    end else  If UpperCase(Field.FieldName)='MEDIUM_VAT_RATE' then begin
        VatRate:=Field.AsFloat;
        If VatRate<=0.001  then begin
                ABrush.Color := $006A6AFF;
                AFont.Size:=10;
                AFont.Name:='Arial';
        end;
    end;
//                        ABrush.Color :=$000080FF;

end;

procedure TV_MawbFRM.MhawbsGRDDblClick(Sender: TObject);
var
 HawbSerial:Integer;

begin
  if V_MawbDatadml.HawbSQL.State in [dsEdit,dsInsert] then
     V_MawbDatadml.HawbSQL.Post;

  HawbSerial:=V_MawbDataDML.HawbSQL.FieldByName('Serial_number').AsInteger;
  if HawbSerial<1 then begin
    exit;
  end;

  V_HawbFRM.IN_HawbSerial:=HawbSerial;

  V_HawbFRM.IN_Action:='EDIT';
  V_HawbFRM.IN_MawbFIlter:= filterBox.Value;

  V_hawbFRM.ShowModal;
  HawbSerial:=V_HawbFRM.OUT_HawbSerial;
  ksOpenTables([V_MawbDataDML.HawbSQL]);


  try
    v_mAWBdATAdml.HawbSQL.DisableControls;

    MHawbsGRD.SelectedList.Clear;
    v_mAWBdATAdml.HawbSQL.LocateEx('serial_number',HawbSerial,[]);
    MHawbsGRD.SelectRecord;

  finally
    v_mAWBdATAdml.HawbSQL.EnableControls;

  end;

end;


procedure TV_MawbFRM.EmptyRepBeforePrint(Sender: TObject);
begin
EmptyRep.Cancel;
end;

procedure TV_MawbFRM.ExapandChargesFLDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_f10 then
  showMessage('inner');
end;

procedure TV_MawbFRM.DeleteHawbBTNClick(Sender: TObject);
Var
        HawbSerial:integer;
        sn:String;
        IsClear, IsInvoiced:Boolean;
        IsPartialExists:Boolean;
        MawbArrivedID:String;
        MawbArrivedRef:String;
        MakeSQL:TksQuery;
        MultiSQL:TksMultiSQL;
        str:String;

begin

  HawbSerial:=V_MawbDataDML.HawbSRC.DataSet.FieldByName('Serial_number').AsInteger;
  SN:=V_MawbDataDML.HawbSRC.DataSet.FieldByName('Serial_number').AsString;

   if (sn='') then begin
      ShowMessage('Select Hawb First');
      Exit;
   end;


   try
    makeSQL:=TksQuery.Create(cn,' Select fk_clearing_state, fk_invoice_status from hawb where serial_number='+SN);
    MakeSQL.ReadOnly:=True;
    makeSQL.Open;
    IsClear:= StrToIntDef( MakeSQL.FieldByName('FK_CLEARING_STATE').AsString ,0) > 0;  //may have values 0,1,2 ...
    IsInvoiced:=StrToIntDef(MakeSQL.FieldByName('FK_INVOICE_STATUS').AsString,0)>0;
    if (IsClear or IsInvoiced) then begin
      ShowMessage('Cannot Delete Cleared Hawbs');
      Abort;
    end;

   finally
    makeSQL.Free;
   end;


    str:= 'Select hp.fk_hawb_serial_original, ma.reference_number, ma.mawb_id'
    +' from hawb_Partial hp '
    +' left outer join mawb ma on hp.fk_mawb_serial_arrived=ma.reference_number '
    +' where hp.fk_hawb_id_original = :hawbid ';


   makeSQL:=TksQuery.Create(cn,str);
   try
    MakeSQL.ReadOnly:=True;
    MakeSQL.ParamByName('hawbid').Value:=V_MawbDataDML.HawbSQL.FieldByName('hab_id').AsString;
    makeSQL.Open;
    IsPartialExists:=not MakeSQL.IsEmpty;
    iF (IsPartialExists) then begin
      MawbArrivedRef:=makeSQL.FieldByName('reference_number').AsString;
      MawbArrivedID:=makeSQL.FieldByName('mawb_id').AsString;
      ShowMessage('Cannot Delete. Delete first Partial Hawb on Mawb= '+ MawbArrivedID+ ' ref: '+MawbArrivedRef);
      exit;
    end;
   finally
    makeSQL.Free;
   end;

  if  MessageDlg('Delete Hawb?', mtConfirmation, [mbNo,mbYes], 0)= id_No then begin
    abort;
  end;

  try

    MultiSQL:=TksMultiSQL.Create(cn)
    .add('Delete from Hawb_Comments where FK_hawb_Serial= :hawbs',[SN])
    .Add( 'Delete from hawb_item_certificate hic '
      +' where hic.fk_hawb_item = any (select hi.serial_number from hawb_item hi where hi.fk_hawb_serial= :hawbSerial)',[SN])
    .Add('Delete from HAWB_ITEM where FK_hawb_Serial= :hawbSerial',[SN])
    .Add('Delete from HAWB_ITEM where FK_hawb_Serial= :hawbSerial',[SN])
    .add('Delete from SENDER_INVOICE where FK_hawb_Serial= :HawbSerial',[SN])
    .add('Delete from Hawb where Serial_Number= :HawbSerial',[SN])
    .ExecSQL();
  finally
    multiSQL.Free;
  end;

  V_MawbDataDML.HawbSRC.DataSet.refresh;
end;

procedure TV_MawbFRM.GenerateInvoices2Click(Sender: TObject);
Var
  myForm: TU_GenerateInvFRM;
begin

//SavedHawbSerial:=TIBCQuery(MHawbsGRD.DataSource.DataSet).fieldbyName('Serial_Number').AsInteger;
//SavedB1:=(MHawbsGRD.DataSource.DataSet  as TIBCQuery).GetBOokmark;
  if V_MawbDataDML.MawbSQL.State in [dsInsert,dsEdit] then begin
    V_MawbDataDML.MawbSQL.Post;
  end;

  try
     myForm := TU_GenerateInvFRM.Create(nil);
     myForm.IN_MawbID:=V_MawbDataDML.MawbSQL.FieldByName('mawb_id').AsString;
     myFOrm.IN_HawbSerial:=TIBCQuery(MHawbsGRD.DataSource.DataSet).fieldbyName('Serial_Number').AsInteger;
     myForm.IN_SelectedList:=GetSelected();

     myForm.ShowModal;
   finally
     myForm.Free;
   end;
   V_mawbDataDML.HawbSQL.Refresh;

end;

procedure TV_MawbFRM.HawbImage1Click(Sender: TObject);
Var
SerialNumber:Integer;
HawbID:String;
Begin
end;

procedure TV_MawbFRM.MawbPCChanging(Sender: TObject; var AllowChange: Boolean);
begin
  try
    if V_MawbDataDML.MawbSQL.State in [dsInsert,dsEdit] then
      V_MawbDataDML.MawbSQl.Post;

  except
    allowChange:= false;
    exit;

  end;
  allowChange:=  (V_MawbDataDML.MawbSQL.FieldByName('reference_number').AsInteger >0);

end;

procedure TV_MawbFRM.MhawbsGRDTitleButtonClick(Sender: TObject;
  AFieldName: String);

//***************
Var
        HawbDS:TIBCQUery;
        Bm:TBookMark;
        AscOrderPOs:integer;
        DescOrderPOs:integer;
        CurrentSortField:String;
        NewSOrt:String;
        ImageIndex: Integer;
        Bmp: TBitmap;
       sortInfoHawb:TSOrtInfo;
       Serial:integer;

begin

        HawbDS:=V_MawbDataDML.HawbSQL;
        Serial:=HawbDS.FieldByName('Serial_number').AsInteger;

        SortInfoHawb.Table:=HawbDS;
        G_GeneralProcs.SortGrid(HawbDs,AFieldName,SOrtInfoHawb);

        hawbDs.LocateEx('Serial_number',Serial,[]);
        MhawbsGRD.SelectRecord;
end;

procedure TV_MawbFRM.wwIButton1Click(Sender: TObject);
Var
        HawbDS:TIBCQUery;
begin
        HawbDS:=TIBCQUery(MhawbsGRD.DataSource.DataSet);

        HawbDs.ControlsDisabled;
        HawbDS.close;

                HawbDs.SetOrderBy('SERIAL_NUMBER DESC');

        HawbDS.open;
        HawbDs.EnableControls;

end;

procedure TV_MawbFRM.FilterBoxCloseUp(Sender: TwwDBComboBox; Select: Boolean);
var
Val:String;
HawbDS:TIBCQuery;
filterVal:string;
begin
//ShowMessage(sender.Text)
  HawbDS:= V_MawbDataDML.HawbSQL;
  if (sender.Value='') Or (Sender.Value ='All') then begin
    HawbDS.filtered:=False;
    exit;
  end;

  if sender.Value='IT2' then begin
    filterVal:='fk_clearance_instruction =''IM4'' OR fk_clearance_instruction = ''DO'' Or fk_clearance_instruction =''DOZ'' ';
  end else begin
    filterVal:='fk_clearance_instruction = '+ QuotedStr(sender.Value);
  end;
  HawbDS.Filter:=FilterVal;
  HawbDs.Filtered:=true;

//  ShowMessage(sender.Value);

end;

procedure TV_MawbFRM.FilterHawbRGPClick(Sender: TObject);
Begin
FilterHawbs;
end;

procedure TV_MawbFRM.FilterHawbs;
Var
        HawbDS:TIBCQuery;
Begin
//sfd

  HawbDS:=TIBCQuery(V_MawbDataDML.HawbSRC.Dataset);
  HawbDS.DisableControls;
  HawbDs.RestoreSQL;
  HawbDS.Close;

  HawbDS.Open;
  HawbDS.EnableControls;

end;

procedure TV_MawbFRM.MhawbsGRDCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
Var
   IsCustomerZero:Boolean;
   IsCustomerNull:Boolean;
   isIm4:Boolean;
   isMed:boolean;
begin


  If UpperCase(Field.FieldName)='CUSTOMER_NAME' then begin
    IsCustomerZero:=Field.DataSet.FieldByName('FK_CUSTOMER_CODE').AsInteger=0;
    IsCustomerNull:=Field.DataSet.FieldByName('FK_CUSTOMER_CODE').IsNull;
    IsIm4:=Field.DataSet.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString='IM4';

        if  (IsCustomerZero or IsCustomerNull) and IsIm4 then begin
                ABrush.Color := $000141FE;//red
        end else begin
                if Highlight then begin
                        afont.Color:=ClBlack;
                        brush.color:=clYellow;// $1C86EE;
                end;
        end;
  end;

  If UpperCase(Field.FieldName)='SENDERCUSTOMVALUE' then begin
    IsMed:=Field.DataSet.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString='MED';
    IsIm4:=Field.DataSet.FieldByName('FK_CLEARANCE_INSTRUCTION').AsString='IM4';
    if isMed and (Field.DataSet.FieldByName('SENDERCUSTOMVALUE').AsFloat >= MinMedium)then begin
                ABrush.Color := $000141FE;//red
    end;
    if isIm4 and (Field.DataSet.FieldByName('SENDERCUSTOMVALUE').AsFloat < MinMedium)then begin
      if not(Field.DataSet.FieldByName('company_or_person').AsString='C') then begin
                ABrush.Color := $000141FE;//red
      end;
    end;

  end;


end;

procedure TV_MawbFRM.LowGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
var
       sortInfoHawb:TSOrtInfo;
       Serial:integer;
        HawbDS:TIBCQUery;

begin

        HawbDS:=TIBCQuery(LowGRD.DataSource.DataSet);
        Serial:=HawbDS.FieldByName('Serial_number').AsInteger;

        SortInfoHawb.Table:=HawbDS;
        G_GeneralProcs.SortGrid(HawbDs,AFieldName,SOrtInfoHawb);

        hawbDs.LocateEx('Serial_number',Serial,[]);
        LowGRD.SelectRecord;

end;

END.

