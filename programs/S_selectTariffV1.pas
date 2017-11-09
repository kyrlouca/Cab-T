{
OutIsSelect - if true, doubleclick on grid will take you to edit, if false will select tariff

}

unit S_selectTariffV1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,StrUtils,
  StdCtrls, Mask, DBCtrls, Db,  DBAccess, IBC, MemDS, IBCError, wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,G_KyriacosTypes, G_KyrSQL,
  ImgList, RzButton, RzPanel;

type
  TS_SelectTariffV1FRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    TariffSRC: TDataSource;
    TariffSQL: TIBCQuery;
    CodeFLD: TwwDBEdit;
    Label2: TLabel;
    ReadTrans: TIBCTransaction;
    WriteTrans: TIBCTransaction;
    TariffSQLTARIFF_CODE: TStringField;
    TariffSQLDESCRIPTION: TStringField;
    Panel3: TPanel;
    TariffGRD: TwwDBGrid;
    TariffGRDIButton: TwwIButton;
    Panel6: TPanel;
    TariffSQLFK_VAT_CODE: TStringField;
    ChargingMethodSQL: TIBCQuery;
    ChargingMethodSQLCHARGING_CODE: TStringField;
    ChargingMethodSQLDESCRIPTION: TStringField;
    ChargingMethodSQLIS_DEFAULT: TStringField;
    TariffSQLFK_TARIFF_USAGE: TStringField;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    AddRTariffBTN: TRzBitBtn;
    EditRBTN: TRzBitBtn;
    ViewRBtn: TRzBitBtn;
    DeleteRBTN: TRzBitBtn;
    BYCodeBTN: TSpeedButton;
    Panel11: TRzPanel;
    BitBtn2: TBitBtn;
    TariffSQLTHE_KEY: TStringField;
    TariffSQLKEY_DESCRIPTION: TStringField;
    TariffSQLTARIFF_UNIT_RATE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TariffSQLBeforeEdit(DataSet: TDataSet);
    procedure TariffGRDDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NewBTNClick(Sender: TObject);
    procedure BYCodeBTNClick(Sender: TObject);
    procedure CodeFLDKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure DeleteRBTNClick(Sender: TObject);
    procedure AddRTariffBTNClick(Sender: TObject);
    procedure AddCustomsRBtnClick(Sender: TObject);
    procedure ViewRBtnClick(Sender: TObject);
    procedure EditRBTNClick(Sender: TObject);
    procedure TariffGRDTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure TariffGRDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
        PreviousSortedField:String;
        procedure UpdateTariff(IsSaveAll:Boolean);
    procedure AddSTariff(Const TariffUsage:String;TariffCode:String);
    procedure SelectTariff();
  procedure ShowSmartTariff(const Str:String);

  public
    { Public declarations }
    In_ForSelection:String;
    In_SelectBy:String;
    IN_TariffUsage:String;
//    IN_AllowAddition:Boolean;
    in_Value:String;
    OutSelectedTariffCode:String;
    OutSelectedTariffDescription :String;
    SortInfo:TSortInfo;

    procedure ShowTariffs(Const KeyType:String;TariffUsage:String; Const Value:String);

  end;

var
  S_SelectTariffV1FRM: TS_SelectTariffV1FRM;

implementation

uses  MainFFF,M_STariffX1, U_ClairDML,G_generalProcs, M_TariffExciseCodes,
  M_tariffLine;

{$R *.DFM}

procedure TS_SelectTariffV1FRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//InButtonSelect:='';
CodeFLD.Clear;
//NameFLD.Clear;
TariffSQL.Close;

end;


procedure TS_SelectTariffV1FRM.FormCreate(Sender: TObject);
begin
  cn:= ClairDML.CabCOnnection;
end;

