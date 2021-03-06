unit R_uninvoicedHawbs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, wwSpeedButton, wwDBNavigator, Db, Wwdatsrc,
   DBAccess, IBC, MemDS, IBCError,  Grids, Wwdbigrd, Wwdbgrid, Wwkeycb, wwDialog, wwidlg,
  Mask, wwdbedit,  DBGrids, wwdbdatetimepicker, ppDB, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppProd, ppReport, ppComm, ppRelatv,
  ppCache, ppDBPipe,ppTypes,ppviewr, ppDesignLayer, ppParameter, RzButton,
  RzPanel;

type
  TR_uninvoicedHawbsFRM = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PaymentReceivedSQL: TIBCQuery;
    PaymentReceivedSRC: TDataSource;
    PaymentReceivedPIP: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    FromDateFLD: TwwDBDateTimePicker;
    Label1: TLabel;
    ToDateFLD: TwwDBDateTimePicker;
    PaymentReceivedSQLSERIAL_NUMBER: TIntegerField;
    PaymentReceivedSQLXML_ID: TStringField;
    PaymentReceivedSQLAMOUNT_CUSTOMS: TFloatField;
    PaymentReceivedSQLAMOUNT_DHL: TFloatField;
    PaymentReceivedSQLHAWB_SERIAL: TIntegerField;
    PaymentReceivedSQLHAWB_ID: TStringField;
    PaymentReceivedSQLFK_CUSTOMS_SERIAL: TIntegerField;
    PaymentReceivedSQLCUSTOMER_NAME: TStringField;
    PaymentReceivedSQLDATE_CLEARED: TDateField;
    PaymentReceivedSQLINVOICE_NUMBER: TStringField;
    PaymentReceivedSQLIS_COLLECTABLE: TStringField;
    PrintRBtn: TBitBtn;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure FormActivate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure PrintRBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_uninvoicedHawbsFRM: TR_uninvoicedHawbsFRM;

implementation

uses  U_ClairDML;

{$R *.DFM}





procedure TR_uninvoicedHawbsFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TR_uninvoicedHawbsFRM.BitBtn2Click(Sender: TObject);
begin
close;

end;




procedure TR_uninvoicedHawbsFRM.ppReport1PreviewFormCreate(
  Sender: TObject);
begin
  (sender as TppReport).PreviewForm.WindowState := wsMaximized;
  TppViewer((sender as TppReport).PreviewForm.Viewer).ZoomSetting := zs100Percent;

end;


procedure TR_uninvoicedHawbsFRM.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TR_uninvoicedHawbsFRM.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
Text:= 'Period :'+ FromDateFLD.Text+ ' - '+ ToDateFLD.Text;

end;


procedure TR_uninvoicedHawbsFRM.PrintRBtnClick(Sender: TObject);

Var
   FromDate:TDateTime;
   ToDate :TDateTime;
   SFromDate:String;
   SToDate:String;
begin

fromDate:=FromDateFLD.Date;
toDate:= ToDateFLD.Date;


with PaymentReceivedSQL do
begin
     Close;
     PaymentReceivedSQL.RestoreSQL;
     Prepare;
     ParamByName('FromDateCleared').value:=FromDate;
     If (ToDateFLD.Date >0) then begin
        PaymentReceivedSQL.AddWhere('date_cleared <= :ToDate');
        ParamByName('ToDate').AsDateTime:=ToDate;
     end;
//     ShowMEssage(PaymentReceivedSQL.FinalSQL);
     Open ;
     PpReport1.Print;
     close;
end;

end;

procedure TR_uninvoicedHawbsFRM.FormActivate(Sender: TObject);
begin
if (Trim(ToDateFLD.text)='') then
  toDateFLD.Date:=now;

if (Trim(FromDateFLD.text)='') then
   FromDateFLD.Date:=now;

end;

end.
