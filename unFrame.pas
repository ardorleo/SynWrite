{
SynWrite frame which contains actual editor.
Created as a child of TfmMain form.
}
unit unFrame;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, ComCtrls, ImgList, ActiveX,
  Menus, Math,
  ecSyntMemo, ecSyntAnal, ecActns, ecExtHighlight, ecOleDrag, ecEmbObj,
  ATFileNotificationSimple,
  ATSyntMemo, //this replaces TSyntaxMemo class
  unGlobData,
  TB2Item,
  SpTBXItem,
  SpTBXDkPanels;

const
  cMaxBk = 1*1000*1000; //max bookmarks count
  cBandFolding = 3; //gutter band index for folding
  cBandBoommarks = 1; //gutter band index for bookmarks

type
  TEditorEvent = procedure(Sender: TFrame) of object;
  TGetTabCaptionEvent = procedure(Sender: TFrame; var Str: Widestring) of object;

type
  TEditorFrame = class(TFrame)
    HyperlinkHighlighter: THyperlinkHighlighter;
    TextSourceObj: TecEmbeddedObjects;
    PopupSplitEditors: TSpTBXPopupMenu;
    TBXItemSplitHorz: TSpTbxItem;
    TBXItemSplit70_30: TSpTbxItem;
    TBXItemSplit60_40: TSpTbxItem;
    TBXItemSplit50_50: TSpTbxItem;
    TBXItemSplit40_60: TSpTbxItem;
    TBXItemSplit30_70: TSpTbxItem;
    TBXItemSplit20_80: TSpTbxItem;
    TBXItemSplit80_20: TSpTbxItem;
    TBXSeparatorItem1: TSpTbxSeparatorItem;
    TBXItemSplitCaption: TSpTbxItem;
    PanelMap: TPaintBox;
    Panel1: TPanel;
    EditorMaster: TSyntaxMemo;
    SplitterEds: TSpTBXSplitter;
    EditorSlave: TSyntaxMemo;
    TimerMap: TTimer;
    TBXSeparatorItem2: TSpTbxSeparatorItem;
    TBXItemSplitCancel: TSpTbxItem;
    TBXItemSplitVert: TSpTBXItem;
    procedure EditorMasterEnter(Sender: TObject);
    procedure EditorMasterSetBookmark(Snder: TObject; Bookmark: TBookmark;
      var Accept: Boolean);
    procedure FrameResize(Sender: TObject);
    procedure EditorMasterChange(Sender: TObject);
    procedure EditorMasterCaretPosChanged(Sender: TObject);
    procedure EditorMasterGetGutterImage(Sender: TObject;
      const Line: Integer; List: TList);
    procedure SyncEditClick(Sender: TObject; Line: integer; Shift: TShiftState);
    procedure EditorMasterExecuteCommand(Sender: TObject; Command: Integer;
      Data: Pointer; var Handled: Boolean);
    procedure EditorMasterOleDragEnter(Sender: TObject;
      const DataObject: IDataObject; KeyState: Integer; Pt: TPoint;
      var Effect: Integer; var Handled: Boolean);
    procedure EditorMasterOleDragOver(Sender: TObject; const DataObject: IDataObject; KeyState: Integer;
      Pt: TPoint; var Effect: Integer; var Handled: Boolean);
    procedure EditorMasterOleDrop(Sender: TObject;
      const DataObject: IDataObject; KeyState: Integer; Pt: TPoint;
      var Effect: Integer; var Handled: Boolean);
    procedure EditorMasterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditorScroll(Sender: TObject);
    procedure EditorMasterGutterClick(Sender: TObject; Line: Integer;
      Buton: TMouseButton; Shift: TShiftState; XY: TPoint);
    procedure EditorMasterGetTokenHint(Sender: TObject;
      TokenIndex: Integer; var HintText: String);
    procedure EditorMasterSelectionChanged(Sender: TObject);
    procedure EditorMasterZoom(Sender: TObject);
    procedure SplitterEdsMoved(Sender: TObject);
    procedure TBXItemSplitHorzClick(Sender: TObject);
    procedure PopupSplitEditorsPopup(Sender: TObject);
    procedure TBXItemSplit20_80Click(Sender: TObject);
    procedure TBXItemSplit30_70Click(Sender: TObject);
    procedure TBXItemSplit40_60Click(Sender: TObject);
    procedure TBXItemSplit50_50Click(Sender: TObject);
    procedure TBXItemSplit60_40Click(Sender: TObject);
    procedure TBXItemSplit70_30Click(Sender: TObject);
    procedure TBXItemSplit80_20Click(Sender: TObject);
    procedure PanelMapMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TimerMapTimer(Sender: TObject);
    procedure PanelMapPaint(Sender: TObject);
    procedure PanelMapMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EditorMasterContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure EditorMasterFinishAnalysis(Sender: TObject);
    procedure EditorSlaveFinishAnalysis(Sender: TObject);
    procedure TBXItemSplitCancelClick(Sender: TObject);
    procedure SplitterDblClick(Sender: TObject);
    procedure EditorMasterCheckChar(Sender: TObject; C: Word;
      var IsWord: Boolean);
    procedure EditorMasterAfterLineDraw(Sender: TObject; Rect: TRect;
      Line: Integer);
    procedure TBXItemSplitVertClick(Sender: TObject);
    procedure EditorMasterModifiedChanged(Sender: TObject);
    procedure EditorMasterMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EditorMasterResize(Sender: TObject);
    procedure EditorMasterGetLineNumberStr(Sender: TObject; Line: Integer;
      var NumberStr: String);
    procedure EditorMasterClick(Sender: TObject);
    procedure EditorMasterDblClick(Sender: TObject);
  private
    FTabCaption: Widestring;
    FTabColor: TColor;
    FTabId: Integer;
    FBitmapMap: TBitmap;
    FMouseClickOnNumbers: boolean;
    FAlertEnabled: boolean;
    FPyChangeTick: DWORD;
    FIsMasterFocused: boolean;
    FTreeSorted: boolean;
    FNotifAllYes,
    FNotifAllNo: boolean;
    FNotif: TATFileNotificationSimple;
    FCollapsedString1: Widestring;
    FCollapsedString2: Widestring;
    FCollapsedRestored1: boolean;
    FCollapsedRestored2: boolean;
    FFtpInfoPtr: Pointer;
    FFtpInfoSize: Integer;
    FLineEndsChg,
    FNoBOM: boolean;
    FFileName: WideString;
    FOnTitleChanged: TEditorEvent;
    FOnSaveState: TNotifyEvent;
    FModifiedPrev: Boolean;
    FSplitHorz: boolean;
    FSplitPos: Double;
    FNotInRecents: boolean;
    FLockMapUpdate: boolean;
    FSavingBusy: boolean;

    procedure EditorShowHint(Sender: TObject; const HintStr: string; var HintObj: THintWindow);
    procedure SetSplitPos(const F: Double);
    procedure SetSplitHorz(Value: boolean);
    function GetModified: boolean;
    procedure SetModified(Value: boolean);
    procedure FileReload(Sender: TObject);
    function GetShowMap: boolean;
    procedure SetShowMap(V: boolean);
    function GetMapLine(X, Y: Integer): Integer;
    function FocusedEditor: TSyntaxMemo;
    procedure UpdateMap(Ed: TSyntaxMemo);
    function GetCaretsEnabled: boolean;
    function GetCaretsGutterBand: integer;
    function GetCaretsIndicator: integer;
    procedure SetCaretsEnabled(V: boolean);
    procedure SetCaretsGutterBand(V: integer);
    procedure SetCaretsIndicator(V: integer);
    function GetCaretsGutterColor: TColor;
    procedure SetCaretsGutterColor(V: TColor);
    procedure EditorCtrlClick(Sender: TObject; const Pnt: TPoint; var Handled: boolean);
    function GetEncoding: integer;
    procedure SetEncoding(AValue: Integer);

  protected
  public
    //ftp--------------
    property FtpInfoPtr: Pointer read FFtpInfoPtr;
    property FtpInfoSize: Integer read FFtpInfoSize;
    procedure SetFtpInfo(AInfoPtr: Pointer; AInfoSize: Integer);
    procedure FreeFtpInfo;
    function IsFtp: boolean;
    function IsUrlAtPosition(APos: Integer): boolean;
    //---------------------

    procedure DoChangeTick;
    function CaretsCount: integer;
    procedure CaretsProps(var NTop, NBottom: integer);
    function SUrlAt(const Pnt: TPoint): Widestring;
    property CaretsEnabled: boolean read GetCaretsEnabled write SetCaretsEnabled;
    property CaretsGutterBand: integer read GetCaretsGutterBand write SetCaretsGutterBand;
    property CaretsGutterColor: TColor read GetCaretsGutterColor write SetCaretsGutterColor;
    property CaretsIndicator: integer read GetCaretsIndicator write SetCaretsIndicator;
    property Encoding: Integer read GetEncoding write SetEncoding;

    property IsAlertEnabled: boolean read FAlertEnabled write FAlertEnabled;
    property IsMasterFocused: boolean read FIsMasterFocused;
    property IsTreeSorted: boolean read FTreeSorted write FTreeSorted;
    function CurrentLexerObj: TSyntAnalyzer;
    function CurrentLexerName: string;
    property CollapsedString1: Widestring read FCollapsedString1 write FCollapsedString1;
    property CollapsedString2: Widestring read FCollapsedString2 write FCollapsedString2;
    procedure DoSyncMicromap;
    property ShowMap: boolean read GetShowMap write SetShowMap;
    property TabColor: TColor read FTabColor write FTabColor;
    property TabId: Integer read FTabId;
    procedure DoBkToggle(Ed: TCustomSyntaxMemo; LineNum: integer);
    procedure DoTitleChanged;
    procedure DoStartNotif;
    procedure DoStopNotif;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function SaveFile(AFileName: Widestring): Boolean;
    procedure LoadFile(const AFileName: Widestring);
    function IsTheFile(const AFileName: Widestring): Boolean;
    function IsSplitted: boolean;
    procedure ToggleSplitted;
    procedure UpdateGutterWidth(Sender: TObject);
    procedure SetTabCaption(const Str: Widestring);
    function GetTabCaptionEx: Widestring;

    property NotInRecents: boolean read FNotInRecents write FNotInRecents;
    property SplitPos: Double read FSplitPos write SetSplitPos;
    property SplitHorz: boolean read FSplitHorz write SetSplitHorz;
    property LineEndsChg: boolean read FLineEndsChg write FLineEndsChg;
    property SkipBom: boolean read FNoBOM write FNoBOM;
    property FileName: Widestring read FFileName write FFileName;
    property Modified: boolean read GetModified write SetModified;
    property LockMapUpdate: boolean read FLockMapUpdate write FLockMapUpdate;
    property TabCaption: Widestring read FTabCaption write SetTabCaption;
    property TabCaptionEx: Widestring read GetTabCaptionEx;
    property OnTitleChanged: TEditorEvent read FOnTitleChanged write FOnTitleChanged;
    property OnSaveState: TNotifyEvent read FOnSaveState write FOnSaveState;
  end;