procedure TS_SelectTariffV1FRM.AddSTariff(Const TariffUsage:String;TariffCode:String);
Var
myForm:TM_STariffX1FRM;
serial:Integer;
begin
  try
     myForm := TM_STariffX1FRM.Create(nil);
     myForm.in_Action:='INSERT';
     myForm.in_TariffUsage:=TariffUsage;
     myForm.in_TariffCode:= TariffCode;
     myForm.ShowModal;
     TariffSQL.Refresh;
   finally
     myForm.Free;
   end;


end;


procedure TS_SelectTariffV1FRM.AddRTariffBTNClick(Sender: TObject);
begin
  addSTariff(IN_TariffUsage,CodeFLD.Text);

end;

procedure TS_SelectTariffV1FRM.BitBtn1Click(Sender: TObject);
begin
  OutSelectedTariffCode:='';
  close;
end;

procedure TS_SelectTariffV1FRM.TariffSQLBeforeEdit(
  DataSet: TDataSet);
begin
   Dataset.FieldByName('Code').ReadOnly:=true;
end;


procedure TS_SelectTariffV1FRM.ShowTariffs(Const KeyType:String;TariffUsage:String; Const Value:String);
Var
 aVal:String;
 aKey:String;
 Selectby:String;
 sqlStr:String;
begin



      if (KeyType='BY_TARIFF_CODE') then begin
        aKey:='TARIFF_CODE';
      end else begin
        aKey:='the_key';
      end;


        aVal:=Trim(value);
        with TariffSQL do begin
            close;
            TariffSQL.RestoreSQL;
            Addwhere('fk_tariff_usage = :TariffUsage');
            if aval>'' then begin
              AddWhere(aKey +' starting with :SInput');
              ParamByName('SInput').Value:=aVal;
            end;
            SetOrderBy(aKey+' Asc');


            If not prepared then prepare;
            ParamByName('TariffUsage').Value:=TariffUsage;
            Open;



        end;

end;


procedure TS_SelectTariffV1FRM.TariffGRDDblClick(Sender: TObject);
begin
  SelectTariff();
end;

procedure TS_SelectTariffV1FRM.TariffGRDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY=VK_RETURN THEN begin
    selectTariff();
  end;


end;


procedure TS_SelectTariffV1FRM.SelectTariff();
Var
        CustomerSerial:Integer;
begin

        If In_ForSelection='Y' then begin
             OutSelectedTariffCode:=TariffSQL.FieldByName('TARIFF_CODE').AsString;
             OutSelectedTariffDescription:=TariffSQL.FieldByName('DESCRIPTION').AsString;

//             OutSelectedTariffDescription:= Trim(TariffSQL.FieldByName('KEY_DESCRIPTION').AsString);
//             If (OutSelectedTariffDescription='') then
//               OutSelectedTariffDescription:=TariffSQL.FieldByName('DESCRIPTION').AsString;
             close;
        end else begin
        //just edit the tariff. do not return back
              EditRBTN.Click;
        end;

end;


procedure TS_SelectTariffV1FRM.TariffGRDTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
    SortInfo.Table:=TariffSQL;
     G_GeneralProcs.SortGrid(TariffSQl,AFieldName,SOrtInfo);

end;

procedure TS_SelectTariffV1FRM.FormActivate(Sender: TObject);
Const
  labelArray : array of String =['Select Normal Tariff','Select DHL Charges','Select Customs Charges'];
  usageArray : array of String =['TRF','DHL','CUS'];
var
index:Integer;
button:TrzButton;
buttons :array of TrzButton;
byTariffCode:Boolean;
allowAdd:Boolean;
StrTRF,StrDHL,strCus :String;
SqlArray: array of String;

begin
// set IN_TariffUsage to select Cus, DHL, or Normal tariffs

