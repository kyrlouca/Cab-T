unit c_readDHLInvoices;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  wwSpeedButton, wwDBNavigator,
  wwclearpanel, Buttons, ExtCtrls, wwdbedit, Grids, Wwdbigrd, Wwdbgrid,
  DBAccess, IBC, Data.DB, MemDS,   CRGrid,  FileCtrl,G_generalProcs, G_KyriacosTypes, RzButton,
  RzPanel;

type
        TFileInfo=Record
                fileName:string;
                ValidCount:integer;
                FailedCount:integer;
                IsProcessed:boolean;
                ErrCount:Integer;
        end;
        TAccountInfo=Record
//                IsDiscard:Boolean;
                IsValid:String;
                AccType:string;
                AccountVal:String;
        end;


  TC_ReadDhlInvoicesFRM = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Timer1: TTimer;
    ParameterSQL: TIBCQuery;
    ParameterSQLSERIAL_NUMBER: TIntegerField;
    ParameterSQLKEY_FIELD: TStringField;
    ParameterSQLSYS_TYPE: TStringField;
    ParameterSQLINT_1: TIntegerField;
    ParameterSQLINT_2: TIntegerField;
    ParameterSQLSTR_1: TStringField;
    ParameterSQLSTR_2: TStringField;
    ParameterSQLSTR_3: TStringField;
    ParameterSQLSTR_4: TStringField;
    ParameterSQLSTR_5: TStringField;
    ParameterSQLNUM_1: TFloatField;
    ParameterSQLNUM_2: TFloatField;
    ParameterSQLDATE_1: TDateTimeField;
    ParameterSQLDATE_2: TDateTimeField;
    ParameterSQLDESCRIPTION: TStringField;
    MakeSQL: TIBCQuery;
    InvoiceIASSQL: TIBCQuery;
    Panel3: TPanel;
    OpenDialog1: TOpenDialog;
    WriteTrans: TIBCTransaction;
    Button1: TButton;
    DoSQL: TIBCSQL;
    ReadTrans: TIBCTransaction;
    StartBTN: TRzBitBtn;
    NewMemberBTN: TRzBitBtn;
    InvoiceIASSQLSERIAL_NUMBER: TIntegerField;
    InvoiceIASSQLHAWB: TStringField;
    InvoiceIASSQLINVOICE_NUMBER: TStringField;
    InvoiceIASSQLCONSIGNEE: TStringField;
    InvoiceIASSQLINVOICE_AMOUNT: TFloatField;
    InvoiceIASSQLACCOUNT_BILLING: TStringField;
    InvoiceIASSQLACCOUNT_CASH: TStringField;
    InvoiceIASSQLDATE_ARRIVAL: TDateField;
    InvoiceIASSQLDATE_INVOICED: TDateField;
    InvoiceIASSQLINVOICE_TYPE: TStringField;
    InvoiceIASSQLINVOICE_STATUS: TStringField;
    InvoiceIASSQLIS_COLLECTABLE: TStringField;
    Panel11: TRzPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure StartBTNClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure NewMemberBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    cn:TIBCConnection;
        Function GetValueFromSystemTable(Const TheKey,TheDescription:String):String;
        Function ReadFilesInFolder:Integer;
        Function ReadOneTextFile(Const InFileName,logfile:String):TFileInfo;
        function IsDuplicate(Const InvoiceNumber:string):boolean;


        function DeleteDuplicateInvoices(InvoiceNumber:String):Boolean;

        function InsertRecord(Rec:Array of string;LogFile:String;const lineNum:integer):boolean;
        function FindInvoiceType(Const BillingInv:string):TAccountInfo;
        function IsValidRow(Const Bill,house:string):boolean;
        Function WriteToLog(Const fileName, aMessage:string):boolean;
        Function ReadMaskFiles(const CurrentDir,NewDir,searchMask:String):Integer;



  public
    { Public declarations }
      PRUserData :TParameterRecord;
    GlobalStart:boolean;
  end;

const
        MAXW=12;
        Const C_LogFileName='LogFilet2.text';

var
  C_ReadDhlInvoicesFRM: TC_ReadDhlInvoicesFRM;

implementation

uses   U_ClairDML;

{$R *.DFM}


Function TC_ReadDhlInvoicesFRM.GetValueFromSystemTable(Const TheKey,TheDescription:String):String;
Var
   TheQuery:TIBCQuery;