const
  cColorPrefix = '{color}';

implementation

uses
  ecStrUtils, ecCmdConst, ecMemoStrings,
  Types,
  StrUtils,
  unMain,
  unProc,
  unProcEditor,
  ATxFProc, ATxSProc, ATxImgHint,
  ATTabs, ATGroups,
  DKLang,

  TntComCtrls,
  TntSysUtils,
  Dialogs, TntDialogs;

{$R *.dfm}

var
  FLastTabId: integer = 0;
  
procedure TEditorFrame.FrameResize(Sender: TObject);
begin
  SplitPos:= SplitPos;
  DoSyncMicromap;
end;

const
  cManyLines = 5000;

function TEditorFrame.FocusedEditor: TSyntaxMemo;
begin
  if EditorSlave.Focused then
    Result:= EditorSlave
  else
    Result:= EditorMaster;
end;

procedure TEditorFrame.DoSyncMicromap;
begin
  //prevent "Control EditorFrame has no parent window" for Wlx
  if Parent=nil then
    Exit;

  //prevent flickering of map when "Insert text" dialog active
  if FLockMapUpdate then
    Exit;

  if EditorMaster.TextSource.Lines.Count<=cManyLines then
    UpdateMap(FocusedEditor)
  else
    TimerMap.Enabled:= True;
end;

// Initializing events
constructor TEditorFrame.Create(AOwner: TComponent);
begin
  inherited;

  with EditorMaster do
  begin
    BevelInner:= bvLowered;
    BevelOuter:= bvNone;
    BevelKind:= bkSoft;
  end;
  with EditorSlave do
  begin
    BevelInner:= bvLowered;
    BevelOuter:= bvNone;
    BevelKind:= bkSoft;
  end;

  FBitmapMap:= TBitmap.Create;
  FBitmapMap.Width:= 20;
  FBitmapMap.Height:= 300;

  FNotif:= TATFileNotificationSimple.Create(Self);
  FNotif.Timer.Enabled:= False;
  FNotif.Timer.Interval:= 1000;
  FNotif.OnChanged:= FileReload;

  FAlertEnabled:= True;
  FPyChangeTick:= 0;
  FFtpInfoPtr:= nil;
  FFtpInfoSize:= 0;
  FTabColor:= clNone;
  Inc(FLastTabId);
  FTabId:= FLastTabId;

  FLineEndsChg:= False;
  FSplitHorz:= True;
  FSplitPos:= 0;
  FNotInRecents:= False;
  FLockMapUpdate:= False;
  FSavingBusy:= False;
  FIsMasterFocused:= True;

  FCollapsedString1:= '';
  FCollapsedString2:= '';
  FCollapsedRestored1:= False;
  FCollapsedRestored2:= False;

  EditorMaster.TextSource.Lines.SetObjectsStore;
  EditorMaster.PopupMenu:= TfmMain(Owner).PopupEditor;
  EditorSlave.PopupMenu:= TfmMain(Owner).PopupEditor;

  if TfmMain(Owner).opShowBookmarkColumn then
  begin
    EditorMaster.Gutter.Images:= TfmMain(Owner).ImgListGutter;
    EditorSlave.Gutter.Images:= TfmMain(Owner).ImgListGutter;
  end;  

  EditorMaster.HintProps.DelayBefore:= TfmMain(Owner).opAcpHintDelay;
  EditorSlave.HintProps.DelayBefore:= TfmMain(Owner).opAcpHintDelay;

  //special events
  EditorMaster.OnShowHint:= EditorShowHint;
  EditorSlave.OnShowHint:= EditorShowHint;
  EditorMaster.OnCtrlClick:= EditorCtrlClick;
  EditorSlave.OnCtrlClick:= EditorCtrlClick;