strTRF :=
' SELECT  first 40  a.TARIFF_CODE, a.FK_VAT_CODE, a.DESCRIPTION,a.FK_TARIFF_USAGE,'
+' stl.tariff_unit_rate, '
+' stk.the_key,stk.Description as Key_description'
+' FROM'
+' S_TARIFF a  left outer join'
+' s_tariff_key stk on a.tariff_code=stk.fk_s_tariff_code left outer join'
+' s_tariff_line stl on stl.fk_s_tariff_code= a.tariff_code'
+' where stl.duty_type = ''IMP'' ' ;

strDHL:=
 '  SELECT  first 40  a.TARIFF_CODE, a.FK_VAT_CODE, a.DESCRIPTION,a.FK_TARIFF_USAGE,'
+'  0.00 as  tariff_unit_rate,'
+' stk.the_key,stk.Description as Key_description'
+' FROM S_TARIFF a left outer join'
+' s_tariff_key stk on a.tariff_code=stk.fk_s_tariff_code';

strCUS:= strDHL;
sqlArray:=[strTRF,strDHL,strCUS];


   Index := G_generalProcs.IndexofSlist(IN_TariffUsage,usageArraY); //find index of item in list
   if Index < 0 then index :=0;

   CodeFLD.UsePictureMask:=(index=0); //use picture only for TRF

   TariffSQL.Close;
   tariffSQL.SQL.Clear;
   tariffSQL.SQL.Add(sqlArray[Index]);


    pANEL1.Caption:=labelArray[index];

  allowAdd:=MainFRM.IsSaveTariff;
  buttons:=[AddRTariffBTN,EditRBTN,DeleteRBTN];
  for button in buttons do begin
    button.Visible:=allowAdd;
  end;


        CodeFLD.Text:=in_Value;
        CodeFLd.SelStart := Length(CodeFLD.Text);


        ShowSmartTariff('sasd') ;

        If   CodeFLD.CanFocus then begin
          CodeFLD.SetFocus;
          CodeFLD.SelStart:=Length(CodeFLD.Text);
          CodeFLD.SelLength:=0;
        end;


End;

procedure TS_SelectTariffV1FRM.NewBTNClick(Sender: TObject);
begin
{
If (Trim(NameFLD.Text)='') then
        abort;

M_TariffNew2FRM.InAction:='INSERT';
}
end;

procedure TS_SelectTariffV1FRM.BYCodeBTNClick(Sender: TObject);
Begin
If CodeFLD.Text>'' then begin
ShowTariffs('BY_TARIFF_CODE',IN_TariffUsage, CodeFLD.Text);
end;
end;

procedure TS_SelectTariffV1FRM.UpdateTariff(IsSaveAll:Boolean);
begin
End;

procedure TS_SelectTariffV1FRM.ViewRBtnClick(Sender: TObject);
Var
myForm:TM_STariffX1FRM;
TariffCode:String;
begin
  Tariffcode:=TariffSQL.FieldByName('Tariff_code').AsString;
  if TariffCode ='' then
    exit;
  try
     myForm := TM_STariffX1FRM.Create(nil);
     myForm.in_Action:='DISPLAY';
     myForm.in_TariffUsage:=TariffSQL.FieldByName('FK_TARIFF_USAGE').AsString;
     myFOrm.in_TariffCode:=TariffCode;
     myForm.ShowModal;
   finally
     myForm.Free;
     TariffSQL.Refresh;
   end;

end;

procedure TS_SelectTariffV1FRM.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin

        if( (FIeld.FieldName= 'TARIFF_UNIT_INCREMENT')
        or (FIeld.FieldName= 'TARIFF_UNIT')
        ) then begin
         if(field.DataSet.FieldByName('CHARGING_METHOD').AsString='VA') then begin
          AFont.color:=brush.Color;
         end else begin
          //aFont.Style:=[];
          AFont.Color:=clWindowText;
         end;

        end;

         if( (FIeld.FieldName= 'chargingShown')) then begin
         if(field.DataSet.FieldByName('CHARGING_METHOD').AsString<>'VA') then begin
          aFont.Style:=[fsBold];
          AFont.Color:=clRed;
         end else begin
          //aFont.Style:=[];
          AFont.Color:=clWindowText;

         end;

        end;


