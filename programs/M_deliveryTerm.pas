unit M_deliveryTerm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdblook, Wwkeycb, Grids,
  DBAccess, IBC, MemDS, Wwdbigrd, Wwdbgrid, wwdbedit, vcl.Wwdotdot, vcl.Wwdbcomb,
  G_KyrSQL, RzButton, RzPanel;
type
  TM_deliveryTermFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Nav1: TwwDBNavigator;
    Nav1Prior: TwwNavButton;
    Nav1Next: TwwNavButton;
    Nav1Insert: TwwNavButton;
    Nav1Delete: TwwNavButton;
    Nav1Post: TwwNavButton;
    Nav1Cancel: TwwNavButton;
    Panel3: TPanel;
    TableSRC: TDataSource;
    SearchFieldFLD: TwwIncrementalSearch;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Grid1: TwwDBGrid;
    Label3: TLabel;
    NameFLD: TwwDBEdit;
    StationIdFLD: TwwDBEdit;
    TableSQL: TIBCQuery;
    WriteTrans: TIBCTransaction;
    ReadTrans: TIBCTransaction;
    Label4: TLabel;
    TableSQLCODE: TStringField;
    TableSQLDESCRIPTION: TStringField;
    TableSQLFREIGHT_INCLUDED: TStringField;
    TableSQLINSURANCE_INCLUDED: TStringField;
    RzPanel1: TRzPanel;
    RzBitBtn1: TRzBitBtn;
    BitBtn1: TBitBtn;
    CanelBTN: TBitBtn;
    TableSQLORDER_NUMBER: TIntegerField;
    Label1: TLabel;
    wwDBEdit1: TwwDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure TableSQLBeforeEdit(DataSet: TDataSet);
    procedure TableSRCStateChange(Sender: TObject);
    procedure TableSQLAfterInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CanelBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
  public
    { Public declarations }
    MyInsertState:Boolean;
    IN_ACTION:String;

  end;

var
  M_deliveryTermFRM: TM_deliveryTermFRM;

implementation

uses  MainFFF, U_ClairDML;


{$R *.DFM}

procedure TM_deliveryTermFRM.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TM_deliveryTermFRM.TableSQLBeforeEdit(
  DataSet: TDataSet);
begin
//   Dataset.FieldByName('Serial_number').ReadOnly:=true;
end;


procedure TM_deliveryTermFRM.TableSRCStateChange(Sender: TObject);
begin


with TableSQL do
begin
     If State<>dsInsert then
     begin
         StationIDFLD.Enabled:=false;
//       FieldByName('id').ReadOnly:=true;
     end
     else
     begin
         StationIDFLD.Enabled:=true;
//       FieldByName('id').ReadOnly:=false;
     end;
end;//with

end;

procedure TM_deliveryTermFRM.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TM_deliveryTermFRM.TableSQLAfterInsert(DataSet: TDataSet);
begin
      StationIDFLD.SetFocus;
//      Dataset.FIeldbyName('IS_ACTIVE').value:='Y';
//      Dataset.FIeldbyName('IS_VAT').value:='N';

end;


procedure TM_deliveryTermFRM.FormActivate(Sender: TObject);
begin
ksOpenTables([TableSQL]);
if IN_ACTION='INSERT' then begin
   TableSQL.Insert;
end;

end;

procedure TM_deliveryTermFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if TableSQL.State in [dsInsert, dsEdit] then
   TableSQL.Post;
end;

procedure TM_deliveryTermFRM.FormCreate(Sender: TObject);
begin
  cn:=ClairDML.CabCOnnection;
end;

procedure TM_deliveryTermFRM.CanelBTNClick(Sender: TObject);
begin
TableSQL.Cancel;
close;
end;

End.