end;

procedure TEditorFrame.EditorMasterEnter(Sender: TObject);
var
  Ed: TSyntaxMemo;
begin
  Ed:= Sender as TSyntaxMemo;

  //don't do event if clicked focused editor
  if TfmMain(Owner).CurrentEditor=Ed then Exit;
  TfmMain(Owner).CurrentEditor:= Ed;

  TfmMain(Owner).Groups.PagesCurrent:= TfmMain(Owner).FrameOfEditor(Ed).Parent as TATPages;
  TfmMain(Owner).UpdateOnFrameChanged;
  TfmMain(Owner).UpdateActiveTabColors;

  TfmMain(Owner).DoPyEvent(Ed, cSynEventOnFocus, []);
  FIsMasterFocused:= Ed=EditorMaster;
end;

procedure TEditorFrame.EditorMasterSetBookmark(Snder: TObject;
  Bookmark: TBookmark; var Accept: Boolean);
begin
  with Bookmark do
  begin
    Band:= cBandBoommarks;
    if TfmMain(Owner).opShowBookmarkColumn then
      ImageList:= TfmMain(Owner).ImgListGutter;

    if (BmIndex >= 0) and (BmIndex < 10) then
    begin
      ImageIndex:= BmIndex;
      Hint:= '\s5\' + Format(DKLangConstW('Bk'), [BmIndex]);
    end
    else
    begin
      ImageIndex:= 12;
      Hint:= '\s5\' + DKLangConstW('BkUn');
    end;
    Cursor:= crHandPoint;
    BgColor:= TfmMain(Self.Owner).opColorBkmk;
  end;
end;

{$warnings off}
function TEditorFrame.SaveFile(AFileName: Widestring): Boolean;
  //
  procedure ErrorWritable;
  begin
    MsgError(WideFormat(DKLangConstW('MAtt'), [AFileName]), Handle);
  end;
  procedure ErrorCantSave;
  begin
    MsgError(WideFormat(DKLangConstW('zMCantSave'), [AFileName]), Handle);
  end;
  function MsgConfirmOverwrite: boolean;
  begin
    Result:= MsgConfirm(WideFormat(DKLangConstW('MOver'), [WideExtractFileName(AFileName)]), Handle);
  end;
  //
var
  attr: integer;
  ext: string;
const
  fa = (file_attribute_readonly or file_attribute_hidden or file_attribute_system);
begin
  Result:= false;
  if FSavingBusy then Exit;

  //handle ReadOnly/Hidden/System attribs
  attr:= -1;
  if IsFileExist(AFileName) then
  begin
    attr:= GetFileAttributesW(PWChar(AFileName));
    if (attr and fa) <> 0 then begin
      if TfmMain(Owner).opAskOverwrite and not MsgConfirmOverwrite then
        Exit;
      if not SetFileAttributesW(PWChar(AFileName), attr and not fa) then
        begin ErrorWritable; Exit end;
    end
    else
      attr:= -1;
  end;

  //check that file permission enabled
  if IsFileExist(AFileName) and not IsFileWritable(AFileName) then
    begin ErrorWritable; Exit end;

  FSavingBusy:= True;
  EditorMaster.TextSource.Lines.SkipSignature:= SkipBom;
  ext:= Copy(WideExtractFileExt(AFileName), 2, MaxInt);

  repeat
    try
      EditorMaster.SaveToFile(AFileName);
      Modified:= False;
    except
      ErrorCantSave;
      FSavingBusy:= False;
      Exit;
    end;
    if not Modified then Break;
    if not WidePromptForFileName(AFileName, '', ext, '', '', True) then Break;
  until False;

  FSavingBusy:= False;
  EditorMaster.TextSource.Lines.SkipSignature:= False;

  FFileName:= AFileName;
  TabCaption:= WideExtractFileName(FFileName);

  //restore ReadOnly/Hidden/System attribs
  if (attr <> -1) then
    SetFileAttributesW(PWChar(FileName), attr);

  Result:= true;
end;
{$warnings on}

procedure TEditorFrame.LoadFile(const AFileName: Widestring);
begin
  //before loading text
  SkipBom:= False;
  EditorMaster.TextSource.Lines.SkipSignature:= False;

  FCollapsedRestored1:= False;
  FCollapsedRestored2:= False;

  //load text
  if (AFileName = '') then
    EditorMaster.TextSource.Lines.Clear
  else
  try
    Screen.Cursor:= crHourGlass;
    if not TfmMain(Owner).LoadFrameState(Self, AFileName) then
      EditorMaster.TextSource.Lines.LoadFromFile(AFileName);
  finally
    Screen.Cursor:= crDefault;
  end;

  //after loading
  FFileName:= AFileName;
  Modified:= False;
end;


function TEditorFrame.GetModified: boolean;
begin
  Result:= EditorMaster.Modified;
end;

procedure TEditorFrame.SetModified(Value: boolean);
begin
  EditorMaster.Modified:= Value;
  EditorSlave.Modified:= Value;
  FModifiedPrev:= Value;
end;

procedure TEditorFrame.DoTitleChanged;
var
  D: TATTabData;
  i: Integer;
begin
  FTreeSorted:= SFileExtensionMatch(FFileName, TfmMain(Owner).opTreeSorted);

  if Parent<>nil then
    if Parent is TATPages then
      with (Parent as TATPages) do
      begin
        for i:= 0 to Tabs.TabCount-1 do
        begin
          D:= Tabs.GetTabData(i);
          if (D<>nil) and (D.TabObject=Self) then
          begin
            D.TabCaption:= TabCaptionEx;
            D.TabModified:= Modified;
            Tabs.Invalidate;
          end;
        end;
      end;

  if Assigned(FOnTitleChanged) then
    FOnTitleChanged(Self);
end;

//is filename already opened?
function TEditorFrame.IsTheFile(const AFileName: Widestring): Boolean;
begin
  Result:= (FFileName <> '') and
    (WideUpperCase(FFileName) = WideUpperCase(AFileName));
end;

procedure TEditorFrame.EditorMasterChange(Sender: TObject);
begin
  UpdateGutterWidth(Sender);
  TfmMain(Owner).UpdateStatusBar;
  TfmMain(Owner).SynChange(Sender);
  TfmMain(Owner).DoPyEvent(Sender as TSyntaxMemo, cSynEventOnChange, []);
  DoSyncMicromap;

  FPyChangeTick:= GetTickCount;
end;

procedure TEditorFrame.EditorMasterCaretPosChanged(Sender: TObject);
begin
  TfmMain(Owner).SynCaretPosChanged(Self);
  TfmMain(Owner).DoPyEvent(Sender as TSyntaxMemo, cSynEventOnCaretMove, []);
end;

procedure TEditorFrame.EditorMasterGetGutterImage(Sender: TObject;
  const Line: Integer; List: TList);
var
  Memo: TSyntaxMemo;
  gi: TGutterObject;