end;

procedure TS_SelectTariffV1FRM.wwDBGrid1DblClick(Sender: TObject);
var
 form: TM_tariffLineFRM;
 Serial:Integer;
begin
{
    serial:=DetailSQL.FieldByName('Serial_number').AsInteger;
    if serial <1  then begin
      abort;
    end;

  try
    form := TM_tariffLineFRM.Create(nil); // you can use nil if you Free it in here
    form.IN_ACTION:='EDIT';
    form.IN_SerialNumber:=serial;
    form.ShowModal;
    DetailSQL.Refresh;
  finally
//    form.Release; // generally better than Free for a Form
    form.free; // generally better than Free for a Form
  end;
}
end;

procedure TS_SelectTariffV1FRM.EditRBTNClick(Sender: TObject);
Var
myForm:TM_STariffX1FRM;
serial:Integer;
TariffCode:sTring;
begin
  TariffCode:=TariffSQL.FieldByName('tariff_code').AsString;
  if TariffCode='' then
    exit;
  try
     myForm := TM_STariffX1FRM.Create(nil);
     myForm.in_Action:='EDIT';
     myForm.in_TariffUsage:=TariffSQL.FieldByName('FK_TARIFF_USAGE').AsString;
     myFOrm.in_TariffCode:=TariffCode;
     myForm.ShowModal;
   finally
     myForm.Free;
     TariffSQL.Refresh;
   end;


end;

procedure TS_SelectTariffV1FRM.AddCustomsRBtnClick(Sender: TObject);
begin
addSTariff('CUS','');

end;

procedure TS_SelectTariffV1FRM.DeleteRBTNClick(Sender: TObject);
var
  TariffCode:String;
   m1:TksMultiSQL;

begin

 tariffCode:=TariffSQL.FieldByName('Tariff_code').AsString;


try

  m1:=TksMultiSQL.Create(cn)
    .add('delete from s_tariff_key where FK_S_TARIFF_CODE= :tCode',[TariffCode])
    .add('delete from s_tariff_line where fk_s_tariff_code = :tariffCode',[TariffCode])
    .add('delete from s_tariff where tariff_code= :tCode',[TariffCode])
    .ExecSQL();

finally
  m1.Free;
end;

  TariffSQL.Refresh;
end;

procedure TS_SelectTariffV1FRM.CodeFLDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  UserTxt:String;
  ln:integer;
  IsByCode:Boolean;
begin
  if key=VK_TAB then begin
    TariffGRD.SetFocus;
  end else if key=VK_DOWN then begin
    TariffGRD.SetFocus;
    exit;
  end;
  ShowSmartTariff('a');
end;


procedure TS_SelectTariffV1FRM.ShowSmartTariff(const Str:String);
var
  isNumericTariff:Boolean;
  userTxt:String;
  ln:Integer;
begin
    UserTxt:=Trim(CodeFLD.Text);
    ln:=Length(UserTxt);

    isNumericTariff:= StrToIntDef( Copy(CodeFLD.Text,1,1),-1) > 0;
    if isNumericTariff then begin
      CodeFLD.Color:=clCream;
      CodeFLD.UsePictureMask:=true;
      CodeFLD.Picture.PictureMask:='####  ## ## ##' ;
      CodeFLD.Picture.AutoFill:=true;
      CodeFLD.Picture.AllowInvalidExit:=true;
      ShowTariffs('BY_TARIFF_CODE',IN_TariffUsage, UserTxt);
    end else begin
      CodeFLD.UsePictureMask:=false;
      CodeFLD.Color:= $00BBFBFB;
//      if UserTxt='' then exit;
      ShowTariffs('BY_KEYWORD',IN_TariffUsage,UserTxt);
    end;

end;



END.
