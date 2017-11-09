object M_DeleteMawbFRM: TM_DeleteMawbFRM
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'M_DeleteMawbFRM'
  ClientHeight = 382
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzDialogButtons1: TRzDialogButtons
    Left = 0
    Top = 346
    Width = 805
    HotTrack = True
    TabOrder = 0
    OnClick = RzDialogButtons1Click
    ExplicitWidth = 679
  end
  object Panel1: TRzPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 53
    Align = alTop
    BorderOuter = fsGroove
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 679
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 164
      Height = 32
      Align = alClient
      Alignment = taCenter
      Caption = 'Delete Mawb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 53
    Width = 805
    Height = 293
    Align = alClient
    BorderOuter = fsNone
    TabOrder = 2
    ExplicitWidth = 679
    object Label2: TLabel
      Left = 200
      Top = 68
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object Label3: TLabel
      Left = 327
      Top = 68
      Width = 26
      Height = 13
      Caption = 'Serial'
    end
    object mawbBTN: TButton
      Left = 29
      Top = 85
      Width = 133
      Height = 25
      Caption = 'Delete all hawbs on Mawb'
      TabOrder = 0
      OnClick = mawbBTNClick
    end
    object ValueStrFLD: TRzEdit
      Left = 200
      Top = 87
      Width = 121
      Height = 21
      Text = ''
      TabOrder = 2
    end
    object ValueIntFLD: TwwDBEdit
      Left = 327
      Top = 87
      Width = 65
      Height = 21
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object ClearMawbsBTN: TRzButton
      Left = 5
      Top = 173
      Width = 172
      Caption = 'DELETE ALL MAWBS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = ClearMawbsBTNClick
    end
    object DelFLD: TRzEdit
      Left = 200
      Top = 173
      Width = 121
      Height = 21
      Text = ''
      TabOrder = 4
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 440
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Customer'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
    object CustFLD: TwwDBEdit
      Left = 528
      Top = 186
      Width = 121
      Height = 21
      TabOrder = 6
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
  end
end