begin
  //SyncEdit icon enabled?
  if not TfmMain(Owner).opSyncEditIcon then Exit;

  Memo:= Sender as TSyntaxMemo;
  if (Memo.SelLength > 0) and
     (Line = Memo.StrPosToCaretPos(Memo.SelStart + Memo.SelLength).Y) then
  begin
    gi:= TGutterObject.Create(nil);
    gi.Band:= cBandBoommarks;
    gi.OnClick:= SyncEditClick;
    gi.ImageIndex:= 10;
    gi.Hint:= DKLangConstW('Sync');
    List.Add(gi);
    Exit;
  end;
  if Memo.SyncEditing.RangeEndAtLine(Line) <> -1 then
  begin
    gi:= TGutterObject.Create(nil);
    gi.Band:= cBandBoommarks;
    gi.ImageIndex:= 11;
    gi.Hint:= DKLangConstW('SynR');
    gi.OnClick:= SyncEditClick;
    List.Add(gi);
    Exit;
  end;
end;

procedure TEditorFrame.SyncEditClick(Sender: TObject; Line: integer;
  Shift: TShiftState);
var
  idx: integer;
  memo: TSyntaxMemo;
begin
  Memo:= FocusedEditor;

  if memo.SelLength > 0 then
    memo.SyncEditing.AddCurSelection
  else
  begin
    idx:= memo.SyncEditing.RangeEndAtLine(Line);
    if idx <> -1 then
      memo.SyncEditing.Delete(idx);
  end;
end;

procedure TEditorFrame.EditorMasterExecuteCommand(Sender: TObject;
  Command: Integer; Data: Pointer; var Handled: Boolean);
begin
  TfmMain(Owner).SynExecuteCommand(Sender, Command, Data, Handled);
end;

//OLE color assignment
var
  CF_DRAGCOLOR: Word = 0;
const
  CFSTR_DRAGCOLOR = 'Datras Drag Color';

procedure TEditorFrame.EditorMasterOleDragEnter(Sender: TObject;
  const DataObject: IDataObject; KeyState: Integer; Pt: TPoint;
  var Effect: Integer; var Handled: Boolean);
begin
  Handled:= GetFormatInfo(DataObject, CF_DRAGCOLOR);
end;

procedure TEditorFrame.EditorMasterOleDragOver(Sender: TObject; const DataObject: IDataObject;
  KeyState: Integer; Pt: TPoint; var Effect: Integer;
  var Handled: Boolean);
begin
  Handled:= GetFormatInfo(DataObject, CF_DRAGCOLOR);
end;

procedure TEditorFrame.EditorMasterOleDrop(Sender: TObject;
  const DataObject: IDataObject; KeyState: Integer; Pt: TPoint;
  var Effect: Integer; var Handled: Boolean);
var FormatInfo: TFormatEtc;
    Fg: Boolean;
    C: TColor;
    Medium: TStgMedium;
    Idx, W: integer;
    Data: Pointer;
begin
  with Sender as TSyntaxMemo do
   begin
     Handled:= GetFormatInfo(DataObject, CF_DRAGCOLOR, FormatInfo);
     if Handled then
       begin
         Fg:= (KeyState and MK_CONTROL) <> 0;
         Pt:= ScreenToClient(Pt);
         if DataObject.GetData(FormatInfo, Medium) = S_OK then
         begin
           Data:= GlobalLock(Medium.hGlobal);
           if Data <> nil then
           try
             Move(Data^, C, SizeOf(C));
           finally
             GlobalUnlock(Medium.hGlobal);
           end;
           ReleaseStgMedium(Medium);
         end;
         if Gutter.Visible and (Pt.X < Gutter.Width) then
           begin // Gutter
             if Fg then
               LineNumbers.Font.Color:= C
             else
              begin
               W:= 0;
               for Idx:= 0 to Gutter.Bands.Count - 1 do
                 begin
                   if (Pt.X >= W) and (Pt.X < W + Gutter.Bands[Idx].Width) then
                     begin
                       if Gutter.Bands[Idx].Color = clNone then Break
                        else Gutter.Bands[Idx].Color:= C;
                       Exit;
                     end;
                   Inc(W, Gutter.Bands[Idx].Width);
                 end;
               Gutter.Color:= C;
              end;
           end else
         if ShowRightMargin and (abs(Pt.X - RightMargin * DefTextExt.cx) < 2) then
           begin
             RightMarginColor:= C;
           end else
           begin
             Pt:= MouseToCaret(Pt.X, Pt.Y);
             if (SyntObj = nil) or
                (Pt.Y < 0) or (Pt.Y >= Lines.Count) or
                (Pt.X >= Lines.LineLength(Pt.Y)) then
               begin // Default editor style
                 if Fg then
                   Font.Color:= C
                 else
                   Color:= C;
               end else
               begin
                 Idx:= SyntObj.TokenAtPos(CaretPosToStrPos(Pt));
                 if (Idx <> -1) and (SyntObj.Tags[Idx].Rule <> nil) and
                    (SyntObj.Tags[Idx].Rule.Style <> nil) then
                   begin
                     if Fg then
                       SyntObj.Tags[Idx].Rule.Style.Font.Color:= C
                     else
                       SyntObj.Tags[Idx].Rule.Style.BgColor:= C;
                   end;
               end;
           end;
       end;
   end;
end;

procedure TEditorFrame.EditorMasterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  TfmMain(Owner).SynKeyDown(Sender, Key, Shift);
end;

procedure TEditorFrame.EditorScroll(Sender: TObject);
begin
  TfmMain(Owner).SynScroll(Sender);
  DoSyncMicromap;
end;

procedure TEditorFrame.EditorMasterGutterClick(Sender: TObject;
  Line: Integer; Buton: TMouseButton; Shift: TShiftState; XY: TPoint);
var
  Ed: TSyntaxMemo;
  nColX1, nColX2: Integer;
  IsBkmk: boolean;
begin
  Ed:= Sender as TSyntaxMemo;

  nColX1:= Ed.Gutter.Bands[0].Width;
  nColX2:= nColX1 + Ed.Gutter.Bands[1].Width;
  IsBkmk:= (XY.X >= nColX1) and (XY.X < nColX2);

  //toggle unnumbered bookmark when clicked on its gutter column
  if IsBkmk and (Buton=mbLeft) and (Shift=[ssLeft]) then
  begin
    DoBkToggle(Ed, Line);
    TfmMain(Owner).UpdateStatusBar;
    TfmMain(Owner).UpdateListBookmarks;
  end;
end;

procedure TEditorFrame.DoBkToggle(Ed: TCustomSyntaxMemo; LineNum: integer);
var
  i, j, nBk: integer;
begin
  //bookmark exists at this line? then delete
  j:= Ed.BookmarkForLine(LineNum);
  if j>=0 then
  begin
    for i:= 0 to Ed.BookmarkObj.Count-1 do
      if Assigned(Ed.BookmarkObj[i]) and (Ed.BookmarkObj[i].BmIndex=j) then
      begin
        if i<EditorSlave.BookmarkObj.Count then
        begin
          EditorSlave.BookmarkObj.Delete(i);
          EditorSlave.Invalidate;
        end;
        if i<EditorMaster.BookmarkObj.Count then
        begin
          EditorMaster.BookmarkObj.Delete(i);
          EditorMaster.Invalidate;
        end;
        Break;
      end;
    Exit;
  end;

  //find first non-busy bookmark
  nBk:= -1;
  for i:= 10 to cMaxBk do
    if Ed.Bookmarks[i]<0 then
      begin nBk:= i; Break; end;

  if nBk<0 then
    begin MsgBeep; Exit; end;

  //remember column
  if LineNum = Ed.CaretPos.Y then
    i:= Ed.CaretPos.X
  else
    i:= 0;

  j:= Ed.CaretPosToStrPos(Point(i, LineNum));
  EditorSlave.Bookmarks[nBk]:= j;
  EditorMaster.Bookmarks[nBk]:= j;
