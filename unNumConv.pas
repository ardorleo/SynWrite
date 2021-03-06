unit unNumConv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,
  TntForms, TntStdCtrls, DKLang;

type
  TSynNumType = (numChar, numDec, numHex, numBin, numOct);
  TSynNumConvEvent = procedure(Sender: TObject; const AStr: string; AMode: TSynNumType) of object;

type
  TfmNumConv = class(TTntForm)
    GroupBox1: TTntGroupBox;
    Label1: TTntLabel;
    Label2: TTntLabel;
    Label3: TTntLabel;
    Label4: TTntLabel;
    edDec: TTntEdit;
    edHex: TTntEdit;
    edBin: TTntEdit;
    edOct: TTntEdit;
    bCopyDec: TTntButton;
    bInsDec: TTntButton;
    bClose: TTntButton;
    bInsHex: TTntButton;
    bCopyHex: TTntButton;
    bInsBin: TTntButton;
    bCopyBin: TTntButton;
    bInsOct: TTntButton;
    bCopyOct: TTntButton;
    LabelErr: TTntLabel;
    TntLabel1: TTntLabel;
    edChar: TTntEdit;
    bCopyChar: TTntButton;
    bInsChar: TTntButton;
    DKLanguageController1: TDKLanguageController;
    procedure edDecChange(Sender: TObject);
    procedure edHexChange(Sender: TObject);
    procedure edBinChange(Sender: TObject);
    procedure edOctChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCharChange(Sender: TObject);
    procedure bCopyCharClick(Sender: TObject);
    procedure bCopyDecClick(Sender: TObject);
    procedure bCopyHexClick(Sender: TObject);
    procedure bCopyBinClick(Sender: TObject);
    procedure bCopyOctClick(Sender: TObject);
    procedure bInsCharClick(Sender: TObject);
    procedure bInsDecClick(Sender: TObject);
    procedure bInsHexClick(Sender: TObject);
    procedure bInsBinClick(Sender: TObject);
    procedure bInsOctClick(Sender: TObject);
    procedure bCloseClick(Sender: TObject);
  private
    { Private declarations }
    FLock: boolean;
    FOnInsert: TSynNumConvEvent;
    procedure ShowRes(const S: string; Typ: TSynNumType);
    procedure DoInsert(const S: string; Typ: TSynNumType);
  public
    { Public declarations }
    property OnInsert: TSynNumConvEvent read FOnInsert write FOnInsert;
    procedure SelNext;
  end;

implementation

uses
  cUtils, cStrings, //Fundamentals Lib
  Clipbrd,
  StrUtils;

{$R *.dfm}

procedure TfmNumConv.edDecChange(Sender: TObject);
begin
  if not FLock then
    ShowRes(edDec.Text, numDec);
end;

procedure TfmNumConv.edHexChange(Sender: TObject);
begin
  if not FLock then
    ShowRes(edHex.Text, numHex);
end;

procedure TfmNumConv.edBinChange(Sender: TObject);
begin
  if not FLock then
    ShowRes(edBin.Text, numBin);
end;

procedure TfmNumConv.edOctChange(Sender: TObject);
begin
  if not FLock then
    ShowRes(edOct.Text, numOct);
end;

procedure TfmNumConv.ShowRes(const S: string; Typ: TSynNumType);
var
  N: LongWord;
  Ok: boolean;
begin
  case Typ of
    numChar,
    numDec: N:= DecStrToLongWord(S, Ok);
    numHex: N:= HexStrToLongWord(S, Ok);
    numBin: N:= BinStrToLongWord(S, Ok);
    numOct: N:= OctStrToLongWord(S, Ok);
    else N:= 0;
  end;
  LabelErr.Visible:= not Ok;

  FLock:= true;
  if Typ<>numChar then edChar.Text:= IfThen((N>0) and (N<256), Chr(N), '');
  if Typ<>numDec then edDec.Text:= IfThen(Ok, LongWordToStr(N), '');
  if Typ<>numHex then edHex.Text:= IfThen(Ok, LongWordToHex(N), '');;
  if Typ<>numBin then edBin.Text:= IfThen(Ok, LongWordToBin(N), '');;
  if Typ<>numOct then edOct.Text:= IfThen(Ok, LongWordToOct(N), '');;
  FLock:= false;
end;

procedure TfmNumConv.FormCreate(Sender: TObject);
begin
  FLock:= false;
  FOnInsert:= nil;
end;

procedure TfmNumConv.edCharChange(Sender: TObject);
var
  s: string;
begin
  if FLock then Exit;
  
  s:= edChar.Text;
  if s='' then
  begin
    edDec.Text:= '';
    edhex.Text:= '';
    edBin.Text:= '';
    edOct.Text:= '';
    LabelErr.Visible:= false;
    Exit
  end;

  s:= IntToStr(Ord(s[1]));
  ShowRes(s, numChar);
end;

procedure TfmNumConv.bCopyCharClick(Sender: TObject);
begin
  Clipboard.AsText:= edChar.Text;
end;

procedure TfmNumConv.bCopyDecClick(Sender: TObject);
begin
  Clipboard.AsText:= edDec.Text;
end;

procedure TfmNumConv.bCopyHexClick(Sender: TObject);
begin
  Clipboard.AsText:= edHex.Text;
end;

procedure TfmNumConv.bCopyBinClick(Sender: TObject);
begin
  Clipboard.AsText:= edBin.Text;
end;

procedure TfmNumConv.bCopyOctClick(Sender: TObject);
begin
  Clipboard.AsText:= edOct.Text;
end;

procedure TfmNumConv.DoInsert(const S: string; Typ: TSynNumType);
begin
  if Assigned(FOnInsert) then
    FOnInsert(Self, S, Typ);
end;

procedure TfmNumConv.bInsCharClick(Sender: TObject);
begin
  DoInsert(edChar.Text, numChar);
end;

procedure TfmNumConv.bInsDecClick(Sender: TObject);
begin
  DoInsert(edDec.Text, numDec);
end;

procedure TfmNumConv.bInsHexClick(Sender: TObject);
begin
  DoInsert(edHex.Text, numHex);
end;

procedure TfmNumConv.bInsBinClick(Sender: TObject);
begin
  DoInsert(edBin.Text, numBin);
end;

procedure TfmNumConv.bInsOctClick(Sender: TObject);
begin
  DoInsert(edOct.Text, numOct);
end;

procedure TfmNumConv.bCloseClick(Sender: TObject);
begin
  Close;
end;


procedure TfmNumConv.SelNext;
begin
  SelectNext(ActiveControl, false, true);
end;

end.