Begin


   TheQuery:=ParameterSQL;
   TheQUery.ParamByName('TheKey').Value:=TheKey;

   TheQuery.close;
   If TheQuery.Prepared then TheQuery.Prepare;
   TheQUery.ParamByName('TheKey').Value:=TheKey;
   TheQuery.Open;
   If TheQuery.IsEmpty Then begin
//        raise exception.create('Enter into System parameters (field STR_4) the record: '+TheKey+' for '+TheDescription);
         ShowMessage('Enter into System parameters -> (***STR_1***) the record: '+TheKey+' for '+TheDescription);
         Result:='';
   end else begin
        TheQuery.First;
        Result:=Trim(TheQuery.fieldbyName('STR_1').AsString);
        TheQuery.Close;
   end;


End;



procedure TC_ReadDhlInvoicesFRM.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TC_ReadDhlInvoicesFRM.BitBtn2Click(Sender: TObject);
begin
close;
end;




procedure TC_ReadDhlInvoicesFRM.FormActivate(Sender: TObject);
Var
        S1:String;
begin
        IF timer1.Enabled then begin
                StartBTN.Color:=clGreen;
                StartBTN.Caption:='Processing Files Active';
        end else begin
                StartBTN.Color:=clred;
                StartBTN.Caption:='Processing Files NOT Active';
        end;


end;

procedure TC_ReadDhlInvoicesFRM.FormCreate(Sender: TObject);
begin
cn:=ClairDML.CabCOnnection;
end;

procedure TC_ReadDhlInvoicesFRM.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TC_ReadDhlInvoicesFRM.StartBTNClick(Sender: TObject);
var
TimerStatus:Boolean;
begin
//self.ReadAllFiles;
Timer1.Interval:=1000;
TimerStatus:=Timer1.Enabled;
Timer1.Enabled:=not TimerStatus;
GlobalStart:=Timer1.Enabled;

If Timer1.Enabled then begin
       StartBTN.Color:=clGreen;
        StartBTN.Caption:= 'Processing Files - Active';

end else begin
        StartBTN.Caption:= 'Processing Files - NOT Active';
        StartBTN.Color:=clred;
end;

end;

procedure TC_ReadDhlInvoicesFRM.Timer1Timer(Sender: TObject);
begin
readFilesinFolder;

end;


Function TC_ReadDhlInvoicesFRM.WriteToLog(Const Filename,aMessage:string):boolean;
var
       CurrentDir:String;
        wFile:TextFile;
       logFile:string;

begin
 logfile:=FileName;
  try
        AssignFile(wFile,logfile);
        if FileExists(logfile) then begin
                append(wFile);
        end      else begin
                Rewrite(wFile);
        end;
        writeln(wFile,aMessage);
  finally
         closeFile(wFile);
  end;


end;

Function TC_ReadDhlInvoicesFRM.ReadMaskFiles(const CurrentDir,NewDir,searchMask:String):Integer;
var

        aFile:TextFile;
        wFile:TextFile;
        Count:Integer;
        sr : TSearchRec;
        logFile:String;
        FileFullName:String;
        FileNewName:string;
        FileMovedName:String;
        FileNm:string;
        FIleInfo:TfileInfo;