end;

procedure TEditorFrame.EditorMasterGetTokenHint(Sender: TObject;
  TokenIndex: Integer; var HintText: String);
begin
  TfmMain(Owner).SynGetTokenHint(Sender,TokenIndex,HintText);
end;

procedure TEditorFrame.DoStartNotif;
begin
  FNotif.FileName:= FileName;
  FNotif.Timer.Enabled:= (FileName <> '') and (TfmMain(Owner).opReloadMode <> cReloadNone);
end;

procedure TEditorFrame.DoStopNotif;
begin
  FNotif.Timer.Enabled:= False;
  FNotif.FileName:= '';
end;

destructor TEditorFrame.Destroy;
begin
  FreeFtpInfo;

  FNotif.Timer.Enabled:= False;
  FreeAndNil(FNotif);
  FreeAndNil(FBitmapMap);

  inherited;
end;

procedure TEditorFrame.FileReload(Sender: TObject);
  //msg about file deleted- not needed
  procedure Msg;
  begin
    //MsgWarn(WideFormat(DKLangConstW('MRelN'), [WideExtractFileName(FileName)]));
  end;
var
  Ln1, Ln2: integer;
  Cfm, WasEnd: boolean;
  Pressed: TSynTaskDialogResult;
  Ed, Ed2: TSyntaxMemo;
  P1, P2: TPoint;
begin
  DoStopNotif;
  if not IsFileExist(FileName) then
  begin
    Msg;
    //mark deleted file as modified
    if TfmMain(Owner).opMarkDeletedAsModified then
      Modified:= True;
    EditorMasterChange(EditorMaster);
    Exit
  end;

  //special confirm on modified
  if Modified then
  begin
    Cfm:= MsgConfirm(WideFormat(DKLangConstW('MRelMod'), [WideExtractFileName(FileName)]), Handle);
  end
  else
  //normal confirm
  begin
    if FNotifAllYes then
      Cfm:= True
    else
    if FNotifAllNo then
      Cfm:= False
    else
    begin
      Cfm:= (TfmMain(Owner).opReloadMode = cReloadAuto);
      if not Cfm then
      begin
        Pressed:= MsgConfirmOkCancelForAll(
          DKLangConstW('MRelTitle'),
          WideFormat(DKLangConstW('MRelInf'), [WideExtractFileName(FileName)]),
          DKLangConstW('MRelInfAll'),
          true,
          Handle
          );
        FNotifAllYes:= Pressed = taskResYesAll;
        FNotifAllNo:= Pressed = taskResNoAll;
        Cfm:= Pressed in [taskResYes, taskResYesAll];
      end;
    end;
  end;

  //if confirmed - reload
  if Cfm then
  begin
    if not IsFileExist(FileName) then
      begin Msg; Exit end; //file could be deleted while msg shown
    if Assigned(FOnSaveState) then
      FOnSaveState(Self);

    if EditorSlave.Focused then
      begin Ed:= EditorSlave; Ed2:= EditorMaster end
    else
      begin Ed:= EditorMaster; Ed2:= EditorSlave end;
    Ln1:= Ed.TopLine;
    Ln2:= Ed2.TopLine;
    P1:= Ed.CaretPos;
    P2:= Ed2.CaretPos;
    WasEnd:= Ed.CaretPos.Y = Ed.Lines.Count-1;

    //reload
    Screen.Cursor:= crHourGlass;
    try
      EditorMaster.TextSource.Lines.SkipSignature:= True;
      EditorMaster.TextSource.Lines.LoadFromFile(FileName);
      EditorMaster.TextSource.Lines.SkipSignature:= False;
    finally
      Screen.Cursor:= crDefault;
    end;  

    if TfmMain(Owner).opFollowTail and WasEnd then
    begin
      //follow tail
      Ed.CaretPos:= Point(0, Ed.Lines.Count-1);
      Ed2.CaretPos:= P2;
    end
    else
    begin
      Ed.CaretPos:= P1;
      Ed2.CaretPos:= P2;
      Ed.TopLine:= Ln1;
      Ed2.TopLine:= Ln2;
    end;

    //reset marks/states
    EditorMaster.Lines.ResetLineStates;
    EditorSlave.Lines.ResetLineStates;
    EditorMaster.ResetSearchMarks;
    EditorSlave.ResetSearchMarks;

    //mark file as non-modified
    Modified:= False;
  end;

  DoStartNotif;
end;

procedure TEditorFrame.EditorMasterSelectionChanged(Sender: TObject);
var
  Ed: TSyntaxMemo;
begin
  Ed:= Sender as TSyntaxMemo;
  EditorMasterCaretPosChanged(Sender);
  TfmMain(Owner).DoPyEvent(Ed, cSynEventOnSelect, []);
end;

procedure TEditorFrame.EditorMasterZoom(Sender: TObject);
begin
  with Sender as TSyntaxMemo do
  begin
    HorzRuler.Height:=
      5 + Round(Abs(HorzRuler.Font.Height) * Zoom / 100);
  end;
  UpdateGutterWidth(Sender);
end;

procedure TEditorFrame.UpdateGutterWidth(Sender: TObject);
begin
  if Assigned(Parent) then //needed for Gutter.Bands[].Width:=...
    with Sender as TSyntaxMemo do
      if Gutter.Bands[LineNumbers.Band].Width>0 then
      begin
        Canvas.Font.Assign(LineNumbers.Font);
        Gutter.Bands[LineNumbers.Band].Width:=
          Canvas.TextWidth(IntToStr(Max(Lines.Count, 10))) + cGutterBandSizeNumSpace;
      end;
end;

procedure TEditorFrame.SetSplitPos(const F: Double);
begin
  if (F < 100.0) then
  begin
    FSplitPos:= F;
    SplitterEds.Visible:= F>1.0;
    if FSplitHorz then
    begin
      SplitterEds.Top:= 0;
      EditorSlave.Height:= Abs(Trunc((Self.Height - SplitterEds.Height) * F / 100.0));
    end
    else
    begin
      SplitterEds.Left:= 0;
      EditorSlave.Width:= Abs(Trunc((Self.Width - SplitterEds.Width) * F / 100.0));
    end;
  end;
end;

procedure TEditorFrame.SetSplitHorz(Value: boolean);
begin
  FSplitHorz:= Value;
  if FSplitHorz then
  begin
    EditorSlave.Align:= alBottom;
    SplitterEds.Align:= alBottom;
    SplitterEds.Top:= 0;
  end
  else
  begin
    EditorSlave.Align:= alRight;
    SplitterEds.Align:= alRight;
    SplitterEds.Left:= 0;
  end;
  SplitPos:= SplitPos;
end;

procedure TEditorFrame.SplitterEdsMoved(Sender: TObject);
begin
  if FSplitHorz then
    FSplitPos:= EditorSlave.Height * 100 / (Self.Height - SplitterEds.Height)
  else
    FSplitPos:= EditorSlave.Width * 100 / (Self.Width - SplitterEds.Width);
end;

function TEditorFrame.IsSplitted: boolean;
begin
  {
  if SplitHorz then
    Result:= SplitterEds.Top > 0
  else
    Result:= SplitterEds.Left > 1; //minimal Left is 0 and 1
    }
  Result:= FSplitPos > 1.0;  
