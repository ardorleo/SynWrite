object fmMenuCmds: TfmMenuCmds
  Left = 247
  Top = 474
  Width = 510
  Height = 322
  ActiveControl = Edit
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Commands'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = TntFormClose
  OnCreate = TntFormCreate
  OnDestroy = TntFormDestroy
  OnKeyDown = FormKeyDown
  OnResize = TntFormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object List: TTntListBox
    Left = 0
    Top = 24
    Width = 494
    Height = 244
    Style = lbOwnerDrawFixed
    Align = alClient
    ItemHeight = 16
    TabOrder = 1
    OnDblClick = ListDblClick
    OnDrawItem = ListDrawItem
    OnKeyDown = ListKeyDown
  end
  object Edit: TTntEdit
    Left = 0
    Top = 0
    Width = 494
    Height = 24
    Align = alTop
    TabOrder = 0
    OnChange = EditChange
    OnKeyDown = EditKeyDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 268
    Width = 494
    Height = 16
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object labHelp: TLabel
      Left = 475
      Top = 0
      Width = 19
      Height = 16
      Cursor = crHandPoint
      Align = alRight
      Caption = '( ? )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = labHelpClick
    end
    object cbFuzzy: TTntCheckBox
      Left = 0
      Top = 0
      Width = 217
      Height = 16
      Align = alLeft
      Caption = 'Fuzzy search'
      TabOrder = 0
      OnClick = cbFuzzyClick
    end
  end
  object KeysList: TSyntKeyMapping
    Items = <>
    Left = 360
    Top = 4
  end
  object TimerType: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerTypeTimer
    Left = 384
    Top = 4
  end
end