begin
Count:=0;
  if FindFirst(CurrentDir+'\'+SearchMask,faAnyFile, SR)=0 then begin


        logFile:=CurrentDir+'\'+C_logFileName;

        repeat
                inc(Count);
                if sr.Name[1]<>'.' then begin // . is the current directory and .. is the father directory
                        FileFullName:=CurrentDir+'\'+sr.Name;

                        FileNm:=ChangeFileExt(sr.Name,'');
                        FileNewName:=CUrrentDir+'\'+ExtractFileName(FileNm)+'.'+'xyz';          //the intermediary file name
                        FilemovedName:=NewDir+'\'+ExtractFileName(FileNm)+'.'+'xxx';         //the new file name after moving

                        if fileExists(FileNewName) then begin
                                DeleteFile(FileNewName);
                        end;
                        //Rename file to prevent another process reading this file in SearchRecord;
                        if not RenameFile(FileFullName ,FileNewName) then begin
                                ShowMEssage(' Error - Cannot rename file : '+FileFullName +' to '+FileNewName+' error='+IntToStr(GetLastError));
                                next;
                        end;

                        //***************Read the renamed file to avoic clashes
                        //FileInfo:=ProcessOneFile(FileNewName);
                        writeToLog(logfile,'=>Started reading file '+ FileFullName);
                        FileInfo:=ReadOneTextFile(FileNewName,logFile);
                        if FileInfo.FailedCount>0 then begin
                          writetoLog(logfile,'*** FAILED TO READ found:'+IntToStr(FIleInfo.FailedCount));
                        end;

                        if FileInfo.ErrCount>0 then begin
                          writetoLog(logfile,'*** INVALID ACCOUNTS: '+IntToStr(FIleInfo.ErrCount));
                        end;

                        writetoLog(logfile,'Finished invoice '+ FormatDateTime('yyyy/mm/dd hh:mm:ss',now)+' => '+fileinfo.fileName+' valid='+ IntToStr(fileinfo.ValidCount)+' invalid='+ IntToStr(fileinfo.FailedCount));
                        writetoLog(logfile,'---------------------------------------------------------------');

                        if fileExists(FileMovedName) then begin
                                DeleteFile(FileMovedName);
                        end;
                        if not RenameFile(FileNewName ,FileMovedName) then begin
                                //ShowMessage(GetLastErrors
                                ShowMEssage(' Error - Cannot rename file : '+FileNewName +' to '+FileMovedName+' error='+IntToStr(GetLastError));
                                next;
                        end;


                end;
            until FindNext(SR) <> 0;
            FindClose(SR);
  end; // if find file

end;



Function TC_ReadDhlInvoicesFRM.ReadFilesInFolder:Integer;
Var
        CurrentDir:String;
        NewDir:String;
        sr : TSearchRec;
        Count:Integer;
        FileFullName:String;
        FileNewName:String;
        FileMoved:String;
        aFile:TextFile;
        wFile:TextFile;
        aString:String;
        //logFile:String;
//        BatchDetails:TBatchDetails;
//        MawbArray:TMawbArray;
        CountMawbs,CountHawbs:Integer;
        FileNm:String;
        FileINfo:TFileINfo;
        Mask:String;
        PrUserData:TParameterRecord;
begin



Timer1.Enabled:=False;

  PrUserData:=  G_GeneralProcs.GetTheSystemParameter(cn,'T01');
  if PRUserData.P_ID='' then begin
    ShowMessage('Need Folder to move files -> go to menu-> system params');
    exit;
  end;

  CurrentDir:=PrUserData.P_String1;
  If Not DirectoryExists(CurrentDir) then begin
//        StartBTN.Color:=clRed;
        StartBTN.Caption:= 'Processing Files - NOT Active';
        abort;
  end;

  NewDir:=PrUserData.P_String2;
  If Not DirectoryExists(NewDir) then begin
        StartBTN.Color:=clRed;
        StartBTN.Caption:= 'Processing Files - NOT Aactive';

        abort;
  end;

  Mask:='*.txt';
  ReadMaskFiles(CurrentDir,newDir,Mask);

          // timer was disabled at the start of this procedure to prevent multiple runs
          //It is reenabled now if button was pressed(global start);
        If GlobalStart then begin
                Timer1.Enabled:=true;
        end;
End;






function TC_ReadDhlInvoicesFRM.IsDuplicate(Const InvoiceNumber:string):boolean;
Var
        SQLString:String;
begin
        SQLString:='select invoice_number from invoice_ias where invoice_number= :InvoiceNumber';
          With MakeSQL do begin
                Close;
                ReadONly:=True;
                SQL.Clear;
                SQl.Add( SQLString);
                ParamByName('InvoiceNumber').value:=INvoiceNumber;
                if not prepared then prepare;
               Open;
               Result:=Not MakeSQL.isEmpty;
                close;
          end;
end;

function TC_ReadDhlInvoicesFRM.IsValidRow(Const bill,house:string):boolean;
Var
        IsValid:Boolean;
begin
        result:= ( (Length(trim(bill))=9)  and  (length( trim(house) )=10) );
end;


Function TC_ReadDhlInvoicesFRM.ReadOneTextFile(Const InFileName,logfile:String):TFileInfo;

var

   TheFileName : String;
   TheLine     : String;
   TheEndLine:String;
   InFile : TextFile;
   MyEol:Boolean;
   CharCount:Integer;
    I,IntChar:integer;
    LinesCount:integer;
    ValidCount:integer;
    RecCount:integer;
    InValidCount:integer;
    TheChar :char;
    BillingInvoice:String;
    Hawb:string;
    InvoiceNumber:string;

    Words:array[0..MAXW] of String;
    inv:integer;
    IsValidRowText:boolean;
    AccountInfo:TAccountInfo;
    DefaultDir:String;
    ErrCount:Integer;



begin


    PrUserData:=G_GeneralProcs.GetTheSystemParameter(cn,'T01');
    DefaultDir:=PrUserData.P_String1;


try
    AssignFile(InFile,InFileName);
    {$I-}
    Reset(InFile);
    {$I+}
    if IOResult <> 0 then
    begin
      	MessageDlg('Can Not Read File'+TheFileName, mtError, [mbOk], 0);
        abort;
    end;


    LinesCount:=0;
    ValidCount:=0;
    InValidCount:=0;
    recCount:=0;
    ErrCount:=0;

    while (not EOF(InFile)) do begin

    //if (Validcount> 2) then break;
          //***************************************************
          //* Read one LINE from file char by char to check for end of line
          //***************************************************
          THeLine:='';
          MyEol:=false;
          CharCount:=0;
           While (not myEol) do begin  //One line until Eol=10 return may be missing
                 Read(Infile,TheChar);
                 if TheChar=#10 then begin
                    MyEoL:=true;
                    break;
                 end else begin
                     TheLine:=TheLine+TheChar;
                 end;
                 Inc(CharCount);
//                 if(ir=100) then showmessage('100');
           end;
           inc(LinesCount);

           If (RecCount) < -1 then begin // =10 TO READ JUST 10
             break;
           end;

           BillingInvoice:=Trim(Copy(TheLine,1,12));
           Hawb:=Trim(Copy(TheLine,61,12));
           inv:=StrToIntDef(BillingInvoice,-1);

           IsValidRowText:=IsValidRow(BillingInvoice,Hawb);


           if isValidRowText then begin
                Inc(RecCount);
                AccountInfo:=FindInvoiceType(BillingInvoice);
                if AccountInfo.AccType='ERR' then begin
                 inc(ErrCount);
                 writeToLog(logfile,'*** ERROR line: '+IntToStr(LinesCount)+'. Invalid account: '+AccountInfo.AccountVal);
                end;
                //showMessage('line '+TheLine);

                words[11]:=AccountInfo.IsValid;
                words[12]:=AccountInfo.AccType;

                words[0]:=Copy(TheLine,1,12) ;  //BILLING ACCOUNT NUMBER
                words[1]:=Copy(TheLine,13,12);  //CASH ACCOUNT NUMBER
                words[2]:=Copy(TheLine,25,31);  //CONSIGNEE

                words[3]:=Copy(TheLine,61,12);  //HAWB
                words[4]:=Copy(TheLine,73,37);  //*TDOC
                words[5]:=Copy(TheLine,110,12); //*mOVEMENT
                words[6]:=Copy(TheLine,122,12); //ARRIVAL DATE
                words[7]:=Copy(TheLine,134,11); //INVOICE NUMBER
                words[8]:=Copy(TheLine,145,14); //INVOICE DATE
                words[9]:=Copy(TheLine,159,3);   //INVOICE_STATUS
                words[10]:=Copy(TheLine,162,19); //AMOUNT

                InvoiceNumber:=Words[7];


                       DeleteDuplicateInvoices(InvoiceNumber);
                        insertRecord(words,LogFile,LinesCount);
                        Inc(ValidCount);


           end else begin
                //showMessage('Inv'+InvoiceNum);
           end;


    end;//while EOF
        //showMessage('lines'+intToStr(LinesCount)+' valid:'+intToStr(ValidCount));
        Result.ValidCount:=ValidCount;
        Result.FailedCount:=InValidCount;
        REsult.fileName:=InFileName;

finally
        Closefile(Infile);
end;

End;


function TC_ReadDhlInvoicesFRM.InsertRecord(Rec:Array of string;LogFile:string;const linenum:integer):boolean;
var
I:integer;
amount:double;
d1:TdateTime;

begin
        with InvoiceIASSQL do begin
                If not Active then  open;
                If not Prepared Then Prepare;
                insert;
                FieldByName('ACCOUNT_BILLING').VALUE:=Trim(rec[0]);
                FieldByName('ACCOUNT_CASH').VALUE:=Trim(rec[1]);
                FieldByName('CONSIGNEE').VALUE:=Trim(rec[2]);

                FieldByName('HAWB').VALUE:=Trim(rec[3]);


                d1:=G_GeneralProcs.ConvertDate(Trim(rec[6]));
                //ShowMessage(rec[6]);
                FieldByName('DATE_ARRIVAL').VALUE:=d1;

                FieldByName('INVOICE_NUMBER').VALUE:=Trim(rec[7]);

                d1:=G_GeneralProcs.ConvertDate(Trim(rec[8]));
                FieldByName('DATE_INVOICED').VALUE:=d1;


                FieldByName('INVOICE_STATUS').VALUE:=Trim(rec[9]);


                amount:= G_GeneralProcs.MyFormatDotFloat(Trim(rec[10]));
                FieldByName('INVOICE_AMOUNT').VALUE:= amount;

                FieldByName('is_collectable').VALUE:=TRIM(rec[11]);
                FieldByName('INVOICE_TYPE').VALUE:=TRIM(rec[12]);
                try
                        post;
                except

                        InvoiceIASSQL.cancel;
                        writeToLog(LogFile,'insert error w[0]:'+rec[0]+' line:'+IntToStr(Linenum));
                        //ShowMessage('try eror');

                end;

        end;
end;


procedure TC_ReadDhlInvoicesFRM.NewMemberBTNClick(Sender: TObject);
var
   CDefaultDirectory,CDefaultFile:String;
   FileNameFull:String;
   FileNamePart:String;
   FileInfo:Tfileinfo;
   CurrentDir:String;
   CurrentFile:string;
   NewDIr:string;
//   CurrentDirData :TParameterRecord;
   DirData :TParameterRecord;
   Mask:String;
begin


  DirData:=G_GeneralProcs.GetTheSystemParameter(cn,'T01');
  NewDir:= DirData.P_String2;

  If Not DirectoryExists(NewDir) then begin
        ShowMessage('Need to specify folders. Go to Menu->system params...');
        exit;
       // abort; // not need to abort use current dir
  end;

with OpenDialog1 do begin
        OpenDialog1.Options := [ofFileMustExist, ofHideReadOnly, ofNoChangeDir ];

        OpenDialog1.InitialDir:=DirData.P_String1;
        if Execute then begin
                FileNameFull:= Filename;
         end else begin
             ShowMessage('No File was Selected');
             abort;
         end;
end;{with}

CurrentDir:=ExtractFileDir(FIleNameFull);
CurrentFIle:=ExtractFileName(FIleNameFull);
Mask:=CurrentFile;

ReadMaskFiles(CurrentDir,newDir,Mask);
ShowMessage('Finish processing File:'+FileNameFull);


CurrentDir:=ExtractFileDir(FIleNameFull);
CurrentFIle:=ExtractFileName(FIleNameFull);
Mask:=CurrentFile;

ReadMaskFiles(CurrentDir,newDir,Mask);


ShowMessage('Finished Processing');

end;


function TC_ReadDhlInvoicesFRM.FindInvoiceType(Const BillingInv:string):TAccountInfo;
Var
        Len:integer;
        SQLString:String;
        AccountCategory:string;
        IsCollected:string;
        IsFound:BOOLEAN;
        I:integer;
        ac:string;
begin

{
DUTYCYDTU // Normal cash customer
DUTYCYDTP //DUTYCYDTP-DDP CUSTOM DUTY
DUTYCYWOF // write off
470004263 //duty prepaymen
961195524 //delivery to brokers
47xxxxxxx //account
}


// if you can't find the type then make the record valid and it will show as not collected!

  Result.AccountVal:=trim(BillingInv);
  Result.IsValid:= 'Y';
  Result.AccType:='ERR';

  Len  :=Length( Trim(BillingInv) );
  if (len<>9) then begin
      exit;
  end;

  SQLString:='select * from account_category_item aci '
                +' join account_category acc on aci.fk_account_category=acc.serial_number '
                +' where aci.account_number = :AccountNumber';

        MakeSQL.Close;
        MakeSQL.ReadOnly:=true;
        MakeSQL.SQL.Clear;
        MakeSQL.SQl.Add( SQLString);
        if not MakeSQL.prepared then MakeSQl.prepare;

      for i:= len downto 2 do begin
          ac:=Copy(BillingInv,1,i);
        With MakeSQL do begin
          close;
          ParamByName('AccountNumber').value:=ac;
          Open;
          if (not isEmpty) then begin
            Result.IsValid:= Trim(FieldbyName('iS_COLLECTED').AsString);
            Result.AccType:=Trim(FieldbyName('ACCOUNT_TYPE').AsString);
            exit;
          end;
        end;
      end;

     Result.IsValid:= 'Y';
     Result.AccType:='ERR';
End;

function TC_ReadDhlInvoicesFRM.DeleteDuplicateInvoices(InvoiceNumber:String):Boolean;
Var
        SQLString:String;
Begin

        with doSQL do begin
                SQLString:='Delete  from invoice_ias where invoice_number= :InvoiceNumber';
                doSQL.SQL.Clear;
                doSQL.SQL.Add(SQLString);
                doSQL.ParamByName('INvoiceNumber').Value:=INvoiceNumber;
                doSQL.Execute;
        end;

end;


end.