end;

procedure TEditorFrame.ToggleSplitted;
begin
  if IsSplitted then
  begin
    SplitPos:= 0.0;
    with EditorMaster do
      if CanFocus then SetFocus;
  end
  else
    SplitPos:= 50.0;
end;

procedure TEditorFrame.TBXItemSplitHorzClick(Sender: TObject);
begin
  SplitHorz:= True;
end;

procedure TEditorFrame.TBXItemSplitVertClick(Sender: TObject);
begin
  SplitHorz:= False;
end;

procedure TEditorFrame.PopupSplitEditorsPopup(Sender: TObject);
begin
  TbxItemSplitHorz.Checked:= SplitHorz;
  TbxItemSplitVert.Checked:= not SplitHorz;

  TbxItemSplitHorz.Caption:= DKLangConstW('Split_h');
  TbxItemSplitVert.Caption:= DKLangConstW('Split_v');
  TbxItemSplitCaption.Caption:= DKLangConstW('Split_Ed');
  TbxItemSplitCancel.Caption:= DKLangConstW('Split_Cancel');
end;

procedure TEditorFrame.TBXItemSplit20_80Click(Sender: TObject);
begin
  SplitPos:= 80.0;
end;

procedure TEditorFrame.TBXItemSplit30_70Click(Sender: TObject);
begin
  SplitPos:= 70.0;
end;

procedure TEditorFrame.TBXItemSplit40_60Click(Sender: TObject);
begin
  SplitPos:= 60.0;
end;

procedure TEditorFrame.TBXItemSplit50_50Click(Sender: TObject);
begin
  SplitPos:= 50.0;
end;

procedure TEditorFrame.TBXItemSplit60_40Click(Sender: TObject);
begin
  SplitPos:= 40.0;
end;

procedure TEditorFrame.TBXItemSplit70_30Click(Sender: TObject);
begin
  SplitPos:= 30.0;
end;

procedure TEditorFrame.TBXItemSplit80_20Click(Sender: TObject);
begin
  SplitPos:= 20.0;
end;

procedure TEditorFrame.SplitterDblClick(Sender: TObject);
begin
  if IsSplitted then
    SplitPos:= 0.0
  else
    SplitPos:= 50.0;  
end;


function TEditorFrame.IsFtp: boolean;
begin
  Result:= FFtpInfoPtr<>nil;
end;

procedure TEditorFrame.FreeFtpInfo;
begin
  if FFtpInfoPtr<>nil then
  begin
    FreeMem(FFtpInfoPtr);
    FFtpInfoPtr:= nil;
    FFtpInfoSize:= 0;
  end;
end;

procedure TEditorFrame.SetFtpInfo(AInfoPtr: Pointer; AInfoSize: Integer);
begin
  FreeFtpInfo;
  if (AInfoPtr=nil) or (AInfoSize=0) then Exit;

  FFtpInfoSize:= AInfoSize;
  GetMem(FFtpInfoPtr, FFtpInfoSize);
  Move(AInfoPtr^, FFtpInfoPtr^, FFtpInfoSize);

  DoTitleChanged; //show "ftp" mark
end;

procedure TEditorFrame.SetShowMap(V: boolean);
begin
  PanelMap.Visible:= V;
end;

function TEditorFrame.GetShowMap: boolean;
begin
  Result:= PanelMap.Visible;
end;

function TEditorFrame.GetMapLine(X, Y: Integer): Integer;
begin
  Result:= Int64(EditorMaster.TextSource.Lines.Count) * Y div PanelMap.Height;
end;

procedure TEditorFrame.PanelMapMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  N: Integer;
begin
  N:= GetMapLine(X, Y);
  TfmMain(Owner).DoHint(WideFormat(DKLangConstW('zMLine'), [N+1]));
  if ssLeft in Shift then
    PanelMapMouseDown(Self, mbLeft, Shift, X, Y);
end;

procedure TEditorFrame.UpdateMap(Ed: TSyntaxMemo);
var
  LinesMarked: TList;
  LinesSpell: TList;
  //
  function IsSearchMarked(NLine: Integer): boolean;
  begin
    Result:= LinesMarked.IndexOf(Pointer(NLine)) >= 0;
  end;
  //
  function IsSpellMarked(NLine: Integer): boolean;
  begin
    Result:= LinesSpell.IndexOf(Pointer(NLine)) >= 0;
  end;
  //
const
  cStateColumnSize = 3; //width of line-state column
  cMinHeight = 2; //min height of frame rect
var
  C: TCanvas;
  NCnt, NCliWidth, NCliHeight: Integer;
  i, N1, N2: Integer; //px coord of current line
  N1_Frame, N2_Frame: Integer; //px coord of visible frame
  NLineTop, NLineBottom: Integer; //number of top/bottom visible lines
  AColor: TColor;
begin
  if not PanelMap.Visible then Exit;

  C:= FBitmapMap.Canvas;
  NCliWidth:= PanelMap.ClientWidth;
  NCliHeight:= PanelMap.ClientHeight;

  if FBitmapMap.Width<NCliWidth then
    FBitmapMap.Width:= NCliWidth;
  if FBitmapMap.Height<NCliHeight then
    FBitmapMap.Height:= NCliHeight;

  //draw backgnd
  C.Brush.Color:= TfmMain(Self.Owner).opColorMicromapBG;
  C.FillRect(Rect(0, 0, NCliWidth, NCliHeight));

  NCnt:= EditorMaster.TextSource.Lines.Count;
  if NCnt=0 then Exit;

  //draw current frame
  NLineTop:= Ed.TopLine;
  NLineBottom:= EditorGetBottomLineIndex(Ed)+1;
    //Ed.TopLine+ Ed.VisibleLines

  N1_Frame:= Int64(NCliHeight)*NLineTop div NCnt;
  N2_Frame:= Int64(NCliHeight)*NLineBottom div NCnt;
  //make frame height not less than Npx
  if N2_Frame<N1_Frame+cMinHeight then
    N2_Frame:= N1_Frame+cMinHeight;

  C.Brush.Color:= TfmMain(Self.Owner).opColorMinimapSel;
  C.FillRect(Rect(0, N1_Frame, NCliHeight, N2_Frame));

  LinesMarked:= TList.Create;
  LinesSpell:= TList.Create;
  try
    //fill list of marked line numbers
    with Ed.SearchMarks do
      for i:= 0 to Count-1 do
      begin
        N1:= Ed.StrPosToCaretPos(Items[i].StartPos).Y;
        LinesMarked.Add(Pointer(N1));
      end;

    //draw line states
    for i:= 0 to NCnt-1 do
    begin
      case EditorMaster.TextSource.Lines.LineState[i] of
        lsModified: AColor:= Ed.LineStateDisplay.ModifiedColor;
        lsNew:      AColor:= Ed.LineStateDisplay.NewColor;
        lsSaved:    AColor:= Ed.LineStateDisplay.SavedColor;
        else        AColor:= clNone;
      end;

      N1:= Int64(NCliHeight)*i div NCnt;
      N2:= Int64(NCliHeight)*(i+1) div NCnt;
      N2:= Max(N2, N1+2); //minimal mark height is 2px

      //hilite line states
      if AColor<>clNone then
      begin
        C.Brush.Color:= AColor;
        C.FillRect(Rect(0, N1, cStateColumnSize, N2));
      end;

      //hilite spell marks
      if IsSpellMarked(i) then
      begin
        C.Brush.Color:= TfmMain(Owner).opColorMicromapMisspelled;
        C.FillRect(Rect(NCliWidth-cStateColumnSize, N1, NCliWidth, N2));
      end;

      //hilite search marks
      if IsSearchMarked(i) then
      begin
        C.Brush.Color:= TfmMain(Owner).opColorMicromapMarks;
          //Ed.DefaultStyles.SearchMark.BgColor;
        C.FillRect(Rect(NCliWidth-cStateColumnSize, N1, NCliWidth, N2));
      end;
    end;
  finally
    FreeAndNil(LinesSpell);
    FreeAndNil(LinesMarked);
  end;

  PanelMap.Canvas.CopyRect(
    Rect(0, 0, NCliWidth, NCliHeight),
    FBitmapMap.Canvas,
    Rect(0, 0, NCliWidth, NCliHeight)
    );
end;


procedure TEditorFrame.TimerMapTimer(Sender: TObject);
begin
  TimerMap.Enabled:= False;
  UpdateMap(FocusedEditor);
end;

procedure TEditorFrame.PanelMapPaint(Sender: TObject);
begin
  if EditorMaster.TextSource.Lines.Count>cManyLines then
    with PanelMap do
    begin
      Canvas.Brush.Color:= clBtnFace;
      Canvas.FillRect(Rect(0, 0, ClientWidth, ClientHeight));
    end;
  DoSyncMicromap;
end;

procedure TEditorFrame.PanelMapMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  NCur, NTop: Integer;
  Ed: TSyntaxMemo;
begin
  Ed:= FocusedEditor;
  NCur:= GetMapLine(X, Y);
  NTop:= NCur - Ed.VisibleLines div 3; //center clicked point in editor
  if NTop<0 then NTop:= 0;

  Ed.TopLine:= NTop;
  //Ed.CaretPos:= Point(0, NCur); //don't move caret, like Sublime
  UpdateMap(Ed);
end;

procedure TEditorFrame.EditorShowHint(Sender: TObject;
  const HintStr: string;
  var HintObj: THintWindow);
begin
  opImageHintColorFont:= EditorMaster.HintProps.Font.Color;
  opImageHintColorBG:= EditorMaster.HintProps.Color;

  if IsImageHint(HintStr) then
  begin
    HintObj:= TGraphicHintWindow.Create(Self);
    HintObj.Color:= opImageHintColorBG;
  end
  else
  if SBegin(HintStr, cColorPrefix) then
  begin
    HintObj:= TColorHintWindow.Create(Self);
    HintObj.Color:= opImageHintColorBG;
  end;
end;

procedure TEditorFrame.EditorMasterContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  //needed to show Gutter menu?
  TfmMain(Owner).SynContextGutterPopup(Sender, MousePos, Handled);
  if Handled then Exit;
end;


procedure TEditorFrame.EditorMasterFinishAnalysis(Sender: TObject);
begin
  if not FCollapsedRestored1 then
  begin
    if FCollapsedString1<>'' then
      EditorSetCollapsedRanges(EditorMaster, FCollapsedString1);
    FCollapsedString1:= '';
    FCollapsedRestored1:= True;
  end;
end;

procedure TEditorFrame.EditorSlaveFinishAnalysis(Sender: TObject);
begin
  if not FCollapsedRestored2 then
  begin
    if FCollapsedString2<>'' then
      EditorSetCollapsedRanges(EditorSlave, FCollapsedString2);
    FCollapsedString2:= '';
    FCollapsedRestored2:= True;
  end;
end;

function TEditorFrame.GetCaretsEnabled: boolean;
begin
  Result:= EditorMaster.CaretsEnabled;
end;

function TEditorFrame.GetCaretsGutterBand: integer;
begin
  Result:= EditorMaster.CaretsGutterBand;
end;

function TEditorFrame.GetCaretsIndicator: integer;
begin
  Result:= Ord(EditorMaster.CaretsColorIndicator);
end;

procedure TEditorFrame.SetCaretsGutterBand(V: integer);
begin
  EditorMaster.CaretsGutterBand:= V;
  EditorSlave.CaretsGutterBand:= V;
end;

procedure TEditorFrame.SetCaretsEnabled(V: boolean);
begin
  EditorMaster.CaretsEnabled:= V;
  EditorSlave.CaretsEnabled:= V;
end;

procedure TEditorFrame.SetCaretsIndicator(V: integer);
begin
  EditorMaster.CaretsColorIndicator:= TCaretsColorIndicator(V);
  EditorSlave.CaretsColorIndicator:= TCaretsColorIndicator(V);
end;

function TEditorFrame.GetCaretsGutterColor: TColor;
begin
  Result:= EditorMaster.CaretsGutterColor;
end;

procedure TEditorFrame.SetCaretsGutterColor(V: TColor);
begin
  EditorMaster.CaretsGutterColor:= V;
  EditorSlave.CaretsGutterColor:= V;
end;

function TEditorFrame.SUrlAt(const Pnt: TPoint): Widestring;
var
  Ed: TSyntaxMemo;
  p: TPoint;
begin
  Result:= '';
  Ed:= EditorMaster;
  p:= HyperlinkHighlighter.HltRangeBndAt(Ed.CaretPosToStrPos(Pnt));
  if p.y > p.x then
    Result:= Copy(Ed.Lines.FText, p.x + 1, p.y - p.x);
end;

procedure TEditorFrame.EditorCtrlClick(Sender: TObject; const Pnt: TPoint; var Handled: boolean);
begin
  Handled:= SUrlAt(Pnt)<>'';
end;

function TEditorFrame.CaretsCount: integer;
begin
  Result:= FocusedEditor.CaretsCount;
end;

procedure TEditorFrame.CaretsProps(var NTop, NBottom: integer);
begin
  FocusedEditor.CaretsProps(NTop, NBottom);
end;

procedure TEditorFrame.TBXItemSplitCancelClick(Sender: TObject);
begin
  ToggleSplitted;
end;

procedure TEditorFrame.EditorMasterCheckChar(Sender: TObject; C: Word;
  var IsWord: Boolean);
var
  ch: WideChar;
begin
  ch:= WideChar(C);
  if not IsWord then
    IsWord:= (ch = '$') or (Pos(ch, TfmMain(Owner).opWordChars) > 0);
end;

function TEditorFrame.CurrentLexerObj: TSyntAnalyzer;
begin
  Result:= EditorMaster.TextSource.SyntaxAnalyzer;
end;

function TEditorFrame.CurrentLexerName: string;
var
  An: TSyntAnalyzer;
begin
  An:= CurrentLexerObj;
  if Assigned(An) then
    Result:= An.LexerName
  else
    Result:= '';
end;


procedure TEditorFrame.EditorMasterAfterLineDraw(Sender: TObject;
  Rect: TRect; Line: Integer);
const
  cMaxCount = 10; //max count of colored items per line
var
  Ed: TSyntaxMemo;
  Str, StrItem: Widestring;
  NPos, NPosStart, NCount, NUnderSize: Integer;
  ResStart, ResLen: TSynIntArray4;
begin
  NUnderSize:= TfmMain(Owner).opUnderlineColored;
  if NUnderSize<=0 then Exit;
  if Line<0 then Exit;

  Ed:= Sender as TSyntaxMemo;
  Str:= EditorMaster.TextSource.Lines[Line];

  //#rrggbb
  NCount:= 0;
  NPos:= 0;
  repeat
    NPos:= PosEx('#', Str, NPos+1);
    if NPos=0 then Break;

    //char "&" before "#" - skip
    if (NPos>1) and (Str[NPos-1]='&') then Continue;

    Inc(NPos);
    NPosStart:= NPos;
    while (NPos<=Length(Str)) and IsWordChar(Str[NPos]) do Inc(NPos);
    StrItem:= Copy(Str, NPosStart, NPos-NPosStart);

    EditorUnderlineColorItem(Ed, StrItem, Line, NPosStart, NPos, NUnderSize);
    Dec(NPos);

    Inc(NCount);
    if NCount>cMaxCount then Break;
  until False;

  //rgb(nnn,nnn,nnn)
  NCount:= 0;
  NPos:= 1;
  repeat
    if not SFindRegexEx(Str, cRegexColorRgb, NPos, ResStart, ResLen) then Break;
    StrItem:= Copy(Str, ResStart[0], ResLen[0]);
    EditorUnderlineColorItem(Ed, StrItem, Line, ResStart[0], ResStart[0]+ResLen[0], NUnderSize);
    NPos:= ResStart[0]+ResLen[0];

    Inc(NCount);
    if NCount>cMaxCount then Break;
  until False;
end;

procedure TEditorFrame.DoChangeTick;
begin
  if (FPyChangeTick>0) then
    if (GetTickCount-FPyChangeTick > TfmMain(Owner).opPyChangeDelay) then
    begin
      FPyChangeTick:= 0;
      TfmMain(Owner).DoPyEvent(EditorMaster, cSynEventOnChangeSlow, []);
    end;
end;

procedure TEditorFrame.EditorMasterModifiedChanged(Sender: TObject);
begin
  if FModifiedPrev<>Modified then
  begin
    FModifiedPrev:= Modified;
    DoTitleChanged;
    TfmMain(Owner).UpdateStatusBar;
  end;
end;

procedure TEditorFrame.EditorMasterMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Ed: TSyntaxMemo;
  Line: Integer;
begin
  Ed:= Sender as TSyntaxMemo;

  if EditorMouseCursorOnNumbers(Ed) and FMouseClickOnNumbers then
    if not Ed.HaveSelection then
    begin
      Line:= Ed.MouseToCaret(X, Y).Y;
      if (Line>=0) and (Line<Ed.Lines.Count) then
        Ed.SetSelection(Ed.CaretPosToStrPos(Point(0, Line)), Ed.Lines.LineSpace(Line));
    end;
end;

procedure TEditorFrame.EditorMasterResize(Sender: TObject);
begin
  TfmMain(Owner).OnResize(Self);
end;

procedure TEditorFrame.EditorMasterGetLineNumberStr(Sender: TObject;
  Line: Integer; var NumberStr: String);
begin
  TfmMain(Owner).DoPyEvent_GetLineNumber((Sender as TSyntaxMemo), Line, NumberStr);
end;

procedure TEditorFrame.SetTabCaption(const Str: Widestring);
begin
  FTabCaption:= Str;
  DoTitleChanged; //update tabs canvas
end;

function TEditorFrame.GetTabCaptionEx: Widestring;
//TabCaption is used in lists (Tabs, Bookmarks)
//TabCaptionEx is used only to draw text on tabs canvas (in DoTitleChanged)
begin
  Result:= TabCaption;

  if FileName<>'' then
    if TfmMain(Owner).opTabFolders then
      Result:= WideExtractFileName(WideExtractFileDir(FileName)) + '\' + Result;

  Result:=
    IfThen(IsFtp, 'ftp: ') +
    //IfThen(Modified, '*') +
    Result;
end;

function TEditorFrame.IsUrlAtPosition(APos: Integer): boolean;
var
  P: TPoint;
begin
  p:= HyperlinkHighlighter.HltRangeBndAt(APos);
  Result:= p.y > p.x;
end;


procedure TEditorFrame.EditorMasterClick(Sender: TObject);
var
  Ed: TSyntaxMemo;
  P: TPoint;
begin
  Ed:= Sender as TSyntaxMemo;
  EditorMasterEnter(Sender);

  //Ctrl+Alt+click - goto-definition
  //(if no line selection is made with Ctrl+Alt+drag)
  if IsCtrlAltPressed then
    if not Ed.HaveSelection then
    begin
      EditorUpdateCaretPosFromMousePos(Ed);
      TfmMain(Owner).DoFindId;
    end;

  FMouseClickOnNumbers:= EditorMouseCursorOnNumbers(Ed);
  DoSyncMicromap;

  //disable mousedrag on gutter with shown dlg_menu
  Ed.Dragging:= false; //TSyntaxMemo.Dragging is for FDragging var
  
  P:= Mouse.CursorPos;
  P:= Ed.ScreenToClient(P);
  if PtInRect(Ed.TextArea, P) then
    TfmMain(Owner).DoPyEvent(Ed, cSynEventOnClick,
      ['"'+ShiftStateToString(KeyboardStateToShiftState)+'"']);
end;


procedure TEditorFrame.EditorMasterDblClick(Sender: TObject);
var
  Ed: TSyntaxMemo;
  P: TPoint;
begin
  Ed:= Sender as TSyntaxMemo;
  P:= Mouse.CursorPos;
  P:= Ed.ScreenToClient(P);
  if PtInRect(Ed.TextArea, P) then
    TfmMain(Owner).DoPyEvent(Ed, cSynEventOnClickDbl,
      ['"'+ShiftStateToString(KeyboardStateToShiftState)+'"']);
end;

function TEditorFrame.GetEncoding: integer;
begin
  case EditorMaster.TextSource.Lines.TextCoding of
    tcUTF8:
      Result:= IfThen(SkipBom, cp__UTF8_noBOM, cp__UTF8);
    tcUnicode:
      Result:= cp__Unicode;
    tcSwapUnicode:
      Result:= cp__UnicodeBE;
    tcAnsi:
      Result:= EditorMaster.TextSource.Lines.Codepage;
    else
      Result:= cp_ACP;
  end;
end;

procedure TEditorFrame.SetEncoding(AValue: Integer);
begin
  SkipBom:= False;
  case AValue of
    cp__UTF8:
      begin
        EditorMaster.TextSource.Lines.CodePage:= 0;
        EditorMaster.TextSource.Lines.TextCoding:= tcUTF8;
      end;
    cp__UTF8_noBOM:
      begin
        SkipBom:= True;
        EditorMaster.TextSource.Lines.CodePage:= 0;
        EditorMaster.TextSource.Lines.TextCoding:= tcUTF8;
      end;
    cp__Unicode:
      begin
        EditorMaster.TextSource.Lines.CodePage:= 0;
        EditorMaster.TextSource.Lines.TextCoding:= tcUnicode;
      end;
    cp__UnicodeBE:
      begin
        EditorMaster.TextSource.Lines.CodePage:= 0;
        EditorMaster.TextSource.Lines.TextCoding:= tcSwapUnicode;
      end;
    else
      begin
        EditorMaster.TextSource.Lines.TextCoding:= tcANSI;
        EditorMaster.TextSource.Lines.CodePage:= AValue;
      end;
  end;
end;



initialization
  CF_DRAGCOLOR:= RegisterClipboardFormat(CFSTR_DRAGCOLOR);

end.
