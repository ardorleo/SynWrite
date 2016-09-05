object fmMain: TfmMain
  Left = 304
  Top = 219
  AutoScroll = False
  ClientHeight = 657
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Scaled = False
  ShowHint = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TBXDockTop: TSpTBXDock
    Left = 0
    Top = 25
    Width = 892
    Height = 51
    object tbFile: TSpTBXToolbar
      Left = 0
      Top = 0
      Images = ImageListIcons
      TabOrder = 0
      OnClose = tbQsClose
      OnMove = tbViewMove
      Caption = 'File'
      object TBXSubmenuBarNew: TSpTBXSubmenuItem
        Tag = 700
        Action = acNewTab
        ImageIndex = 0
        OnSelect = ButtonOnSelect
        DropdownCombo = True
        LinkSubitems = TBXSubmenuItemFNew
      end
      object TBXSubmenuBarOpen: TSpTBXSubmenuItem
        Tag = 701
        Action = acOpen
        ImageIndex = 1
        OnSelect = ButtonOnSelect
        DropdownCombo = True
        LinkSubitems = TBXSubmenuItemFRecents
      end
      object TBXSubmenuBarSave: TSpTBXSubmenuItem
        Tag = 702
        Action = acSave
        ImageIndex = 2
        OnSelect = ButtonOnSelect
        DropdownCombo = True
        object TBXItemBarSaveAs: TSpTBXItem
          Tag = 703
          Action = acSaveAs
        end
      end
      object TBXSubmenuBarPrint: TSpTBXSubmenuItem
        Tag = 630
        Action = ecPrintAction
        ImageIndex = 24
        OnSelect = ButtonOnSelect
        DropdownCombo = True
        object TBXItemBarPreview: TSpTBXItem
          Caption = 'Preview...'
          Hint = ' '
          OnClick = TBXItemBarPreviewClick
        end
        object TBXItemBarPageSet: TSpTBXItem
          Caption = 'Page setup...'
          Action = ecPageSetupActionNew
        end
        object TBXItemBarPrintSet: TSpTBXItem
          Caption = 'Printer setup...'
          OnClick = ecPrinterSetupExecute
        end
      end
      object TBXSubmenuBarFind: TSpTBXSubmenuItem
        Tag = 600
        Caption = 'Find'
        Hint = 'Dialog "Find"'
        Action = ecFind
        ImageIndex = 12
        OnSelect = ButtonOnSelect
        DropdownCombo = True
        object TBXItemBarFNext: TSpTBXItem
          Caption = 'Find next'
          OnClick = TBXItemBarFNextClick
        end
        object TBXItemBarFPrev: TSpTBXItem
          Caption = 'Find previous'
          OnClick = TBXItemBarFPrevClick
        end
        object TBXSeparatorItem9: TSpTBXSeparatorItem
        end
        object TBXItemBarWordNext: TSpTBXItem
          Caption = 'Find current word next'
          OnClick = TBXItemBarWordNextClick
        end
        object TBXItemBarWordPrev: TSpTBXItem
          Caption = 'Find current word prior'
          OnClick = TBXItemBarWordPrevClick
        end
        object TBXSeparatorItem11: TSpTBXSeparatorItem
        end
        object TBXItemBarMarks: TSpTBXItem
          Caption = 'Clear search marks'
          OnClick = TBXItemBarMarksClick
        end
      end
      object TBXItemBarGoto: TSpTBXItem
        Caption = 'Go to line'
        Hint = 'Dialog "Go to"'
        Action = ecGoto
        ImageIndex = 22
        OnSelect = ButtonOnSelect
      end
      object TBXSeparatorItem1: TSpTBXSeparatorItem
      end
      object TBXSubmenuBarSetup: TSpTBXSubmenuItem
        Tag = 709
        Caption = 'Setup'
        Hint = 'Dialog "Options"'
        Action = acSetup
        ImageIndex = 4
        OnSelect = ButtonOnSelect
        DropdownCombo = True
        object TBXItemBarLexer: TSpTBXItem
          Caption = 'Customize lexer...'
          Action = acSetupLexerNew
        end
        object TBXItemBarLexerLib: TSpTBXItem
          Caption = 'Customize lexer library...'
          Action = acSetupLexerLib
        end
      end
    end
    object tbEdit: TSpTBXToolbar
      Left = 264
      Top = 26
      DockPos = 264
      DockRow = 1
      Images = ImageListIcons
      TabOrder = 1
      OnClose = tbQsClose
      OnMove = tbViewMove
      Caption = 'Edit'
      object TBXItemBarCopy: TSpTBXItem
        Tag = 301
        Action = ecCopy
        ImageIndex = 5
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarCut: TSpTBXItem
        Tag = 302
        Action = ecCut
        ImageIndex = 6
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarPaste: TSpTBXItem
        Tag = 303
        Action = ecPaste
        ImageIndex = 7
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarDelete: TSpTBXItem
        Tag = 307
        Action = ecClear
        ImageIndex = 8
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarSelAll: TSpTBXItem
        Tag = 306
        Action = ecSelectAll
        ImageIndex = 9
        OnSelect = ButtonOnSelect
      end
      object TBXSeparatorItem3: TSpTBXSeparatorItem
      end
      object TBXItemBarUndo: TSpTBXItem
        Tag = 304
        Action = ecUndo
        ImageIndex = 10
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarRedo: TSpTBXItem
        Tag = 305
        Action = ecRedo
        ImageIndex = 11
        OnSelect = ButtonOnSelect
      end
      object TBXSeparatorItem4: TSpTBXSeparatorItem
      end
      object TBXSubmenuSort: TSpTBXSubmenuItem
        Caption = 'Sort'
        Hint = 'Sorting'
        ImageIndex = 15
        Options = [tboDropdownArrow]
        OnSelect = ButtonOnSelect
        object TBXItemBarSortAsc: TSpTBXItem
          Tag = 562
          Caption = 'Sort ascending'
          OnClick = TBXItemBarSortAscClick
        end
        object TBXItemBarSortDesc: TSpTBXItem
          Tag = 563
          Caption = 'Sort descending'
          OnClick = TBXItemBarSortDescClick
        end
        object TBXSeparatorItem85: TSpTBXSeparatorItem
        end
        object TBXItemBarDedupAll: TSpTBXItem
          Caption = 'Remove all duplicates'
          OnClick = TBXItemBarDedupAllClick
        end
        object TBXItemBarDedupAndOrig: TSpTBXItem
          Caption = 'Remove all duplicates+origins'
          OnClick = TBXItemBarDedupAndOrigClick
        end
        object TBXItemBarDedupAdj: TSpTBXItem
          Caption = 'Remove adjacent duplicates'
          OnClick = TBXItemBarDedupAdjClick
        end
      end
      object TBXSubmenuCase: TSpTBXSubmenuItem
        Caption = 'Change case'
        Hint = 'Selection case changing'
        ImageIndex = 16
        Options = [tboDropdownArrow]
        OnSelect = ButtonOnSelect
        object TBXItemBarCaseUpper: TSpTBXItem
          Tag = 365
          Caption = 'UPPER CASE'
          OnClick = TBXItemBarCaseUpperClick
        end
        object TBXItemBarCaseLower: TSpTBXItem
          Tag = 366
          Caption = 'lower case'
          OnClick = TBXItemBarCaseLowerClick
        end
        object TBXItemBarCaseTitle: TSpTBXItem
          Tag = 368
          Caption = 'Title Case'
          OnClick = TBXItemBarCaseTitleClick
        end
        object TBXItemBarCaseInvert: TSpTBXItem
          Tag = 365
          Caption = 'iNVERT cASE'
          OnClick = TBXItemBarCaseInvertClick
        end
        object TBXItemBarCaseSent: TSpTBXItem
          Tag = 369
          Caption = 'Sentence case'
          OnClick = TBXItemBarCaseSentClick
        end
        object TBXItemBarCaseRandom: TSpTBXItem
          Caption = 'RanDoM case'
          OnClick = TBXItemBarCaseRandomClick
        end
      end
    end
    object tbUser1: TSpTBXToolbar
      Left = 624
      Top = 0
      DockPos = 624
      Images = ImageListUser1
      PopupMenu = PopupUserTB1
      TabOrder = 2
      Visible = False
      OnMove = tbViewMove
      Caption = '1'
    end
    object tbUser2: TSpTBXToolbar
      Left = 657
      Top = 0
      DockPos = 650
      Images = ImageListUser2
      PopupMenu = PopupUserTB2
      TabOrder = 3
      Visible = False
      OnMove = tbViewMove
      Caption = '2'
    end
    object tbUser3: TSpTBXToolbar
      Left = 690
      Top = 0
      DockPos = 686
      Images = ImageListUser3
      PopupMenu = PopupUserTB3
      TabOrder = 4
      Visible = False
      OnMove = tbViewMove
      Caption = '3'
    end
    object tbQs: TSpTBXToolbar
      Left = 0
      Top = 26
      CloseButtonWhenDocked = True
      DockableTo = [dpTop, dpBottom]
      DockPos = -9
      DockRow = 1
      Images = ImageListIcons
      TabOrder = 5
      OnClose = tbQsClose
      OnMove = tbViewMove
      Caption = 'Quick search'
      object TBControlItem1aa: TTBControlItem
        Control = edQs
      end
      object TBXItemFFNext: TSpTBXItem
        Caption = 'Next'
        Hint = 'Find next'
        Enabled = False
        ImageIndex = 26
        OnClick = TBXItemFFNextClick
      end
      object TBXItemFFPrev: TSpTBXItem
        Caption = 'Previous'
        Hint = 'Find previous'
        Enabled = False
        ImageIndex = 27
        OnClick = TBXItemFFPrevClick
      end
      object cbCase: TSpTBXItem
        Caption = 'Case'
        Hint = 'Case sensitive'
        DisplayMode = nbdmTextOnly
        ImageIndex = 28
        OnClick = cbCaseClick
      end
      object cbWord: TSpTBXItem
        Caption = 'Words'
        Hint = 'Whole words only'
        DisplayMode = nbdmTextOnly
        ImageIndex = 29
        OnClick = cbWordClick
      end
      object edQs: TSpTBXEdit
        Left = 0
        Top = 0
        Width = 121
        Height = 21
        Hint = 'Quick search'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        OnChange = edQsChange
        OnExit = edQsExit
        OnKeyDown = edQsKeyDown
        OnKeyPress = edQsKeyPress
      end
    end
    object tbView: TSpTBXToolbar
      Left = 199
      Top = 0
      DockPos = 16
      Images = ImageListIcons
      TabOrder = 6
      OnClose = tbQsClose
      OnMove = tbViewMove
      Caption = 'View'
      object TBXItemBarPTree: TSpTBXItem
        Tag = 715
        Caption = 'Toggle tree/project panel'
        Hint = 'Toggle tree/project panel'
        Action = ecShowTree
        ImageIndex = 19
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarPOut: TSpTBXItem
        Caption = 'Toggle output panel'
        Hint = 'Toggle output panel'
        Action = ecShowOut
        ImageIndex = 21
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarPClip: TSpTBXItem
        Caption = 'Toggle clipboard/minimap panel'
        Hint = 'Toggle clipboard/minimap panel'
        Action = ecShowClip
        ImageIndex = 20
        OnSelect = ButtonOnSelect
      end
      object TBXSubmenuBarNPrint: TSpTBXSubmenuItem
        Tag = 733
        Action = ecNonPrint
        ImageIndex = 23
        Options = [tboDropdownArrow]
        OnSelect = ButtonOnSelect
        DropdownCombo = True
        LinkSubitems = TBXSubmenuNonPrint
      end
      object TBXSeparatorItem2: TSpTBXSeparatorItem
      end
      object TBXItemBarComm: TSpTBXItem
        Tag = 560
        Caption = 'Comment lines'
        Hint = 'Comment selected lines'
        ImageIndex = 17
        OnClick = TBXItemBarCommClick
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarUncom: TSpTBXItem
        Tag = 561
        Caption = 'Uncomment lines'
        Hint = 'Uncomment selected lines'
        ImageIndex = 18
        OnClick = TBXItemBarUncomClick
        OnSelect = ButtonOnSelect
      end
      object TBXSeparatorItem10: TSpTBXSeparatorItem
      end
      object TBXItemBarIndent: TSpTBXItem
        Tag = 350
        Action = ecIndent
        ImageIndex = 13
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarUnindent: TSpTBXItem
        Tag = 351
        Action = ecUnindent
        ImageIndex = 14
        OnSelect = ButtonOnSelect
      end
      object TBXSeparatorItem44: TSpTBXSeparatorItem
      end
      object TBXItemBarSyncH: TSpTBXItem
        Caption = 'Sync horizontal scrolling'
        Hint = 'Synchronize horizontal scrolling of groups 1/2'
        Action = ecSyncScrollH
        ImageIndex = 30
        OnSelect = ButtonOnSelect
      end
      object TBXItemBarSyncV: TSpTBXItem
        Caption = 'Sync vertical scrolling'
        Hint = 'Synchronize vertical scrolling of groups 1/2'
        Action = ecSyncScrollV
        ImageIndex = 31
        OnSelect = ButtonOnSelect
      end
    end
  end
  object TBXDockLeft: TSpTBXMultiDock
    Left = 0
    Top = 76
    Width = 250
    Height = 356
    object plTree: TSpTBXDockablePanel
      Left = 0
      Top = 0
      Width = 250
      Height = 356
      ActivateParent = False
      DockableTo = [dpLeft, dpRight]
      DockPos = 4
      HideWhenInactive = False
      TabOrder = 0
      OnDockChanged = plTreeDockChanged
      OnMove = tbViewMove
      OnResize = plTreeResize
      OnVisibleChanged = plTreeVisibleChanged
      object Tree: TSyntaxTreeView
        Left = 0
        Top = 19
        Width = 246
        Height = 109
        ClickAction = staMoveCaret
        AutoSynchronize = True
        Align = alTop
        UpdateDelay = 500
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Indent = 19
        ParentFont = False
        PopupMenu = PopupTree
        RightClickSelect = True
        RowSelect = True
        TabOrder = 0
        OnContextPopup = TreeContextPopup
        OnKeyDown = TreeKeyDown
        OnKeyPress = TreeKeyPress
      end
      object ListTabs: TTntListView
        Left = 0
        Top = 128
        Width = 246
        Height = 150
        Align = alTop
        Columns = <
          item
            Caption = '#'
            Width = 15
          end
          item
            Caption = 'Name'
            Width = 80
          end
          item
            Caption = 'Path'
            Width = 400
          end>
        HideSelection = False
        ReadOnly = True
        RowSelect = True
        PopupMenu = PopupTabContext
        SmallImages = ImageListFtp
        SortType = stText
        TabOrder = 1
        ViewStyle = vsReport
        OnClick = ListTabsClick
        OnColumnClick = ListTabsColumnClick
        OnCompare = ListTabsCompare
        OnKeyDown = ListTabsKeyDown
      end
    end
  end
  object TBXDockBottom: TSpTBXMultiDock
    Left = 0
    Top = 437
    Width = 892
    Height = 185
    Position = dpxBottom
    object plOut: TSpTBXDockablePanel
      Left = 0
      Top = 0
      Width = 892
      Height = 185
      Caption = 'Output'
      DockPos = 0
      TabOrder = 0
      Visible = False
      OnMove = tbViewMove
      OnResize = plOutResize
      OnVisibleChanged = plOutVisibleChanged
      object ListOut: TTntListBox
        Left = 0
        Top = 19
        Width = 112
        Height = 162
        Style = lbOwnerDrawFixed
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 13
        MultiSelect = True
        ParentFont = False
        PopupMenu = PopupOut
        TabOrder = 0
        OnDblClick = ListOutDblClick
        OnDrawItem = ListOutDrawItem
        OnKeyDown = ListOutKeyDown
        OnMouseDown = ListOutMouseDown
        OnMouseMove = ListOutMouseMove
      end
      object ListVal: TTntListBox
        Left = 112
        Top = 19
        Width = 112
        Height = 162
        Style = lbOwnerDrawFixed
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 13
        MultiSelect = True
        ParentFont = False
        PopupMenu = PopupValidate
        TabOrder = 1
        OnDblClick = ListValDblClick
        OnDrawItem = ListOutDrawItem
        OnKeyDown = ListValKeyDown
        OnMouseMove = ListOutMouseMove
      end
      object TreeFind: TTntTreeView
        Left = 224
        Top = 19
        Width = 113
        Height = 162
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        HideSelection = False
        Indent = 19
        ParentFont = False
        PopupMenu = PopupFind
        ReadOnly = True
        RowSelect = True
        TabOrder = 2
        OnAdvancedCustomDrawItem = TreeFindAdvancedCustomDrawItem
        OnChange = TreeFindChange
        OnCustomDrawItem = TreeFindCustomDrawItem
        OnDblClick = TreeFindDblClick
        OnKeyDown = TreeFindKeyDown
        OnKeyPress = TreeKeyPress
      end
      object ListPLog: TTntListBox
        Left = 337
        Top = 19
        Width = 121
        Height = 162
        Style = lbOwnerDrawFixed
        Align = alLeft
        ItemHeight = 13
        MultiSelect = True
        PopupMenu = PopupPluginsLog
        TabOrder = 3
        OnDrawItem = ListPLogDrawItem
        OnKeyDown = ListPLogKeyDown
        OnMouseMove = ListOutMouseMove
      end
      object plConsole: TPanel
        Left = 458
        Top = 19
        Width = 151
        Height = 162
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 5
        object edConsole: TTntComboBox
          Left = 0
          Top = 139
          Width = 151
          Height = 23
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          ItemHeight = 15
          ParentFont = False
          TabOrder = 0
          OnKeyDown = edConsoleKeyDown
          OnKeyPress = edConsoleKeyPress
        end
        object MemoConsole: TTntMemo
          Left = 0
          Top = 0
          Width = 151
          Height = 139
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
          OnDblClick = MemoConsoleDblClick
          OnKeyDown = MemoConsoleKeyDown
        end
      end
      object ListBookmarks: TTntListView
        Left = 608
        Top = 16
        Width = 129
        Height = 137
        BorderStyle = bsNone
        Columns = <
          item
            Caption = 'Filename'
            Width = 500
          end
          item
            Alignment = taRightJustify
            Caption = 'Line'
            Width = 70
          end
          item
            Caption = 'Description'
            Width = 400
          end>
        HideSelection = False
        ReadOnly = True
        RowSelect = True
        SmallImages = ImgListGutter
        TabOrder = 6
        ViewStyle = vsReport
        OnDblClick = ListBookmarksDblClick
        OnKeyDown = ListBookmarksKeyDown
      end
    end
  end
  object TBXDockRight: TSpTBXMultiDock
    Left = 713
    Top = 76
    Width = 179
    Height = 356
    Position = dpxRight
    object plClip: TSpTBXDockablePanel
      Left = 0
      Top = 0
      Width = 179
      Height = 356
      DockPos = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnMove = tbViewMove
      OnResize = plClipResize
      OnVisibleChanged = plClipVisibleChanged
    end
  end
  object Status: TSpTBXStatusBar
    Left = 0
    Top = 631
    Width = 892
    Height = 26
    OnResize = StatusResize
    Images = ImageListStatus
    object StatusItemCaret: TSpTBXLabelItem
      Wrapping = twNone
      OnClick = StatusItemCaretClick
      Alignment = taCenter
      MinWidth = 155
      OnDrawHint = StatusItemCaretDrawHint
    end
    object SpTBXSeparatorItem1: TSpTBXSeparatorItem
    end
    object StatusItemEnc: TSpTBXLabelItem
      Hint = 'Encoding (click to change)'
      Wrapping = twNone
      OnClick = StatusItemEncClick
      Alignment = taCenter
      MinWidth = 85
    end
    object SpTBXSeparatorItem2: TSpTBXSeparatorItem
    end
    object StatusItemEnds: TSpTBXLabelItem
      Hint = 'Line endings (click to change)'
      Wrapping = twNone
      OnClick = StatusItemEndsClick
      Alignment = taCenter
      MinWidth = 30
    end
    object SpTBXSeparatorItem3: TSpTBXSeparatorItem
    end
    object StatusItemLexer: TSpTBXLabelItem
      Hint = 'Lexer (click to change)'
      Wrapping = twNone
      OnClick = StatusItemLexerClick
      Alignment = taCenter
      MinWidth = 130
    end
    object SpTBXSeparatorItem4: TSpTBXSeparatorItem
    end
    object StatusItemChar: TSpTBXLabelItem
      Hint = 'Char at caret position (click to call Char Table)'
      Wrapping = twNone
      OnClick = StatusItemCharClick
      Alignment = taCenter
      CustomWidth = 100
    end
    object SpTBXSeparatorItem5: TSpTBXSeparatorItem
    end
    object StatusItemRO: TSpTBXLabelItem
      Hint = 'Read-only (click to change)'
      Wrapping = twNone
      ImageIndex = 1
      OnClick = StatusItemROClick
      Alignment = taCenter
    end
    object SpTBXSeparatorItem6: TSpTBXSeparatorItem
    end
    object StatusItemWrap: TSpTBXLabelItem
      Hint = 'Word wrap (click to change)'
      Wrapping = twNone
      ImageIndex = 3
      OnClick = StatusItemWrapClick
      Alignment = taCenter
    end
    object SpTBXSeparatorItem7: TSpTBXSeparatorItem
    end
    object StatusItemSelMode: TSpTBXLabelItem
      Hint = 'Mouse selection mode (click to change)'
      Wrapping = twNone
      ImageIndex = 8
      OnClick = StatusItemSelModeClick
      Alignment = taCenter
    end
    object SpTBXSeparatorItem8: TSpTBXSeparatorItem
    end
    object StatusItemZoom: TSpTBXLabelItem
      Caption = '100%'
      Hint = 'Zoom value (click to change)'
      Wrapping = twNone
      OnClick = StatusItemZoomClick
      Alignment = taCenter
    end
    object SpTBXSeparatorItem10: TSpTBXSeparatorItem
    end
    object StatusItemTabsize: TSpTBXLabelItem
      Hint = 'Tabulation size'
      Wrapping = twNone
    end
    object SpTBXSeparatorItem11: TSpTBXSeparatorItem
    end
    object StatusItemHint: TSpTBXLabelItem
      Wrapping = twNone
    end
  end
  object Menu: TSpTBXDock
    Left = 0
    Top = 0
    Width = 892
    Height = 25
    object tbMenu: TSpTBXToolbar
      Left = 0
      Top = 0
      CloseButton = False
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 0
      ProcessShortCuts = True
      ShrinkMode = tbsmWrap
      TabOrder = 0
      UpdateActions = False
      OnShortCut = tbMenuShortCut
      Caption = 'Menu'
      Customizable = False
      MenuBar = True
      object TBXSubmenuFile: TSpTBXSubmenuItem
        Caption = 'File'
        object TBXSubmenuItemFNew: TSpTBXSubmenuItem
          Caption = '&New'
          OnSelect = ButtonOnSelect
          OnPopup = TBXSubmenuItemFNewPopup
          object TBXItemFNew: TSpTBXItem
            Action = acNewTab
            OnSelect = ButtonOnSelect
          end
          object TBXItemFNewWin: TSpTBXItem
            Action = acNewWindow
            OnSelect = ButtonOnSelect
          end
          object SpTBXSeparatorItem14: TSpTBXSeparatorItem
          end
          object TBXMRUListItemFNew: TSpTBXMRUListItem
            MaxItems = 10
            OnClick = TBXMRUListItemFNewClick
          end
          object TBXSeparatorItem28: TSpTBXSeparatorItem
          end
        end
        object TBXItemFOpen: TSpTBXItem
          Caption = '&Open...'
          Hint = 'Open file'
          Action = acOpen
          OnSelect = ButtonOnSelect
        end
        object TBXSubmenuItemFRecents: TSpTBXSubmenuItem
          Caption = 'Recen&t files'
          OnPopup = TBXSubmenuItemFRecentsPopup
          object TBXMRUListItemFRecents: TSpTBXMRUListItem
            HidePathExtension = False
            MaxItems = 10
            OnClick = MRUClick
          end
          object TBXSeparatorItem30: TSpTBXSeparatorItem
          end
          object TBXItemFClearRecents: TSpTBXItem
            Caption = 'Clear list'
            OnClick = TBXItemFClearRecentsClick
          end
        end
        object TBXItemFReopen: TSpTBXItem
          Caption = '&Reopen'
          Hint = 'Reread file from disk'
          Action = acReread
          OnSelect = ButtonOnSelect
        end
        object TBXItemFSave: TSpTBXItem
          Caption = '&Save'
          Hint = 'Save file'
          Action = acSave
          OnSelect = ButtonOnSelect
        end
        object TBXItemFSaveAs: TSpTBXItem
          Caption = 'Save &as...'
          Hint = 'Save file under different name'
          Action = acSaveAs
          OnSelect = ButtonOnSelect
        end
        object TBXItemFSaveAll: TSpTBXItem
          Caption = 'Save a&ll'
          Hint = 'Save all tabs'
          Action = acSaveAll
          OnSelect = ButtonOnSelect
        end
        object SpTBXSeparatorItem18: TSpTBXSeparatorItem
        end
        object TBXItemFClose: TSpTBXItem
          Caption = '&Close'
          Hint = 'Close current tab'
          Action = acClose
          OnSelect = ButtonOnSelect
        end
        object TBXItemFCloseAll: TSpTBXItem
          Caption = 'Close all'
          Hint = 'Close all tabs'
          Action = acCloseAll
          OnSelect = ButtonOnSelect
        end
        object TBXItemFCloseOth: TSpTBXItem
          Caption = 'Close ot&her tabs'
          Hint = 'Close all but current tab'
          Action = acCloseOthersThisGroup
          OnSelect = ButtonOnSelect
        end
        object TBXItemFCloseDel: TSpTBXItem
          Caption = 'Close and &delete'
          Hint = 'Close current tab and delete its file'
          Action = acCloseAndDelete
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem22: TSpTBXSeparatorItem
        end
        object TBXSubmenuEncodings: TSpTBXSubmenuItem
          Caption = 'E&ncoding'
          object TBXSubmenuEncReread: TSpTBXSubmenuItem
            Caption = 'Reload as'
            OnSelect = ButtonOnSelect
            OnPopup = TBXSubmenuEncRereadPopup
          end
          object TBXSubmenuEncConvert: TSpTBXSubmenuItem
            Caption = 'Convert to'
            OnSelect = ButtonOnSelect
            OnPopup = TBXSubmenuEncConvertPopup
          end
        end
        object TBXSubmenuLineEnds: TSpTBXSubmenuItem
          Caption = 'Line endings'
          OnSelect = ButtonOnSelect
          OnPopup = TBXSubmenuLineEndsPopup
          object TBXItemEndMWin: TSpTBXItem
            Tag = 1
            Caption = '&Windows (CR LF)'
            Checked = True
            GroupIndex = 1
            RadioItem = True
            OnClick = SetFormat
          end
          object TBXItemEndMUn: TSpTBXItem
            Tag = 3
            Caption = '&Unix (LF)'
            GroupIndex = 1
            RadioItem = True
            OnClick = SetFormat
          end
          object TBXItemEndMMac: TSpTBXItem
            Tag = 2
            Caption = '&Mac (CR)'
            GroupIndex = 1
            RadioItem = True
            OnClick = SetFormat
          end
        end
        object TBXSeparatorItem29: TSpTBXSeparatorItem
        end
        object TBXSubmenuItemPrint: TSpTBXSubmenuItem
          Caption = 'Print'
          object TBXItemFPrint: TSpTBXItem
            Caption = '&Print...'
            Hint = ' '
            Action = ecPrintAction
            OnSelect = ButtonOnSelect
          end
          object TBXItemFPreview: TSpTBXItem
            Caption = 'Pre&view...'
            Hint = ' '
            OnClick = TBXItemFPreviewClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemFPageSetup: TSpTBXItem
            Caption = 'Page setup...'
            Action = ecPageSetupActionNew
            OnSelect = ButtonOnSelect
          end
          object TBXItemFPrinterSetup: TSpTBXItem
            Caption = 'Print&er setup...'
            Hint = ' '
            Action = ecPrinterSetup
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSubmenuItemExport: TSpTBXSubmenuItem
          Caption = 'Export'
          OnSelect = ButtonOnSelect
          object TBXItemFExpHtml: TSpTBXItem
            Caption = 'Export to &HTML...'
            Hint = 
              'Export the current editor contents to HTML including all highlig' +
              'htings'
            Action = acExportHTML
            OnSelect = ButtonOnSelect
          end
          object TBXItemFExpRtf: TSpTBXItem
            Caption = 'Export to &RTF...'
            Hint = 
              'Export the current editor contents to RTF including all highligh' +
              'tings'
            Action = acExportRTF
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSeparatorItem15: TSpTBXSeparatorItem
        end
        object TBXSubmenuItemProjects: TSpTBXSubmenuItem
          Caption = 'Projects'
          object TBXItemProjNew: TSpTBXItem
            Caption = 'New project'
            OnClick = TBXItemProjNewClick
          end
          object TBXItemProjOpen: TSpTBXItem
            Caption = 'Open project...'
            OnClick = TBXItemProjOpenClick
          end
          object TbxItemProjSave: TSpTBXItem
            Caption = 'Save project'
            OnClick = TbxItemProjSaveClick
          end
          object TBXItemProjAddFile: TSpTBXItem
            Caption = 'Add current file to project'
            OnClick = TBXItemProjAddFileClick
          end
          object TBXItemProjAddAllFiles: TSpTBXItem
            Caption = 'Add all files to project'
            OnClick = TBXItemProjAddAllFilesClick
          end
          object TBXItemProjGoto: TSpTBXItem
            Caption = 'Go to project file...'
            OnClick = TBXItemProjGotoClick
          end
          object TBXSubmenuItemProjRecents: TSpTBXSubmenuItem
            Caption = 'Recent projects'
            OnPopup = TBXSubmenuItemProjRecentsPopup
            object TBXMRUListItem_Projects: TSpTBXMRUListItem
              HidePathExtension = False
              MaxItems = 8
              OnClick = TBXMRUListItem_ProjectsClick
            end
            object SpTBXSeparatorItem24: TSpTBXSeparatorItem
            end
            object TBXItemProjRecentClear: TSpTBXItem
              Caption = 'Clear list'
              OnClick = TBXItemProjRecentClearClick
            end
          end
        end
        object TBXSubmenuItemSessions: TSpTBXSubmenuItem
          Caption = 'Sess&ions'
          object TBXItemFSesOpen: TSpTBXItem
            Caption = '&Open session...'
            Hint = 'Open saved tabs list'
            OnClick = TBXItemFSesOpenClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemFSesAdd: TSpTBXItem
            Caption = 'Open/A&dd session...'
            Hint = 'Add saved tabs list to current tabs'
            OnClick = TBXItemFSesAddClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemFSesSave: TSpTBXItem
            Caption = '&Save session'
            Hint = 'Save tabs list (keep current session name)'
            OnClick = TBXItemFSesSaveClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemFSesSaveAs: TSpTBXItem
            Caption = 'Save session &as...'
            Hint = 'Save tabs list to chosen file'
            OnClick = TBXItemFSesSaveAsClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemFSesClose: TSpTBXItem
            Caption = '&Close session'
            Hint = 'Clear name of current tabs list'
            OnClick = TBXItemFSesCloseClick
            OnSelect = ButtonOnSelect
          end
          object TBXSubmenuItemSess: TSpTBXSubmenuItem
            Caption = 'Recen&t sessions'
            OnPopup = TBXSubmenuItemSessPopup
            object TBXMRUListItem_Sess: TSpTBXMRUListItem
              HidePathExtension = False
              MaxItems = 10
              OnClick = MRU_SessClick
            end
            object TBXSeparatorItem59: TSpTBXSeparatorItem
            end
            object TBXItemSessClr: TSpTBXItem
              Caption = '&Clear list'
              OnClick = TBXItemSessClrClick
            end
          end
        end
        object TBXSeparatorItem35: TSpTBXSeparatorItem
        end
        object TBXItemFExit: TSpTBXItem
          Caption = 'E&xit'
          Hint = 'Close editor'
          OnClick = TBXItemFExitClick
          OnSelect = ButtonOnSelect
        end
      end
      object TBXSubmenuEdit: TSpTBXSubmenuItem
        Caption = 'Edit'
        OnPopup = TBXSubmenuEditPopup
        object TBXItemEUndo: TSpTBXItem
          Caption = '&Undo'
          Hint = 'Undo last action'
          ImageIndex = 12
          OnClick = TBXItemEUndoClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemERedo: TSpTBXItem
          Caption = '&Redo'
          Hint = 'Redo last undone action'
          ImageIndex = 13
          OnClick = TBXItemERedoClick
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem6: TSpTBXSeparatorItem
        end
        object TBXItemECut: TSpTBXItem
          Caption = '&Cut'
          Hint = 'Cut selection to clipboard'
          ImageIndex = 8
          OnClick = TBXItemECutClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemECopy: TSpTBXItem
          Caption = 'C&opy'
          Hint = 'Copy selection to clipboard'
          ImageIndex = 7
          OnClick = TBXItemECopyClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemEPaste: TSpTBXItem
          Caption = '&Paste'
          Hint = 'Paste clipboard'
          ImageIndex = 9
          OnClick = TBXItemEPasteClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemEDelete: TSpTBXItem
          Caption = '&Delete'
          Hint = 'Clear current selection'
          ImageIndex = 10
          OnClick = TBXItemEDeleteClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemESelectAll: TSpTBXItem
          Caption = '&Select all'
          Hint = 'Select all text'
          ImageIndex = 11
          OnClick = TBXItemESelectAllClick
          OnSelect = ButtonOnSelect
        end
        object SpTBXSeparatorItem17: TSpTBXSeparatorItem
        end
        object TBXSubmenuItemCopyOps: TSpTBXSubmenuItem
          Caption = 'Copy to clipboard'
          object TBXItemECopyLine: TSpTBXItem
            Caption = 'Copy current line'
            Hint = 'Copy current line to clipboard'
            OnClick = TBXItemECopyLineClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemECutLine: TSpTBXItem
            Caption = 'Cut current line'
            Hint = 'Cut current line to clipboard'
            OnClick = TBXItemECutLineClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem54: TSpTBXSeparatorItem
          end
          object TBXItemECopyApp: TSpTBXItem
            Caption = 'Copy/Append'
            Hint = 'Copy selection and append to clipboard'
            OnClick = TBXItemECopyAppClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemECutApp: TSpTBXItem
            Caption = 'Cut/Append'
            Hint = 'Cut selection and append to clipboard'
            OnClick = TBXItemECutAppClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem17: TSpTBXSeparatorItem
          end
          object TBXItemECpFN: TSpTBXItem
            Caption = 'Copy filename to clipboard'
            OnClick = TBXItemECpFNClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemECpFullPath: TSpTBXItem
            Caption = 'Copy full path to clipboard'
            OnClick = TBXItemECpFullPathClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemECpDirPath: TSpTBXItem
            Caption = 'Copy dir path to clipboard'
            OnClick = TBXItemECpDirPathClick
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSubmenuItemIndentOps: TSpTBXSubmenuItem
          Caption = 'Indents'
          object TBXItemEIndent: TSpTBXItem
            Caption = '&Indent'
            Hint = 'Indent selection'
            ImageIndex = 14
            OnClick = TBXItemEIndentClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEUnindent: TSpTBXItem
            Caption = 'Unind&ent'
            Hint = 'Unindent selection'
            ImageIndex = 15
            OnClick = TBXItemEUnindentClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem33: TSpTBXSeparatorItem
          end
          object TBXItemEIndentLike1st: TSpTBXItem
            Caption = 'Indent like 1st line'
            Hint = 'Make all selection lines indents equal to first line'#39's one'
            OnClick = TBXItemEIndentLike1stClick
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSubmenuItemLineOps: TSpTBXSubmenuItem
          Caption = 'Line operations'
          object TBXItemEDup: TSpTBXItem
            Caption = '&Duplicate line'
            Hint = 'Duplicate current line'
            OnClick = TBXItemEDupClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEDelLn: TSpTBXItem
            Caption = 'D&elete line'
            Hint = 'Delete current line'
            OnClick = TBXItemEDelLnClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem49: TSpTBXSeparatorItem
          end
          object TBXItemEJoin: TSpTBXItem
            Caption = '&Join lines'
            Hint = 'Join (concatenate) selected lines'
            OnClick = TBXItemEJoinClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemESplit: TSpTBXItem
            Caption = '&Split lines...'
            Hint = 'Split current line/ selected lines to shorter lines'
            OnClick = TBXItemESplitClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem47: TSpTBXSeparatorItem
          end
          object TBXItemEMoveUp: TSpTBXItem
            Caption = 'Move lines &up'
            Hint = 'Move selected line(s) up'
            OnClick = TBXItemEMoveUpClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEMoveDn: TSpTBXItem
            Caption = 'Move lines d&own'
            Hint = 'Move selected line(s) down'
            OnClick = TBXItemEMoveDnClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem94: TSpTBXSeparatorItem
          end
          object TBXItemEDedupAll: TSpTBXItem
            Caption = 'Remove all duplicates'
            OnClick = TBXItemEDedupAllClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEDedupAllOrig: TSpTBXItem
            Caption = 'Remove all duplicates+origins'
            OnClick = TBXItemEDedupAllOrigClick
          end
          object TBXItemEDedupAdjacent: TSpTBXItem
            Caption = 'Remove adjacent duplicates'
            OnClick = TBXItemEDedupAdjacentClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem7: TSpTBXSeparatorItem
          end
          object TBXItemEExtractDupCase: TSpTBXItem
            Caption = 'Extract duplicates (case-sensitive)'
            OnClick = TBXItemEExtractDupCaseClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEExtractDupNoCase: TSpTBXItem
            Caption = 'Extract duplicates (case-insensitive)'
            OnClick = TBXItemEExtractDupNoCaseClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEExtractUniq: TSpTBXItem
            Caption = 'Extract unique lines'
            OnClick = TBXItemEExtractUniqClick
          end
          object TBXSeparatorItem68: TSpTBXSeparatorItem
          end
          object TBXItemEReverse: TSpTBXItem
            Caption = 'Reverse lines'
            OnClick = TBXItemEReverseClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEShuffle: TSpTBXItem
            Caption = 'Shuffle lines'
            OnClick = TBXItemEShuffleClick
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSubmenuItemBlankOps: TSpTBXSubmenuItem
          Caption = 'Blank operations'
          object TBXItemERemBlanks: TSpTBXItem
            Caption = '&Remove blank lines'
            Hint = 'Remove blank lines (from selection or all document)'
            OnClick = TBXItemERemBlanksClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEReduceBlanks: TSpTBXItem
            Caption = 'Reduce &blank lines'
            Hint = 'Remove adjacent duplicate blank lines'
            OnClick = TBXItemEReduceBlanksClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem60: TSpTBXSeparatorItem
          end
          object TBXItemETrimLead: TSpTBXItem
            Caption = 'Trim &leading spaces'
            Hint = 'Remove leading spaces from lines'
            OnClick = TBXItemETrimLeadClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemETrimTrail: TSpTBXItem
            Caption = 'Trim &trailing spaces'
            Hint = 'Remove trailing spaces from lines'
            OnClick = TBXItemETrimTrailClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemETrimAll: TSpTBXItem
            Caption = 'Trim leading/trailing &spaces'
            Hint = 'Remove leading+trailing spaces from lines'
            OnClick = TBXItemETrimAllClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemERemDupSp: TSpTBXItem
            Caption = 'Remove &duplicate spaces'
            Hint = 'Remove duplicate (adjacent) spaces from lines'
            OnClick = TBXItemERemDupSpClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem61: TSpTBXSeparatorItem
          end
          object TBXItemETabToSp: TSpTBXItem
            Caption = 'T&abs to spaces'
            Hint = 'Replace Tab characters to spaces'
            OnClick = TBXItemETabToSpClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemESpToTab: TSpTBXItem
            Caption = 'Spac&es to tabs (all)'
            Hint = 'Replace spaces to Tab characters'
            OnClick = TBXItemESpToTabClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemESpToTabLead: TSpTBXItem
            Caption = 'Spaces to tabs (leading)'
            Hint = 'Replace leading spaces to Tab characters'
            OnClick = TBXItemESpToTabLeadClick
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSubmenuItemCommentOps: TSpTBXSubmenuItem
          Caption = 'Comments'
          object TBXItemEToggleLineComment: TSpTBXItem
            Caption = 'Toggle line comment'
            Hint = 'Toggle line comment for selected lines'
            OnClick = TBXItemEToggleLineCommentClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEToggleLineCommentAlt: TSpTBXItem
            Caption = 'Toggle line comment (at nonspace)'
            Hint = 
              'Toggle line comment (comment chars placed on 1st non-space posit' +
              'ion)'
            OnClick = TBXItemEToggleLineCommentAltClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEComm: TSpTBXItem
            Caption = 'Line &comment'
            Hint = 'Comment selected lines'
            ImageIndex = 21
            OnClick = TBXItemECommClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemEUncomm: TSpTBXItem
            Caption = 'Line &uncomment'
            Hint = 'Uncomment selected lines'
            ImageIndex = 22
            OnClick = TBXItemEUncommClick
            OnSelect = ButtonOnSelect
          end
          object TbxSplit2: TSpTBXSeparatorItem
          end
          object TBXItemEToggleStreamComment: TSpTBXItem
            Caption = 'Toggle &stream comment'
            Hint = 'Toggle stream comment for selected lines'
            OnClick = TBXItemEToggleStreamCommentClick
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSubmenuItemSortOps: TSpTBXSubmenuItem
          Caption = 'Sorting'
          ImageIndex = 16
          Options = [tboDropdownArrow]
          OnSelect = ButtonOnSelect
          object TBXItemESortAsc: TSpTBXItem
            Tag = 562
            Caption = 'Sort &ascending'
            Hint = 'Sort selection ascending'
            ImageIndex = 16
            OnClick = TBXItemESortAscClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemESortDesc: TSpTBXItem
            Tag = 563
            Caption = 'Sort &descending'
            Hint = 'Sort selection descending'
            ImageIndex = 17
            OnClick = TBXItemESortDescClick
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSubmenuItemCaseOps: TSpTBXSubmenuItem
          Caption = 'Change case'
          ImageIndex = 18
          Options = [tboDropdownArrow]
          OnSelect = ButtonOnSelect
          object TBXItemECaseUpper: TSpTBXItem
            Tag = 365
            Caption = '&UPPER CASE'
            Hint = 'Selection - to upper case'
            ImageIndex = 20
            OnClick = TBXItemECaseUpperClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemECaseLower: TSpTBXItem
            Tag = 366
            Caption = '&lower case'
            Hint = 'Selection - to lower case'
            ImageIndex = 19
            OnClick = TBXItemECaseLowerClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemECaseTitle: TSpTBXItem
            Tag = 368
            Caption = '&Title Case'
            Hint = 'Selection - to title case'
            ImageIndex = 18
            OnClick = TBXItemECaseTitleClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemECaseInvert: TSpTBXItem
            Tag = 365
            Caption = '&iNVERT cASE'
            Hint = 'Invert selection case'
            OnClick = TBXItemECaseInvertClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemECaseSent: TSpTBXItem
            Tag = 369
            Caption = 'Sentence case'
            Hint = 'Selection - to sentence case'
            OnClick = TBXItemECaseSentClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemECaseRandom: TSpTBXItem
            Caption = 'RanDoM case'
            Hint = 'Selection - to random case'
            OnClick = TBXItemECaseRandomClick
            OnSelect = ButtonOnSelect
          end
        end
        object TbxSubmenuItemCaretsOps: TSpTBXSubmenuItem
          Caption = 'Multi-carets'
          object TBXItemCaretsRemove1: TSpTBXItem
            Caption = 'Remove carets, leave first'
            OnClick = TBXItemCaretsRemove1Click
          end
          object TBXItemCaretsRemove2: TSpTBXItem
            Caption = 'Remove carets, leave last'
            OnClick = TBXItemCaretsRemove2Click
          end
          object TBXSeparatorItem91: TSpTBXSeparatorItem
          end
          object TBXItemCaretsFromSelLeft: TSpTBXItem
            Caption = 'Carets from selection, left edge'
            OnClick = TBXItemCaretsFromSelLeftClick
          end
          object TBXItemCaretsFromSelRight: TSpTBXItem
            Caption = 'Carets from selection, right edge'
            OnClick = TBXItemCaretsFromSelRightClick
          end
          object TBXItemCaretsFromSelClear: TSpTBXItem
            Caption = 'Carets from selection, delete selection'
            OnClick = TBXItemCaretsFromSelClearClick
          end
          object TBXSeparatorItem93: TSpTBXSeparatorItem
          end
          object TBXItemCaretsFromMarksLeft: TSpTBXItem
            Caption = 'Carets from search marks, left edge'
            OnClick = TBXItemCaretsFromMarksLeftClick
          end
          object TBXItemCaretsFromMarksRight: TSpTBXItem
            Caption = 'Carets from search marks, right edge'
            OnClick = TBXItemCaretsFromMarksRightClick
          end
          object TBXItemCaretsFromMarksClear: TSpTBXItem
            Caption = 'Carets from search marks, delete marks'
            OnClick = TBXItemCaretsFromMarksClearClick
          end
          object TBXSeparatorItem92: TSpTBXSeparatorItem
          end
          object TBXItemCaretsExtUpLine: TSpTBXItem
            Caption = 'Extend carets up 1 line'
            OnClick = TBXItemCaretsExtUpLineClick
          end
          object TBXItemCaretsExtDownLine: TSpTBXItem
            Caption = 'Extend carets down 1 line'
            OnClick = TBXItemCaretsExtDownLineClick
          end
          object TBXItemCaretsExtUpPage: TSpTBXItem
            Caption = 'Extend carets up 1 page'
            OnClick = TBXItemCaretsExtUpPageClick
          end
          object TBXItemCaretsExtDownPage: TSpTBXItem
            Caption = 'Extend carets down 1 page'
            OnClick = TBXItemCaretsExtDownPageClick
          end
          object TBXItemCaretsExtUpEnd: TSpTBXItem
            Caption = 'Extend carets up till beginning'
            OnClick = TBXItemCaretsExtUpEndClick
          end
          object TBXItemCaretsExtDownEnd: TSpTBXItem
            Caption = 'Extend carets down till end'
            OnClick = TBXItemCaretsExtDownEndClick
          end
        end
        object TBXSeparatorItem39: TSpTBXSeparatorItem
        end
        object TBXItemETable: TSpTBXItem
          Caption = 'Insert character'
          Hint = 'Dialog "Character Table"'
          OnClick = TBXItemETableClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemETime: TSpTBXItem
          Caption = 'Insert date/time'
          Hint = 'Insert current date/time into text'
          OnClick = TBXItemETimeClick
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem71: TSpTBXSeparatorItem
        end
        object TBXItemEColumn: TSpTBXItem
          Caption = 'Edit column'
          Hint = 'Edit all lines of column selection at once'
          OnClick = TBXItemEColumnClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemEFillBlock: TSpTBXItem
          Caption = 'Fill block...'
          Hint = 'Fill column block lines with custom string'
          Visible = False
          OnClick = TBXItemEFillBlockClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemESyncEd: TSpTBXItem
          Caption = 'Toggle S&yncEditing'
          Hint = 'Start/cancel Synchronized Editing mode'
          OnClick = TBXItemESyncEdClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemERepeatCmd: TSpTBXItem
          Caption = 'Repeat last edit command'
          Hint = 'Repeat last command which edits text'
          Action = ecRepeatCmd
          OnSelect = ButtonOnSelect
        end
      end
      object TBXSubmenuSearch: TSpTBXSubmenuItem
        Caption = 'Search'
        object TBXItemSFind: TSpTBXItem
          Caption = '&Find...'
          Hint = 'Dialog "Find"'
          Action = ecFind
          OnSelect = ButtonOnSelect
        end
        object TBXItemSNext: TSpTBXItem
          Caption = 'Find &next'
          Hint = 'Find next occurance of search string'
          OnClick = TBXItemBarFNextClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemSPrev: TSpTBXItem
          Caption = 'Find &previous'
          Hint = 'Find previous occurance of search string'
          OnClick = TBXItemBarFPrevClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemQs: TSpTBXItem
          Caption = '&Quick search'
          Hint = 'Show "Quick Search" panel'
          OnClick = TBXItemQsClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemSRep: TSpTBXItem
          Caption = '&Replace...'
          Hint = 'Dialog "Replace"'
          Action = ecReplace
          OnSelect = ButtonOnSelect
        end
        object TBXItemSRepInFiles: TSpTBXItem
          Caption = 'Find/Replace in fil&es...'
          Hint = 'Dialog "Find/Replace in files"'
          Action = ecReplaceInFiles
          OnSelect = ButtonOnSelect
        end
        object TbxItemSRepInProject: TSpTBXItem
          Caption = 'Find/Replace in project...'
          Hint = 'Dialog "Find/Replace in project files"'
          Action = ecReplaceInProject
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem19: TSpTBXSeparatorItem
        end
        object TBXSubmenuSMarks: TSpTBXSubmenuItem
          Caption = 'Search marks'
          object TBXItemSMarkAll: TSpTBXItem
            Caption = '&Mark all occurrences'
            Hint = 'Mark all occurrences of search string (place search marks)'
            OnClick = TBXItemSMarkAllClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemSMarkNext: TSpTBXItem
            Caption = 'Ne&xt search mark'
            Hint = 'Go to next search mark'
            OnClick = TBXItemSMarkNextClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemSMarkPrev: TSpTBXItem
            Caption = 'Previous &search mark'
            Hint = 'Go to previous search mark'
            OnClick = TBXItemSMarkPrevClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemSMarkClear: TSpTBXItem
            Caption = '&Clear search marks'
            Hint = 'Clear search marks, which were left by "Find all" command'
            OnClick = TBXItemBarMarksClick
            OnSelect = ButtonOnSelect
          end
        end
        object TBXItemSWordNext: TSpTBXItem
          Caption = 'Next current word'
          Hint = 'Find next occurance of word at caret'
          OnClick = TBXItemBarWordNextClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemSWordPrior: TSpTBXItem
          Caption = 'Previous current word'
          Hint = 'Find previous occurance of word at caret'
          OnClick = TBXItemBarWordPrevClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemSResNext: TSpTBXItem
          Caption = 'Next mass search result'
          Hint = 'Open next result of "Find in files" operation'
          Action = ecGotoNextFindResult
          OnSelect = ButtonOnSelect
        end
        object TBXItemSResPrev: TSpTBXItem
          Caption = 'Previous mass search result'
          Hint = 'Open previous result of "Find in files" operation'
          Action = ecGotoPrevFindResult
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem21: TSpTBXSeparatorItem
        end
        object TBXItemSSelBrackets: TSpTBXItem
          Caption = 'Select brackets'
          Hint = 'Select the range from the current bracket to matching one'
          OnClick = TBXItemSSelBracketsClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemSGoBracket: TSpTBXItem
          Caption = 'Go to matching bracket'
          Hint = 'Go to bracket, which matches the bracket under caret'
          OnClick = TBXItemSGoBracketClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemSGoto: TSpTBXItem
          Caption = '&Go to line...'
          Hint = 'Dialog "Go to"'
          Action = ecGoto
          OnSelect = ButtonOnSelect
        end
      end
      object TBXSubmenuBookmarks: TSpTBXSubmenuItem
        Caption = 'Bookmarks'
        OnPopup = TBXSubmenuBookmarksPopup
        object TBXSubmenuItemBkSet: TSpTBXSubmenuItem
          Caption = '&Set numbered bookmark'
          Hint = 'Set numbered (0-9) bookmark for current line'
          OnSelect = ButtonOnSelect
          OnPopup = TBXSubmenuItemBkSetPopup
          object TBXItemG0: TSpTBXItem
            Caption = '0'
            OnClick = bbg0Click
          end
          object TBXItemG1: TSpTBXItem
            Tag = 1
            Caption = '1'
            OnClick = bbg0Click
          end
          object TBXItemG2: TSpTBXItem
            Tag = 2
            Caption = '2'
            OnClick = bbg0Click
          end
          object TBXItemG3: TSpTBXItem
            Tag = 3
            Caption = '3'
            OnClick = bbg0Click
          end
          object TBXItemG4: TSpTBXItem
            Tag = 4
            Caption = '4'
            OnClick = bbg0Click
          end
          object TBXItemG5: TSpTBXItem
            Tag = 5
            Caption = '5'
            OnClick = bbg0Click
          end
          object TBXItemG6: TSpTBXItem
            Tag = 6
            Caption = '6'
            OnClick = bbg0Click
          end
          object TBXItemG7: TSpTBXItem
            Tag = 7
            Caption = '7'
            OnClick = bbg0Click
          end
          object TBXItemG8: TSpTBXItem
            Tag = 8
            Caption = '8'
            OnClick = bbg0Click
          end
          object TBXItemG9: TSpTBXItem
            Tag = 9
            Caption = '9'
            OnClick = bbg0Click
          end
        end
        object TBXSubmenuItemBkGoto: TSpTBXSubmenuItem
          Caption = '&Go to numbered bookmark'
          Hint = 'Go to any numbered bookmark'
          OnSelect = ButtonOnSelect
          OnPopup = TBXSubmenuItemBkGotoPopup
          object TBXItemB0: TSpTBXItem
            Caption = '0'
            OnClick = bBk0Click
          end
          object TBXItemB1: TSpTBXItem
            Tag = 1
            Caption = '1'
            OnClick = bBk0Click
          end
          object TBXItemB2: TSpTBXItem
            Tag = 2
            Caption = '2'
            OnClick = bBk0Click
          end
          object TBXItemB3: TSpTBXItem
            Tag = 3
            Caption = '3'
            OnClick = bBk0Click
          end
          object TBXItemB4: TSpTBXItem
            Tag = 4
            Caption = '4'
            OnClick = bBk0Click
          end
          object TBXItemB5: TSpTBXItem
            Tag = 5
            Caption = '5'
            OnClick = bBk0Click
          end
          object TBXItemB6: TSpTBXItem
            Tag = 6
            Caption = '6'
            OnClick = bBk0Click
          end
          object TBXItemB7: TSpTBXItem
            Tag = 7
            Caption = '7'
            OnClick = bBk0Click
          end
          object TBXItemB8: TSpTBXItem
            Tag = 8
            Caption = '8'
            OnClick = bBk0Click
          end
          object TBXItemB9: TSpTBXItem
            Tag = 9
            Caption = '9'
            OnClick = bBk0Click
          end
        end
        object TBXItemBkToggle: TSpTBXItem
          Caption = '&Toggle bookmark'
          Hint = 'Toggle bookmark for current line'
          Action = ecBkToggle
          OnSelect = ButtonOnSelect
        end
        object TBXItemBkClear: TSpTBXItem
          Caption = '&Clear all bookmarks'
          Hint = 'Remove all bookmarks in current file'
          Action = ecBkClearAll
          OnSelect = ButtonOnSelect
        end
        object TBXItemBkInverse: TSpTBXItem
          Caption = '&Inverse bookmarks'
          Hint = 'Toggle bookmarks for all lines in file'
          Action = ecBkInverse
          OnSelect = ButtonOnSelect
        end
        object TBXSubmenuBkOps: TSpTBXSubmenuItem
          Caption = 'Bookmark operations'
          object TBXItemBkCopy: TSpTBXItem
            Caption = 'Copy bookmarked lines'
            Hint = 'Copy bookmarked lines to clipboard'
            Action = ecBkCopy
            OnSelect = ButtonOnSelect
          end
          object TBXItemBkCut: TSpTBXItem
            Caption = 'Cut bookmarked lines'
            Hint = 'Cut bookmarked lines to clipboard'
            Action = ecBkCut
            OnSelect = ButtonOnSelect
          end
          object TBXItemBkPaste: TSpTBXItem
            Caption = 'Paste into bookmarked lines'
            Hint = 'Paste from clipboard and replace bookmarked lines'
            Action = ecBkPaste
            OnSelect = ButtonOnSelect
          end
          object TBXItemBkDel: TSpTBXItem
            Caption = 'Delete bookmarked lines'
            Hint = 'Delete bookmarked lines from file'
            Action = ecBkDelete
            OnSelect = ButtonOnSelect
          end
          object TBXItemBkDelUnmk: TSpTBXItem
            Caption = 'Delete unmarked lines'
            Hint = 'Delete non-bookmarked lines from file'
            Action = ecBkDeleteUnmk
            OnSelect = ButtonOnSelect
          end
        end
        object SpTBXSeparatorItem16: TSpTBXSeparatorItem
        end
        object TBXItemBkNext: TSpTBXItem
          Caption = '&Next bookmark'
          Hint = 'Go to next bookmark'
          Action = ecBkNext
          OnSelect = ButtonOnSelect
        end
        object TBXItemBkPrev: TSpTBXItem
          Caption = '&Previous bookmark'
          Hint = 'Go to previous bookmark'
          Action = ecBkPrev
          OnSelect = ButtonOnSelect
        end
        object TBXItemBkGoto: TSpTBXItem
          Caption = 'Go to bookmark...'
          Hint = 'Dialog "Go to bookmark"'
          OnClick = TBXItemBkGotoClick
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem78: TSpTBXSeparatorItem
        end
        object TBXSubmenuBkPortable: TSpTBXSubmenuItem
          Caption = 'Portable bookmarks'
          object TBXItemBkDropPortable: TSpTBXItem
            Caption = 'Drop portable bookmark'
            Hint = 'Add so called "portable bookmark" on current line'
            OnClick = TBXItemBkDropPortableClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemBkGotoPortable: TSpTBXItem
            Caption = 'Go to portable bookmark...'
            Hint = 'Dialog "Go to portable bookmark"'
            Action = ecGotoPortableBk
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSubmenuMarkers: TSpTBXSubmenuItem
          Caption = 'Markers'
          object TBXItemMarkDrop: TSpTBXItem
            Caption = '&Drop marker'
            Hint = 'Drop marker to current file position'
            OnClick = TBXItemMarkDropClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemMarkColl: TSpTBXItem
            Caption = 'C&ollect marker'
            Hint = 'Remove last marker'
            OnClick = TBXItemMarkCollClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemMarkSwap: TSpTBXItem
            Caption = '&Swap marker'
            Hint = 'Swap last marker and current file position'
            OnClick = TBXItemMarkSwapClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemMarkGoLast: TSpTBXItem
            Caption = 'Go to last marker'
            Hint = 'Go to last marker, don'#39't delete it'
            OnClick = TBXItemMarkGoLastClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemMarkClear: TSpTBXItem
            Caption = 'Clear markers'
            Hint = 'Clear all markers in current file'
            OnClick = TBXItemMarkClearClick
            OnSelect = ButtonOnSelect
          end
        end
      end
      object TBXSubmenuTools: TSpTBXSubmenuItem
        Caption = 'Tools'
        OnPopup = TBXSubmenuToolsPopup
        object TBXSubmenuExtTools: TSpTBXSubmenuItem
          Caption = 'External tools'
          object TbxItemTool1: TSpTBXItem
          end
          object TbxItemTool2: TSpTBXItem
          end
          object TbxItemTool3: TSpTBXItem
          end
          object TbxItemTool4: TSpTBXItem
          end
          object TbxItemTool5: TSpTBXItem
          end
          object TbxItemTool6: TSpTBXItem
          end
          object TbxItemTool7: TSpTBXItem
          end
          object TbxItemTool8: TSpTBXItem
          end
          object TbxItemTool9: TSpTBXItem
          end
          object TbxItemTool10: TSpTBXItem
          end
          object TbxItemTool11: TSpTBXItem
          end
          object TbxItemTool12: TSpTBXItem
          end
          object TbxItemTool13: TSpTBXItem
          end
          object TbxItemTool14: TSpTBXItem
          end
          object TbxItemTool15: TSpTBXItem
          end
          object TbxItemTool16: TSpTBXItem
          end
        end
        object TbxSubmenuProjTools: TSpTBXSubmenuItem
          Caption = 'Project tools'
        end
        object TBXItemOTools: TSpTBXItem
          Caption = '&Customize external tools...'
          Hint = 'Customize additional tools'
          OnClick = TBXItemOToolsClick
          OnSelect = ButtonOnSelect
        end
        object SpTBXSeparatorItem19: TSpTBXSeparatorItem
        end
        object TBXItemRunOpenFile: TSpTBXItem
          Caption = 'O&pen current file'
          Hint = 'Launch current file using Windows Explorer association'
          OnClick = TBXItemRunOpenFileClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemRunOpenDir: TSpTBXItem
          Caption = '&Open containing folder'
          Hint = 'Open folder containing the current file'
          OnClick = TBXItemRunOpenDirClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemRunNumConv: TSpTBXItem
          Caption = 'Numeric converter...'
          Hint = 'Dialog "Numeric converter"'
          OnClick = TBXItemRunNumConvClick
          OnSelect = ButtonOnSelect
        end
        object SpTBXSeparatorItem26: TSpTBXSeparatorItem
        end
        object TbxItemRunNewSnippet: TSpTBXItem
          Caption = 'New snippet...'
          Hint = 'Dialog "New snippet"'
          OnClick = TbxItemRunNewSnippetClick
          OnSelect = ButtonOnSelect
        end
        object TbxItemRunSnippets: TSpTBXItem
          Caption = 'Snippets...'
          Hint = 'Dialog "Snippets list"'
          OnClick = TbxItemRunSnippetsClick
          OnSelect = ButtonOnSelect
        end
      end
      object TBXSubmenuMacros: TSpTBXSubmenuItem
        Caption = 'Macros'
        OnPopup = TBXSubmenuMacrosPopup
        object TBXItemMacroRecord: TSpTBXItem
          Caption = 'Start &recording'
          Hint = 'Record a new macro'
          Action = acMacroRecord
          OnSelect = ButtonOnSelect
        end
        object TBXItemMacroStop: TSpTBXItem
          Caption = '&Stop recording'
          Hint = 'Stop current macro recording'
          Action = acMacroStop
          OnSelect = ButtonOnSelect
        end
        object TBXItemMacroCancel: TSpTBXItem
          Caption = '&Cancel recording'
          Hint = 'Cancel currently recorded macro'
          Action = acMacroCancel
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem51: TSpTBXSeparatorItem
        end
        object TBXItemMacro1: TSpTBXItem
          OnClick = TBXItemMacro1Click
        end
        object TBXItemMacro2: TSpTBXItem
          OnClick = TBXItemMacro2Click
        end
        object TBXItemMacro3: TSpTBXItem
          OnClick = TBXItemMacro3Click
        end
        object TBXItemMacro4: TSpTBXItem
          OnClick = TBXItemMacro4Click
        end
        object TBXItemMacro5: TSpTBXItem
          OnClick = TBXItemMacro5Click
        end
        object TBXItemMacro6: TSpTBXItem
          OnClick = TBXItemMacro6Click
        end
        object TBXItemMacro7: TSpTBXItem
          OnClick = TBXItemMacro7Click
        end
        object TBXItemMacro8: TSpTBXItem
          OnClick = TBXItemMacro8Click
        end
        object TBXItemMacro9: TSpTBXItem
          OnClick = TBXItemMacro9Click
        end
        object TBXItemMacro10: TSpTBXItem
          OnClick = TBXItemMacro10Click
        end
        object TBXItemMacro11: TSpTBXItem
          OnClick = TBXItemMacro11Click
        end
        object TBXItemMacro12: TSpTBXItem
          OnClick = TBXItemMacro12Click
        end
        object TBXItemMacro13: TSpTBXItem
          OnClick = TBXItemMacro13Click
        end
        object TBXItemMacro14: TSpTBXItem
          OnClick = TBXItemMacro14Click
        end
        object TBXItemMacro15: TSpTBXItem
          OnClick = TBXItemMacro15Click
        end
        object TBXItemMacro16: TSpTBXItem
          OnClick = TBXItemMacro16Click
        end
        object TBXItemMacro17: TSpTBXItem
          OnClick = TBXItemMacro17Click
        end
        object TBXItemMacro18: TSpTBXItem
          OnClick = TBXItemMacro18Click
        end
        object TBXItemMacro19: TSpTBXItem
          OnClick = TBXItemMacro19Click
        end
        object TBXItemMacro20: TSpTBXItem
          OnClick = TBXItemMacro20Click
        end
        object TBXItemMacro21: TSpTBXItem
          OnClick = TBXItemMacro21Click
        end
        object TBXItemMacro22: TSpTBXItem
          OnClick = TBXItemMacro22Click
        end
        object TBXItemMacro23: TSpTBXItem
          OnClick = TBXItemMacro23Click
        end
        object TBXItemMacro24: TSpTBXItem
          OnClick = TBXItemMacro24Click
        end
        object TBXItemMacro25: TSpTBXItem
          OnClick = TBXItemMacro25Click
        end
        object TBXItemMacro26: TSpTBXItem
          OnClick = TBXItemMacro26Click
        end
        object TBXItemMacro27: TSpTBXItem
          OnClick = TBXItemMacro27Click
        end
        object TBXItemMacro28: TSpTBXItem
          OnClick = TBXItemMacro28Click
        end
        object TBXItemMacro29: TSpTBXItem
          OnClick = TBXItemMacro29Click
        end
        object TBXItemMacro30: TSpTBXItem
          OnClick = TBXItemMacro30Click
        end
        object TBXSeparatorItem62: TSpTBXSeparatorItem
        end
        object TBXItemMacroPlay: TSpTBXItem
          Caption = '&Play last macro'
          Hint = 'Play last macro'
          Action = acMacroPlay
          OnSelect = ButtonOnSelect
        end
        object TBXItemMacroRepeat: TSpTBXItem
          Caption = 'Play last played macro'
          Hint = 'Repeat last played macro'
          Action = acMacroRepeat
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem53: TSpTBXSeparatorItem
        end
        object TBXItemMacroDlg: TSpTBXItem
          Caption = 'R&un/customize macros...'
          Hint = 'Dialog "Run/customize macros"'
          Action = acMacroDialog
          OnSelect = ButtonOnSelect
        end
      end
      object TBXSubmenuPlugins: TSpTBXSubmenuItem
        Caption = 'Plugins'
        Enabled = False
      end
      object TBXSubmenuOptions: TSpTBXSubmenuItem
        Caption = 'Options'
        object TBXItemOSetup: TSpTBXItem
          Caption = '&Customize...'
          Hint = 'Dialog "Options"'
          Action = acSetup
          OnSelect = ButtonOnSelect
        end
        object TBXSubmenuToolbars: TSpTBXSubmenuItem
          Caption = 'Customize toolbars'
          object TBXItemOToolbar1: TSpTBXItem
            Caption = '1'
            OnClick = TBXItemOToolbar1Click
          end
          object TBXItemOToolbar2: TSpTBXItem
            Caption = '2'
            OnClick = TBXItemOToolbar2Click
          end
          object TBXItemOToolbar3: TSpTBXItem
            Caption = '3'
            OnClick = TBXItemOToolbar3Click
          end
        end
        object TBXSeparatorItem38: TSpTBXSeparatorItem
        end
        object TBXItemOLexer: TSpTBXItem
          Caption = 'Customize le&xer...'
          Hint = 'Show dialog "Lexer properties"'
          Action = acSetupLexerNew
          OnSelect = ButtonOnSelect
        end
        object TBXItemOLexerLib: TSpTBXItem
          Caption = 'Customize &lexers library...'
          Hint = 'Show dialog "Lexer library"'
          Action = acSetupLexerLib
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem24: TSpTBXSeparatorItem
        end
        object TBXSubmenuAdvanced: TSpTBXSubmenuItem
          Caption = '&Advanced'
          object TBXItemOHideItems: TSpTBXItem
            Caption = 'Hide menu items...'
            Hint = 'Check menu items, which you want to hide in menus'
            OnClick = TBXItemOHideItemsClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem100: TSpTBXSeparatorItem
          end
          object TBXItemORestoreStyles: TSpTBXItem
            Caption = 'Restore lexer styles...'
            Hint = 'Restore auto-backuped lexers styles'
            OnClick = TBXItemORestoreStylesClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem84: TSpTBXSeparatorItem
          end
          object TBXItemOEditSynIni: TSpTBXItem
            Caption = 'Edit file Syn.ini'
            Hint = 'Edit file "Syn.ini", main SynWrite configuration file'
            OnClick = TBXItemOEditSynIniClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemOEditSynPluginsIni: TSpTBXItem
            Caption = 'Edit file SynPlugins.ini'
            Hint = 'Edit file "SynPlugins.ini", to customize plugins registration'
            OnClick = TBXItemOEditSynPluginsIniClick
            OnSelect = ButtonOnSelect
          end
        end
        object TBXSubmenuAddons: TSpTBXSubmenuItem
          Caption = 'Add-ons manager'
          object TbxItemAddonsInstall: TSpTBXItem
            Caption = 'Install...'
            OnClick = TbxItemAddonsInstallClick
          end
          object TbxItemAddonsRemove: TSpTBXItem
            Caption = 'Remove...'
            OnClick = TbxItemAddonsRemoveClick
          end
          object TbxItemAddonsEdit: TSpTBXItem
            Caption = 'Edit...'
            OnClick = TbxItemAddonsEditClick
          end
          object TbxItemAddonsSave: TSpTBXItem
            Caption = 'Download all...'
            OnClick = TbxItemAddonsSaveClick
          end
          object TbxItemAddonsUpdate: TSpTBXItem
            Caption = 'Update...'
            OnClick = TbxItemAddonsUpdateClick
          end
          object TbxItemAddonsConfig: TSpTBXItem
            Caption = 'Configure...'
            OnClick = TbxItemAddonsConfigClick
          end
        end
      end
      object TBXSubmenuView: TSpTBXSubmenuItem
        Caption = 'View'
        object TBXSubmenuViewToolbars: TSpTBXSubmenuItem
          Caption = 'Tool&bars'
          OnSelect = ButtonOnSelect
          OnPopup = TBXSubmenuViewToolbarsPopup
          object TBXItemTFile: TSpTBXItem
            Caption = 'File'
            Hint = 'Toggle File toolbar'
            OnClick = TBXItemTFileClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemTEdit: TSpTBXItem
            Caption = 'Edit'
            Hint = 'Toggle Edit toolbar'
            OnClick = TBXItemTEditClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemTView: TSpTBXItem
            Caption = 'View'
            Hint = 'Toggle View toolbar'
            OnClick = TBXItemTViewClick
            OnSelect = ButtonOnSelect
          end
          object TBXItemTQs: TSpTBXItem
            Caption = 'Quick search'
            Hint = 'Toggle Quick Search toolbar'
            OnClick = TBXItemTQsClick
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem97: TSpTBXSeparatorItem
          end
          object TBXItemTUser1: TSpTBXItem
            Caption = '1'
            OnClick = TBXItemTUser1Click
          end
          object TBXItemTUser2: TSpTBXItem
            Caption = '2'
            OnClick = TBXItemTUser2Click
          end
          object TBXItemTUser3: TSpTBXItem
            Caption = '3'
            OnClick = TBXItemTUser3Click
          end
        end
        object TBXItemOTree: TSpTBXItem
          Caption = 'Toggle &structure/project panel'
          Hint = 'Show/hide structure and project panel'
          Action = ecShowTree
          OnSelect = ButtonOnSelect
        end
        object TBXItemOOut: TSpTBXItem
          Caption = 'Toggle &output panel'
          Hint = 'Show/hide output panel'
          Action = ecShowOut
          OnSelect = ButtonOnSelect
        end
        object TBXItemOClip: TSpTBXItem
          Caption = 'Toggle clipboar&d/minimap panel'
          Hint = 'Show/hide clipboard and mini-map panel'
          Action = ecShowClip
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem25: TSpTBXSeparatorItem
        end
        object TBXItemORO: TSpTBXItem
          Caption = 'Toggle &read-only'
          Hint = 'Toggle read-only'
          Action = ecReadOnly
          OnSelect = ButtonOnSelect
        end
        object TBXItemOFold: TSpTBXItem
          Caption = 'Toggle &code folding'
          Hint = 'Toggle code folding'
          Action = ecFolding
          OnSelect = ButtonOnSelect
        end
        object TBXItemOWrap: TSpTBXItem
          Caption = 'Toggle &word wrap'
          Hint = 'Toggle word wrap'
          Action = ecWrap
          OnSelect = ButtonOnSelect
        end
        object TBXItemONums: TSpTBXItem
          Caption = 'Toggle line &numbers'
          Hint = 'Toggle line numbers'
          Action = ecLineNums
          OnSelect = ButtonOnSelect
        end
        object TBXItemORuler: TSpTBXItem
          Caption = 'Toggle ruler'
          Hint = 'Toggle horizontal ruler'
          Action = ecRuler
          OnSelect = ButtonOnSelect
        end
        object TBXSubmenuNonPrint: TSpTBXSubmenuItem
          Caption = 'Toggle non-printable chars'
          object TBXItemONPrint: TSpTBXItem
            Caption = 'Toggle'
            Hint = 'Toggle non-printable chars'
            Action = ecNonPrint
            OnSelect = ButtonOnSelect
          end
          object TBXSeparatorItem98: TSpTBXSeparatorItem
          end
          object TBXItemONPrintSpaces: TSpTBXItem
            Caption = 'Show spaces/tabs'
            Action = ecNonPrintSpaces
            RadioItem = True
          end
          object TBXItemONPrintEol: TSpTBXItem
            Caption = 'Show line ends'
            Action = ecNonPrintEol
            RadioItem = True
          end
          object TBXItemONPrintAll: TSpTBXItem
            Caption = 'Show all'
            Action = ecNonPrintBoth
            RadioItem = True
          end
          object TBXSeparatorItem99: TSpTBXSeparatorItem
          end
          object TBXItemONPrintEolDetails: TSpTBXItem
            Caption = 'Detailed line ends'
            Action = ecNonPrintEolDetails
          end
        end
        object TBXSeparatorItem50: TSpTBXSeparatorItem
        end
        object TBXItemVSyncHorz: TSpTBXItem
          Caption = 'Sync horizontal scrolling'
          Hint = 'Synchronize horizontal scrolling of groups 1/2'
          Action = ecSyncScrollH
          OnSelect = ButtonOnSelect
        end
        object TBXItemVSyncVert: TSpTBXItem
          Caption = 'Sync vertical scrolling'
          Hint = 'Synchronize vertical scrolling of groups 1/2'
          Action = ecSyncScrollV
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem26: TSpTBXSeparatorItem
        end
        object TBXItemOFullScr: TSpTBXItem
          Caption = 'F&ull screen'
          Hint = 'Toggle full screen mode'
          Action = ecFullScr
          OnSelect = ButtonOnSelect
        end
        object TBXItemOOnTop: TSpTBXItem
          Caption = '&Always on top'
          Hint = 'Always show main form on top'
          Action = ecOnTop
          OnSelect = ButtonOnSelect
        end
        object TBXSubmenuLexers: TSpTBXSubmenuItem
          Caption = 'Le&xer'
          OnPopup = TBXSubmenuLexersPopup
        end
      end
      object TbxSubmenuWindow: TSpTBXSubmenuItem
        Caption = 'Window'
        OnPopup = TbxSubmenuWindowPopup
        object SpTBXSeparatorItem29: TSpTBXSeparatorItem
        end
        object TbxItemWinSplitH: TSpTBXItem
          Caption = 'Horizontal split'
          RadioItem = True
          OnClick = TbxItemWinSplitHClick
        end
        object TbxItemWinSplitV: TSpTBXItem
          Caption = 'Vertical split'
          RadioItem = True
          OnClick = TbxItemWinSplitVClick
        end
        object TBXSepWin: TSpTBXSeparatorItem
        end
        object TBXSubWin: TSpTBXSubmenuItem
          Caption = 'Panels'
          object TBXItemWinTree: TSpTBXItem
            Caption = 'Tree panel'
            Action = ecToggleFocusTree
          end
          object TBXItemWinProj: TSpTBXItem
            Caption = 'Project panel'
            Action = ecToggleFocusProject
          end
          object TbxItemWinTabs: TSpTBXItem
            Caption = 'Tabs panel'
            Action = ecToggleFocusTabs
          end
          object TbxItemWinExplorer: TSpTBXItem
            Caption = 'Explorer plugin panel'
            OnClick = TbxItemWinExplorerClick
          end
          object TbxItemWinFtp: TSpTBXItem
            Caption = 'FTP plugin panel'
            OnClick = TbxItemWinFtpClick
          end
          object TbxItemWinProjPre: TSpTBXItem
            Caption = 'Preview panel'
            Action = ecToggleProjPreview
          end
          object SpTBXSeparatorItem13: TSpTBXSeparatorItem
          end
          object TBXItemWinClip: TSpTBXItem
            Caption = 'Clipboard panel'
            Action = ecToggleFocusClip
          end
          object TBXItemWinMap: TSpTBXItem
            Caption = 'Minimap panel'
            Action = ecToggleFocusMap
          end
          object TbxItemWinClips: TSpTBXItem
            Caption = 'Text Clips panel'
            Action = ecToggleFocusClips
          end
          object SpTBXSeparatorItem12: TSpTBXSeparatorItem
          end
          object TBXItemWinOut: TSpTBXItem
            Caption = 'Output panel'
            Action = ecToggleFocusOutput
          end
          object TBXItemWinFRes: TSpTBXItem
            Caption = 'Search Results panel'
            Action = ecToggleFocusFindRes
          end
          object TbxItemWinBkmk: TSpTBXItem
            Caption = 'Bookmarks panel'
            Action = ecToggleFocusBookmarks
          end
          object TBXItemWinVal: TSpTBXItem
            Caption = 'Validation panel'
            Action = ecToggleFocusValidate
          end
          object TBXItemWinConsole: TSpTBXItem
            Caption = 'Console panel'
            Action = ecToggleFocusConsole
          end
        end
      end
      object TBXSubmenuHelp: TSpTBXSubmenuItem
        Caption = 'Help'
        object TBXItemHelpTopics: TSpTBXItem
          Caption = '&Help topics'
          Hint = 'Show help file'
          OnClick = TBXItemHelpTopicsClick
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem79: TSpTBXSeparatorItem
        end
        object TBXItemHelpCommandList: TSpTBXItem
          Caption = 'Show commands list'
          Hint = 'Dialog "Commands list"'
          Action = ecCommandsList
          OnSelect = ButtonOnSelect
        end
        object TBXItemHelpReadmeDir: TSpTBXItem
          Caption = '&Browse Readme folder'
          Hint = 'Browse Readme folder contents'
          OnClick = TBXItemHelpReadmeDirClick
          OnSelect = ButtonOnSelect
        end
        object TbxItemHelpPyDir: TSpTBXItem
          Caption = 'Browse Python-plugins folder'
          Hint = 'Browse Python-plugins folder contents'
          Visible = False
          OnClick = TbxItemHelpPyDirClick
          OnSelect = ButtonOnSelect
        end
        object TBXSeparatorItem46: TSpTBXSeparatorItem
        end
        object TBXItemHelpDonate: TSpTBXItem
          Caption = '&Donate...'
          Hint = 'Show "Donate" help topic'
          OnClick = TBXItemHelpDonateClick
          OnSelect = ButtonOnSelect
        end
        object TBXItemHelpAbout: TSpTBXItem
          Caption = '&About...'
          Hint = 'Dialog "About"'
          OnClick = TBXItemAbClick
          OnSelect = ButtonOnSelect
        end
      end
      object TBXSubmenuGroups: TSpTBXSubmenuItem
        Hint = 'Choose grouping mode'
        ImageIndex = 1
        Images = ImageListCloseBtn
        OnSelect = ButtonOnSelect
        OnPopup = TBXSubmenuGroupsPopup
        object TbxItemGroupOne: TSpTBXItem
          Caption = 'One group'
          RadioItem = True
          OnClick = TbxItemGroupOneClick
        end
        object TbxItemGroup2V: TSpTBXItem
          Caption = '2 vert'
          RadioItem = True
          OnClick = TbxItemGroup2VClick
        end
        object TbxItemGroup2H: TSpTBXItem
          Caption = '2 horz'
          RadioItem = True
          OnClick = TbxItemGroup2HClick
        end
        object TbxItemGroup3V: TSpTBXItem
          Caption = '3 vert'
          RadioItem = True
          OnClick = TbxItemGroup3VClick
        end
        object TbxItemGroup3H: TSpTBXItem
          Caption = '3 horz'
          RadioItem = True
          OnClick = TbxItemGroup3HClick
        end
        object TbxItemGroup1p2V: TSpTBXItem
          Caption = '1+2 vert'
          RadioItem = True
          OnClick = TbxItemGroup1p2VClick
        end
        object TbxItemGroup1p2H: TSpTBXItem
          Caption = '1+2 horz'
          RadioItem = True
          OnClick = TbxItemGroup1p2HClick
        end
        object TbxItemGroup4V: TSpTBXItem
          Caption = '4 vert'
          RadioItem = True
          OnClick = TbxItemGroup4VClick
        end
        object TbxItemGroup4H: TSpTBXItem
          Caption = '4 horz'
          RadioItem = True
          OnClick = TbxItemGroup4HClick
        end
        object TbxItemGroup4Grid: TSpTBXItem
          Caption = '4 grid'
          RadioItem = True
          OnClick = TbxItemGroup4GridClick
        end
        object TbxItemGroup6Grid: TSpTBXItem
          Caption = '6 grid'
          RadioItem = True
          OnClick = TbxItemGroup6GridClick
        end
      end
      object TbxItemMenuX: TSpTBXItem
        Caption = '-'
        Hint = 'Close current tab'
        ImageIndex = 0
        Images = ImageListCloseBtn
        OnClick = TbxItemMenuXClick
        OnSelect = ButtonOnSelect
      end
      object TbxItemMenuXX: TSpTBXItem
        Caption = '-'
        Hint = 'Close all tabs'
        ImageIndex = 2
        Images = ImageListCloseBtn
        OnClick = TbxItemMenuXXClick
        OnSelect = ButtonOnSelect
      end
      object TbxSubmenuColors: TSpTBXSubmenuItem
        Hint = 'Recent colors menu'
        ImageIndex = 0
        Images = ImageListColorRecent
        Visible = False
        OnSelect = ButtonOnSelect
        OnPopup = TbxSubmenuColorsPopup
      end
    end
  end
  object PanelBg: TPanel
    Left = 264
    Top = 76
    Width = 435
    Height = 356
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 6
    object TemplateEditor: TSyntaxMemo
      Left = 328
      Top = 72
      Width = 129
      Height = 145
      NonPrintedSpaces = True
      NonPrintedEol = True
      NonPrintedEolDetails = False
      SelectModeDefault = msNone
      Lines.Strings = (
        'Template'
        'editor')
      TabList.AsString = '2'
      NonPrinted.Color = clGray
      NonPrinted.Font.Charset = DEFAULT_CHARSET
      NonPrinted.Font.Color = clGray
      NonPrinted.Font.Height = -11
      NonPrinted.Font.Name = 'MS Sans Serif'
      NonPrinted.Font.Style = []
      LineNumbers.UnderColor = clBlack
      LineNumbers.Margin = 4
      LineNumbers.VertAlignment = vaTop
      LineNumbers.Font.Charset = ANSI_CHARSET
      LineNumbers.Font.Color = clBlack
      LineNumbers.Font.Height = -11
      LineNumbers.Font.Name = 'Microsoft Sans Serif'
      LineNumbers.Font.Style = []
      LineNumbers.Band = 0
      Gutter.Width = 63
      Gutter.Images = ImgListGutter
      Gutter.ExpandButtons.Data = {
        62010000424D62010000000000004200000028000000160000000C0000000100
        08000000000020010000120B0000120B0000030000000300000000000000FFFF
        FF00FFFFFF000101010101010101010101010101010101010101010100000000
        0000000000000000000000000000000000000000000000010101010101010101
        0000010101010101010101000000000101010101010101010000010101010001
        0101010000000001010101010101010100000101010100010101010000000001
        0101010101010101000001010101000101010100000000010000000000000001
        0000010000000000000001000000000101010101010101010000010101010001
        0101010000000001010101010101010100000101010100010101010000000001
        0101010101010101000001010101000101010100000000010101010101010101
        0000010101010101010101000000000000000000000000000000000000000000
        000000000000}
      Gutter.Bands = <
        item
          Width = 15
        end
        item
          Width = 30
          GradientRight = clNone
        end
        item
          Width = 3
        end
        item
          Width = 15
          Color = clSilver
        end>
      Gutter.Objects = <
        item
          Tag = 0
        end>
      Gutter.ExpBtnBand = 2
      Gutter.ShowSeparator = False
      Gutter.CollapsePen.Color = clGray
      Gutter.SeparatorColor = clNone
      Gutter.AutoSize = True
      HintProps.Font.Charset = DEFAULT_CHARSET
      HintProps.Font.Color = clWindowText
      HintProps.Font.Height = -11
      HintProps.Font.Name = 'MS Sans Serif'
      HintProps.Font.Style = []
      HintProps.Color = clInfoBk
      HintProps.ShowHints = [shCollapsed, shGutter, shTokens]
      HintProps.TimeCollapsed = 100000
      HintProps.TimeTokens = 100000
      HintProps.Styles = SyntStyles
      HintProps.Images = ImgListGutter
      HintProps.ShowFirstLine = True
      UserRanges = <>
      UndoLimit = 0
      StaplePen.Color = clGray
      StaplePen.Style = psDot
      StapleOffset = 1
      CollapseBreakColor = clBlack
      CollapseStyle = csNameWhenDefined
      DefaultStyles.SelectioMark.Font.Charset = DEFAULT_CHARSET
      DefaultStyles.SelectioMark.Font.Color = clHighlightText
      DefaultStyles.SelectioMark.Font.Height = -13
      DefaultStyles.SelectioMark.Font.Name = 'Courier New'
      DefaultStyles.SelectioMark.Font.Style = []
      DefaultStyles.SelectioMark.BgColor = clHighlight
      DefaultStyles.SelectioMark.FormatType = ftColor
      DefaultStyles.SearchMark.Font.Charset = DEFAULT_CHARSET
      DefaultStyles.SearchMark.Font.Color = clWhite
      DefaultStyles.SearchMark.Font.Height = -13
      DefaultStyles.SearchMark.Font.Name = 'Courier New'
      DefaultStyles.SearchMark.Font.Style = []
      DefaultStyles.SearchMark.BgColor = clGreen
      DefaultStyles.SearchMark.FormatType = ftColor
      DefaultStyles.CurrentLine.Enabled = False
      DefaultStyles.CurrentLine.Font.Charset = DEFAULT_CHARSET
      DefaultStyles.CurrentLine.Font.Color = clNone
      DefaultStyles.CurrentLine.Font.Height = -13
      DefaultStyles.CurrentLine.Font.Name = 'Courier New'
      DefaultStyles.CurrentLine.Font.Style = []
      DefaultStyles.CurrentLine.FormatType = ftColor
      DefaultStyles.CollapseMark.Font.Charset = DEFAULT_CHARSET
      DefaultStyles.CollapseMark.Font.Color = clSilver
      DefaultStyles.CollapseMark.Font.Height = -13
      DefaultStyles.CollapseMark.Font.Name = 'Courier New'
      DefaultStyles.CollapseMark.Font.Style = []
      DefaultStyles.CollapseMark.FormatType = ftColor
      DefaultStyles.CollapseMark.BorderTypeLeft = blSolid
      DefaultStyles.CollapseMark.BorderColorLeft = clSilver
      DefaultStyles.CollapseMark.BorderTypeTop = blSolid
      DefaultStyles.CollapseMark.BorderColorTop = clSilver
      DefaultStyles.CollapseMark.BorderTypeRight = blSolid
      DefaultStyles.CollapseMark.BorderColorRight = clSilver
      DefaultStyles.CollapseMark.BorderTypeBottom = blSolid
      DefaultStyles.CollapseMark.BorderColorBottom = clSilver
      LineStateDisplay.Band = 1
      SyncEditing.SyncRangeStyle.Font.Charset = DEFAULT_CHARSET
      SyncEditing.SyncRangeStyle.Font.Color = clWindowText
      SyncEditing.SyncRangeStyle.Font.Height = -13
      SyncEditing.SyncRangeStyle.Font.Name = 'Courier New'
      SyncEditing.SyncRangeStyle.Font.Style = []
      SyncEditing.SyncRangeStyle.BgColor = 14745568
      SyncEditing.SyncRangeStyle.FormatType = ftBackGround
      SyncEditing.ActiveWordsStyle.Font.Charset = DEFAULT_CHARSET
      SyncEditing.ActiveWordsStyle.Font.Color = clWindowText
      SyncEditing.ActiveWordsStyle.Font.Height = -13
      SyncEditing.ActiveWordsStyle.Font.Name = 'Courier New'
      SyncEditing.ActiveWordsStyle.Font.Style = []
      SyncEditing.ActiveWordsStyle.FormatType = ftBackGround
      SyncEditing.ActiveWordsStyle.BorderTypeLeft = blSolid
      SyncEditing.ActiveWordsStyle.BorderColorLeft = clBlue
      SyncEditing.ActiveWordsStyle.BorderTypeTop = blSolid
      SyncEditing.ActiveWordsStyle.BorderColorTop = clBlue
      SyncEditing.ActiveWordsStyle.BorderTypeRight = blSolid
      SyncEditing.ActiveWordsStyle.BorderColorRight = clBlue
      SyncEditing.ActiveWordsStyle.BorderTypeBottom = blSolid
      SyncEditing.ActiveWordsStyle.BorderColorBottom = clBlue
      SyncEditing.InactiveWordsStyle.Font.Charset = DEFAULT_CHARSET
      SyncEditing.InactiveWordsStyle.Font.Color = clWindowText
      SyncEditing.InactiveWordsStyle.Font.Height = -13
      SyncEditing.InactiveWordsStyle.Font.Name = 'Courier New'
      SyncEditing.InactiveWordsStyle.Font.Style = []
      SyncEditing.InactiveWordsStyle.FormatType = ftBackGround
      SyncEditing.InactiveWordsStyle.BorderTypeBottom = blSolid
      SyncEditing.InactiveWordsStyle.BorderColorBottom = clBtnFace
      Options = [soOverwriteBlocks, soEnableBlockSel, soHideDynamic, soAutoIndentMode, soBackUnindent, soGroupUndo, soGroupRedo, soFixedLineHeight, soDragText, soKeepTrailingBlanks, soUndoAfterSave, soScrollLastLine, soKeepSelMode, soSmartCaret, soVariableHorzScrollBar]
      OptionsEx = [soSmartPaste, soKeepSearchMarks, soCorrectNonPrinted, soNormalSelToLineEnd, soRightClickMoveCaret]
      BorderStyle = bsNone
      DoubleBuffered = True
      HorzRuler.Font.Charset = DEFAULT_CHARSET
      HorzRuler.Font.Color = clWindowText
      HorzRuler.Font.Height = -11
      HorzRuler.Font.Name = 'MS Sans Serif'
      HorzRuler.Font.Style = []
      TextMargins = <
        item
          Pen.Color = clSilver
          RulerMark = False
        end>
      Caret.Insert.Width = -2
      Caret.Overwrite.Width = 100
      Caret.ReadOnly.Width = -1
      Caret.Custom.Width = -2
      Transparent = False
      Alignment = taLeftJustify
      BevelInner = bvNone
      BevelOuter = bvNone
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
  end
  object TBXDockLeft1: TSpTBXDock
    Left = 255
    Top = 76
    Width = 9
    Height = 356
    Position = dpLeft
  end
  object TBXDockRight1: TSpTBXDock
    Left = 699
    Top = 76
    Width = 9
    Height = 356
    Position = dpRight
  end
  object TBXDockBottom1: TSpTBXDock
    Left = 0
    Top = 622
    Width = 892
    Height = 9
    Position = dpBottom
  end
  object SplitterLeft: TSpTBXSplitter
    Left = 250
    Top = 76
    Height = 356
    Cursor = crSizeWE
    MinSize = 50
    ResizeStyle = rsPattern
  end
  object SplitterRight: TSpTBXSplitter
    Left = 708
    Top = 76
    Height = 356
    Cursor = crSizeWE
    Align = alRight
    MinSize = 50
    ResizeStyle = rsPattern
  end
  object SplitterBottom: TSpTBXSplitter
    Left = 0
    Top = 432
    Width = 892
    Height = 5
    Cursor = crSizeNS
    Align = alBottom
    MinSize = 70
    ResizeStyle = rsPattern
  end
  object ActionList: TActionList
    Left = 312
    Top = 252
    object ecToggleFocusGroups: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusGroupsExecute
    end
    object ecPrintAction: TecPrintAction
      Category = 'Print'
      Caption = 'Print...'
      Hint = 'Print current file'
      BeforeExecute = ecPrintActionBeforeExecute
      Command = 630
      SyntPrinter = ecSyntPrinter
    end
    object ecPreviewActionNew: TAction
      Category = 'Print'
      OnExecute = ecPreviewActionNewExecute
    end
    object acNewTab: TAction
      Tag = 700
      Category = 'File'
      Caption = 'New file'
      Hint = 'Create new tab'
      OnExecute = acNewTabExecute
    end
    object acNewWindow: TAction
      Category = 'File'
      Caption = 'New window'
      Hint = 'Open new program instance'
      OnExecute = acNewWindowExecute
    end
    object ecPageSetupActionNew: TAction
      Category = 'Print'
      OnExecute = ecPageSetupActionNewExecute
    end
    object ecPrinterSetup: TAction
      Category = 'Print'
      Caption = 'Printer setup...'
      OnExecute = ecPrinterSetupExecute
    end
    object acOpen: TAction
      Tag = 701
      Category = 'File'
      Caption = 'Open...'
      Hint = 'Open file'
      OnExecute = acOpenExecute
    end
    object acReread: TAction
      Category = 'File'
      Caption = 'Reopen'
      Hint = 'Reread file from disk'
      OnExecute = acRereadExecute
    end
    object acSave: TAction
      Tag = 702
      Category = 'File'
      Caption = 'Save'
      Hint = 'Save file'
      OnExecute = acSaveExecute
    end
    object acSaveAs: TAction
      Tag = 703
      Category = 'File'
      Caption = 'Save as...'
      Hint = 'Save file under different name'
      OnExecute = acSaveAsExecute
    end
    object acSaveAll: TAction
      Category = 'File'
      OnExecute = acSaveAllExecute
    end
    object acClose: TAction
      Category = 'File'
      OnExecute = acCloseExecute
    end
    object acCloseAll: TAction
      Category = 'File'
      OnExecute = acCloseAllExecute
    end
    object acCloseOthersThisGroup: TAction
      Category = 'File'
      OnExecute = acCloseOthersThisGroupExecute
    end
    object ecToggleShowGroup2: TAction
      Category = 'View'
      OnExecute = ecToggleShowGroup2Execute
    end
    object acCloseOthersAllGroups: TAction
      Category = 'File'
      OnExecute = acCloseOthersAllGroupsExecute
    end
    object acCloseAndDelete: TAction
      Category = 'File'
      OnExecute = acCloseAndDeleteExecute
    end
    object acSetup: TAction
      Category = 'File'
      OnExecute = acSetupExecute
    end
    object acSetupLexerNew: TAction
      Category = 'File'
      OnExecute = acSetupLexerNewExecute
    end
    object acSetupLexerLib: TAction
      Category = 'File'
      OnExecute = acSetupLexerLibExecute
    end
    object ecReplace: TAction
      Category = 'Find'
      Hint = 'Dialog "Replace"'
      OnExecute = ecReplaceExecute
    end
    object ecReplaceInFiles: TAction
      Category = 'Find'
      Hint = 'Dialog "Find/replace in files"'
      OnExecute = ecReplaceInFilesExecute
    end
    object ecReplaceInProject: TAction
      Category = 'Find'
      OnExecute = ecReplaceInProjectExecute
    end
    object ecCopy: TecCopy
      Tag = 301
      Category = 'Edit'
      Caption = 'Copy'
      Hint = 'Copy selection to clipboard'
      ImageIndex = 7
      ShortCut = 16451
    end
    object ecCut: TecCut
      Tag = 302
      Category = 'Edit'
      Caption = 'Cut'
      Hint = 'Cut selection to clipboard'
      ImageIndex = 8
      ShortCut = 16472
    end
    object ecPaste: TecPaste
      Tag = 303
      Category = 'Edit'
      Caption = 'Paste'
      Hint = 'Paste clipboard'
      ImageIndex = 9
      ShortCut = 16470
    end
    object ecClear: TecClear
      Tag = 307
      Category = 'Edit'
      Caption = 'Delete'
      Hint = 'Clear current selection'
      ImageIndex = 10
      ShortCut = 16430
    end
    object ecSelectAll: TecSelectAll
      Tag = 306
      Category = 'Edit'
      Caption = 'Select all'
      Hint = 'Select all text'
      ImageIndex = 11
      ShortCut = 16449
    end
    object ecUndo: TecUndo
      Tag = 304
      Category = 'Edit'
      Caption = 'Undo'
      Hint = 'Undo last action'
      ImageIndex = 12
      ShortCut = 16474
    end
    object ecRedo: TecRedo
      Tag = 305
      Category = 'Edit'
      Caption = 'Redo'
      Hint = 'Redo last undone action'
      ImageIndex = 13
      ShortCut = 24666
    end
    object ecIndent: TecIndent
      Tag = 350
      Category = 'Edit'
      Caption = 'Indent'
      Hint = 'Indent selection'
      ImageIndex = 14
      ShortCut = 16393
    end
    object ecUnindent: TecUnindent
      Tag = 351
      Category = 'Edit'
      Caption = 'Unindent'
      Hint = 'Unindent selection'
      ImageIndex = 15
      ShortCut = 8201
    end
    object ecLowerCase: TecLowerCase
      Tag = 366
      Category = 'Edit'
      Caption = 'Lower case'
      ImageIndex = 19
      ShortCut = 16459
    end
    object ecUpperCase: TecUpperCase
      Tag = 365
      Category = 'Edit'
      Caption = 'Upper case'
      ImageIndex = 20
      ShortCut = 16459
    end
    object ecTitleCase: TAction
      Tag = 368
      Category = 'Edit'
      Caption = 'Title case'
      ImageIndex = 18
      OnExecute = ecTitleCaseExecute
    end
    object ecSentCase: TAction
      Tag = 369
      Category = 'Edit'
      Caption = 'Sentence case'
      OnExecute = ecSentCaseExecute
    end
    object ecToggleCase: TecToggleCase
      Tag = 367
      Category = 'Edit'
      Caption = 'Invert case'
    end
    object ecCommentLines: TecCommentLines
      Tag = 560
      Category = 'Comment'
      Caption = 'Comment lines'
      Hint = 'Comment lines'
      ImageIndex = 21
    end
    object ecUnCommentLines: TecUnCommentLines
      Tag = 561
      Category = 'Comment'
      Caption = 'Uncomment lines'
      Hint = 'Uncomment lines'
      ImageIndex = 22
    end
    object ecShowTree: TAction
      Tag = 715
      Category = 'View'
      Caption = 'Toggle tree'
      Checked = True
      OnExecute = ecShowTreeExecute
    end
    object ecSortAscending: TAction
      Category = 'Edit'
      Caption = 'Sort ascending'
      Hint = 'Sort selection ascending'
      ImageIndex = 16
      OnExecute = ecSortAscendingExecute
    end
    object ecSortDescending: TAction
      Category = 'Edit'
      Caption = 'Sort descending'
      Hint = 'Sort selection descending'
      ImageIndex = 17
      OnExecute = ecSortDescendingExecute
    end
    object ecReadOnly: TAction
      Tag = 712
      Category = 'View'
      Caption = 'Read only'
      Hint = 'Toggle read-only'
      OnExecute = ecReadOnlyExecute
    end
    object ecFind: TAction
      Category = 'Find'
      Hint = 'Dialog "Find"'
      ImageIndex = 32
      ShortCut = 16454
      OnExecute = ecFindExecute
    end
    object ecWrap: TAction
      Tag = 730
      Category = 'View'
      Caption = 'Toggle word wrap'
      Hint = 'Toggle word wrap'
      ImageIndex = 25
      OnExecute = ecWrapExecute
    end
    object ecLineNums: TAction
      Tag = 731
      Category = 'View'
      Caption = 'Toggle line numbers'
      Hint = 'Toggle line numbers'
      ImageIndex = 24
      OnExecute = ecLineNumsExecute
    end
    object ecFolding: TAction
      Tag = 732
      Category = 'View'
      Caption = 'Toggle code folding'
      Hint = 'Toggle code folding'
      OnExecute = ecFoldingExecute
    end
    object ecNonPrint: TAction
      Tag = 733
      Category = 'View'
      Caption = 'Toggle non-printable chars'
      Hint = 'Toggle non-printable chars'
      OnExecute = ecNonPrintExecute
    end
    object acSetupLexerStyles: TAction
      Category = 'File'
      OnExecute = acSetupLexerStylesExecute
    end
    object acExit: TAction
      Category = 'File'
      OnExecute = acExitExecute
    end
    object ecShowOut: TAction
      Tag = 713
      Category = 'View'
      Caption = 'Toggle output'
      Checked = True
      OnExecute = ecShowOutExecute
    end
    object ecShowClip: TAction
      Category = 'View'
      Caption = 'Toggle clipboard history'
      Checked = True
      OnExecute = ecShowClipExecute
    end
    object ecGotoNextFindResult: TAction
      Category = 'Goto'
      OnExecute = ecGotoNextFindResultExecute
    end
    object ecGotoPrevFindResult: TAction
      Category = 'Goto'
      OnExecute = ecGotoPrevFindResultExecute
    end
    object ecFullScr: TAction
      Category = 'View'
      OnExecute = ecFullScrExecute
    end
    object ecSyncScrollH: TAction
      Category = 'View'
      ImageIndex = 41
      OnExecute = ecSyncScrollHExecute
    end
    object ecSyncScrollV: TAction
      Category = 'View'
      ImageIndex = 42
      OnExecute = ecSyncScrollVExecute
    end
    object ecOnTop: TAction
      Category = 'View'
      OnExecute = ecOnTopExecute
    end
    object ecToggleFocusTree: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusTreeExecute
    end
    object ecToggleFocusClip: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusClipExecute
    end
    object ecToggleLineComment: TAction
      Category = 'Comment'
      OnExecute = ecToggleLineCommentExecute
    end
    object ecToggleFocusOutput: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusOutputExecute
    end
    object ecToggleFocusValidate: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusValidateExecute
    end
    object acBackup: TAction
      Category = 'File'
      OnExecute = acBackupExecute
    end
    object ecToggleStreamComment: TAction
      Category = 'Comment'
      OnExecute = ecToggleStreamCommentExecute
    end
    object ecToggleFocusFindRes: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusFindResExecute
    end
    object acMacroRecord: TecMacroRecord
      Category = 'Macros'
      AfterExecute = acMacroRecordAfterExecute
    end
    object acMacroStop: TecMacroStop
      Category = 'Macros'
      AfterExecute = acMacroRecordAfterExecute
    end
    object acMacroCancel: TecMacroCancel
      Category = 'Macros'
      AfterExecute = acMacroRecordAfterExecute
    end
    object acMacroPlay: TecMacroPlay
      Category = 'Macros'
      BeforeExecute = acMacroPlayBeforeExecute
    end
    object acMacroDialog: TAction
      Category = 'Macros'
      OnExecute = acMacroDialogExecute
    end
    object acMacroRepeat: TAction
      Category = 'Macros'
      OnExecute = acMacroRepeatExecute
    end
    object acMacro1: TAction
      Category = 'Macros'
      OnExecute = acMacro1Execute
    end
    object acMacro2: TAction
      Category = 'Macros'
      OnExecute = acMacro2Execute
    end
    object acMacro3: TAction
      Category = 'Macros'
      OnExecute = acMacro3Execute
    end
    object acMacro4: TAction
      Category = 'Macros'
      OnExecute = acMacro4Execute
    end
    object acMacro5: TAction
      Category = 'Macros'
      OnExecute = acMacro5Execute
    end
    object acMacro6: TAction
      Category = 'Macros'
      OnExecute = acMacro6Execute
    end
    object acMacro7: TAction
      Category = 'Macros'
      OnExecute = acMacro7Execute
    end
    object acMacro8: TAction
      Category = 'Macros'
      OnExecute = acMacro8Execute
    end
    object acMacro9: TAction
      Category = 'Macros'
      OnExecute = acMacro9Execute
    end
    object ecBkClearAll: TAction
      Category = 'Bk'
      OnExecute = ecBkClearAllExecute
    end
    object ecBkToggle: TAction
      Category = 'Bk'
      OnExecute = ecBkToggleExecute
    end
    object ecBkNext: TAction
      Category = 'Bk'
      OnExecute = ecBkNextExecute
    end
    object ecBkPrev: TAction
      Category = 'Bk'
      OnExecute = ecBkPrevExecute
    end
    object ecBkInverse: TAction
      Category = 'Bk'
      OnExecute = ecBkInverseExecute
    end
    object ecBkCopy: TAction
      Category = 'Bk'
      OnExecute = ecBkCopyExecute
    end
    object ecBkCut: TAction
      Category = 'Bk'
      OnExecute = ecBkCutExecute
    end
    object ecBkDelete: TAction
      Category = 'Bk'
      OnExecute = ecBkDeleteExecute
    end
    object ecBkDeleteUnmk: TAction
      Category = 'Bk'
      OnExecute = ecBkDeleteUnmkExecute
    end
    object ecBkPaste: TAction
      Category = 'Bk'
      OnExecute = ecBkPasteExecute
    end
    object ecGoto: TAction
      Category = 'Goto'
      OnExecute = ecGotoExecute
    end
    object ecRemoveBlanks: TAction
      Category = 'EditBlank'
      OnExecute = ecRemoveBlanksExecute
    end
    object ecRemoveLines: TAction
      Category = 'Edit'
      OnExecute = ecRemoveLinesExecute
    end
    object ecTrimLead: TAction
      Category = 'EditBlank'
      OnExecute = ecTrimLeadExecute
    end
    object ecTrimTrail: TAction
      Category = 'EditBlank'
      OnExecute = ecTrimTrailExecute
    end
    object ecTrimAll: TAction
      Category = 'EditBlank'
      OnExecute = ecTrimAllExecute
    end
    object ecRemoveDupSpaces: TAction
      Category = 'EditBlank'
      OnExecute = ecRemoveDupSpacesExecute
    end
    object ecTabToSp: TAction
      Category = 'EditBlank'
      OnExecute = ecTabToSpExecute
    end
    object ecSpToTab: TAction
      Category = 'EditBlank'
      OnExecute = ecSpToTabExecute
    end
    object ecSpToTabLeading: TAction
      Category = 'EditBlank'
      OnExecute = ecSpToTabLeadingExecute
    end
    object ecFindClipNext: TAction
      Category = 'Find'
      OnExecute = ecFindClipNextExecute
    end
    object ecFindClipPrev: TAction
      Category = 'Find'
      OnExecute = ecFindClipPrevExecute
    end
    object ecSplit50_50: TAction
      Category = 'View'
      OnExecute = ecSplit50_50Execute
    end
    object ecSplit40_60: TAction
      Category = 'View'
      OnExecute = ecSplit40_60Execute
    end
    object ecSplit60_40: TAction
      Category = 'View'
      OnExecute = ecSplit60_40Execute
    end
    object ecSplit30_70: TAction
      Category = 'View'
      OnExecute = ecSplit30_70Execute
    end
    object ecSplit70_30: TAction
      Category = 'View'
      OnExecute = ecSplit70_30Execute
    end
    object ecSplit20_80: TAction
      Category = 'View'
      OnExecute = ecSplit20_80Execute
    end
    object ecSplit80_20: TAction
      Category = 'View'
      OnExecute = ecSplit80_20Execute
    end
    object ecRepeatCmd: TAction
      Category = 'Edit'
      OnExecute = ecRepeatCmdExecute
    end
    object ecToggleFocusMap: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusMapExecute
    end
    object ecFindInTree: TAction
      Category = 'Find'
      OnExecute = ecFindInTreeExecute
    end
    object ecFindInTreeNext: TAction
      Category = 'Find'
      OnExecute = ecFindInTreeNextExecute
    end
    object ecFindInTreePrev: TAction
      Category = 'Find'
      OnExecute = ecFindInTreePrevExecute
    end
    object ecTreeNext: TAction
      Category = 'Tree'
      OnExecute = ecTreeNextExecute
    end
    object ecTreePrev: TAction
      Category = 'Tree'
      OnExecute = ecTreePrevExecute
    end
    object ecReduceBlanks: TAction
      Category = 'EditBlank'
      OnExecute = ecReduceBlanksExecute
    end
    object ecSplitLeft: TAction
      Category = 'View'
      OnExecute = ecSplitLeftExecute
    end
    object ecSplitRight: TAction
      Category = 'View'
      OnExecute = ecSplitRightExecute
    end
    object ecFindNextWithExtend: TAction
      Category = 'Find'
      OnExecute = ecFindNextWithExtendExecute
    end
    object ecFindPrevWithExtend: TAction
      Category = 'Find'
      OnExecute = ecFindPrevWithExtendExecute
    end
    object ecFindInList: TAction
      Category = 'Find'
      OnExecute = ecFindInListExecute
    end
    object ecFindInListNext: TAction
      Category = 'Find'
      OnExecute = ecFindInListNextExecute
    end
    object ecFindInListPrev: TAction
      Category = 'Find'
      OnExecute = ecFindInListPrevExecute
    end
    object acMacro10: TAction
      Category = 'Macros'
      OnExecute = acMacro10Execute
    end
    object acMacro11: TAction
      Category = 'Macros'
      OnExecute = acMacro11Execute
    end
    object acMacro12: TAction
      Category = 'Macros'
      OnExecute = acMacro12Execute
    end
    object acMacro13: TAction
      Category = 'Macros'
      OnExecute = acMacro13Execute
    end
    object acMacro14: TAction
      Category = 'Macros'
      OnExecute = acMacro14Execute
    end
    object acMacro15: TAction
      Category = 'Macros'
      OnExecute = acMacro15Execute
    end
    object acMacro16: TAction
      Category = 'Macros'
      OnExecute = acMacro16Execute
    end
    object acMacro17: TAction
      Category = 'Macros'
      OnExecute = acMacro17Execute
    end
    object acMacro18: TAction
      Category = 'Macros'
      OnExecute = acMacro18Execute
    end
    object acMacro19: TAction
      Category = 'Macros'
      OnExecute = acMacro19Execute
    end
    object acMacro20: TAction
      Category = 'Macros'
      OnExecute = acMacro20Execute
    end
    object acMacro21: TAction
      Category = 'Macros'
      OnExecute = acMacro21Execute
    end
    object acMacro22: TAction
      Category = 'Macros'
      OnExecute = acMacro22Execute
    end
    object acMacro23: TAction
      Category = 'Macros'
      OnExecute = acMacro23Execute
    end
    object acMacro24: TAction
      Category = 'Macros'
      OnExecute = acMacro24Execute
    end
    object acMacro25: TAction
      Category = 'Macros'
      OnExecute = acMacro25Execute
    end
    object acMacro26: TAction
      Category = 'Macros'
      OnExecute = acMacro26Execute
    end
    object acMacro27: TAction
      Category = 'Macros'
      OnExecute = acMacro27Execute
    end
    object acMacro28: TAction
      Category = 'Macros'
      OnExecute = acMacro28Execute
    end
    object acMacro29: TAction
      Category = 'Macros'
      OnExecute = acMacro29Execute
    end
    object acMacro30: TAction
      Category = 'Macros'
      OnExecute = acMacro30Execute
    end
    object ecTreeParent: TAction
      Category = 'Tree'
      OnExecute = ecTreeParentExecute
    end
    object ecTreeNextBrother: TAction
      Category = 'Tree'
      OnExecute = ecTreeNextBrotherExecute
    end
    object ecTreePrevBrother: TAction
      Category = 'Tree'
      OnExecute = ecTreePrevBrotherExecute
    end
    object ecReplaceSelFromClipAll: TAction
      Category = 'Find'
      OnExecute = ecReplaceSelFromClipAllExecute
    end
    object acRereadOut: TAction
      Category = 'File'
      OnExecute = acRereadOutExecute
    end
    object ecToggleFocusProject: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusProjectExecute
    end
    object ecToggleFocusMasterSlave: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusMasterSlaveExecute
    end
    object ecToggleSlave: TAction
      Category = 'View'
      OnExecute = ecToggleSlaveExecute
    end
    object ecRuler: TAction
      Category = 'View'
      OnExecute = ecRulerExecute
    end
    object ecSplitViewsVertHorz: TAction
      Category = 'View'
      OnExecute = ecSplitViewsVertHorzExecute
    end
    object ecSplitSlaveVertHorz: TAction
      Category = 'View'
      OnExecute = ecSplitSlaveVertHorzExecute
    end
    object ecGotoBk: TAction
      Category = 'Bk'
      OnExecute = ecGotoBkExecute
    end
    object ecToggleFocusClips: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusClipsExecute
    end
    object ecSmartHl: TAction
      Category = 'View'
      OnExecute = ecSmartHlExecute
    end
    object ecDropPortableBk: TAction
      Category = 'Bk'
      OnExecute = ecDropPortableBkExecute
    end
    object ecGotoPortableBk: TAction
      Category = 'Bk'
      OnExecute = ecGotoPortableBkExecute
    end
    object ecNumericConverter: TAction
      Category = 'Edit'
      OnExecute = ecNumericConverterExecute
    end
    object ecIndentLike1st: TAction
      Category = 'Edit'
      OnExecute = ecIndentLike1stExecute
    end
    object ecCenterLines: TAction
      Category = 'EditBlank'
    end
    object ecToggleFocusTabs: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusTabsExecute
    end
    object ecCollapseParent: TAction
      Category = 'View'
      OnExecute = ecCollapseParentExecute
    end
    object ecCollapseWithNested: TAction
      Category = 'View'
      OnExecute = ecCollapseWithNestedExecute
    end
    object ecToggleLineCommentAlt: TAction
      Category = 'Comment'
      OnExecute = ecToggleLineCommentAltExecute
    end
    object ecCommandsList: TAction
      Category = 'View'
      OnExecute = ecCommandsListExecute
    end
    object ecProjectList: TAction
      Category = 'Goto'
      OnExecute = ecProjectListExecute
    end
    object ecEditColumn: TAction
      Category = 'Edit'
      OnExecute = ecEditColumnExecute
    end
    object ecDedupAll: TAction
      Category = 'Edit'
      OnExecute = ecDedupAllExecute
    end
    object ecDedupAdjacent: TAction
      Category = 'Edit'
      OnExecute = ecDedupAdjacentExecute
    end
    object ecAlignWithSep: TAction
      Category = 'EditBlank'
    end
    object ecReverseLines: TAction
      Category = 'Edit'
      OnExecute = ecReverseLinesExecute
    end
    object ecShuffleLines: TAction
      Category = 'Edit'
      OnExecute = ecShuffleLinesExecute
    end
    object ecExtractDupsCase: TAction
      Category = 'Edit'
      OnExecute = ecExtractDupsCaseExecute
    end
    object ecExtractDupsNoCase: TAction
      Category = 'Edit'
      OnExecute = ecExtractDupsNoCaseExecute
    end
    object ecNonPrintOff: TAction
      Category = 'View'
    end
    object ecNonPrintSpaces: TAction
      Category = 'View'
      OnExecute = ecNonPrintSpacesExecute
    end
    object ecNonPrintEol: TAction
      Category = 'View'
      OnExecute = ecNonPrintEolExecute
    end
    object ecNonPrintBoth: TAction
      Category = 'View'
      OnExecute = ecNonPrintBothExecute
    end
    object ecNonPrintEolDetails: TAction
      Category = 'View'
      OnExecute = ecNonPrintEolDetailsExecute
    end
    object acOpenBySelection: TAction
      Category = 'File'
      OnExecute = acOpenBySelectionExecute
    end
    object acExportRTF: TecExportRTFAction
      Tag = 704
      Category = 'File'
      Caption = 'Export to RTF...'
      Hint = 
        'Export the current editor contents to RTF including all highligh' +
        'tings'
      BeforeExecute = acExportRTFBeforeExecute
      DefaultExt = '.RTF'
      Filter = 'Rich text files (*.rtf)|*.rtf|All files (*.*)|*.*'
      Options = [ofOverwritePrompt, ofPathMustExist, ofEnableSizing]
      OptionsEx = []
    end
    object acExportHTML: TecExportHTMLAction
      Tag = 705
      Category = 'File'
      Caption = 'Export to HTML...'
      Hint = 
        'Export the current editor contents to HTML including all highlig' +
        'htings'
      BeforeExecute = acExportHTMLBeforeExecute
      DefaultExt = '.HTML'
      Filter = 'HTML files (*.htm, *.html)|*.htm;*.html|All files (*.*)|*.*'
      Options = [ofOverwritePrompt, ofPathMustExist, ofEnableSizing]
      OptionsEx = []
    end
    object ecToggleFocusConsole: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusConsoleExecute
    end
    object ecToggleProjPreview: TAction
      Category = 'View'
      OnExecute = ecToggleProjPreviewExecute
    end
    object ecToggleFocusBookmarks: TAction
      Category = 'Focus'
      OnExecute = ecToggleFocusBookmarksExecute
    end
    object acRestart: TAction
      Category = 'File'
      OnExecute = acRestartExecute
    end
    object ecDedupAllAndOrig: TAction
      Category = 'Edit'
      OnExecute = ecDedupAllAndOrigExecute
    end
    object ecExtractUniq: TAction
      Category = 'Edit'
      OnExecute = ecExtractUniqExecute
    end
  end
  object SD: TTntSaveDialog
    OnShow = SDShow
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing, ofForceShowHidden]
    Left = 608
    Top = 308
  end
  object OD: TTntOpenDialog
    OnShow = ODShow
    Filter = 'All files (*.*)|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofPathMustExist, ofEnableSizing, ofForceShowHidden]
    Left = 584
    Top = 308
  end
  object SyntaxManager: TSyntaxManager
    MenuPlainText = 'Plain Text'
    OnChange = SyntaxManagerChange
    Left = 336
    Top = 252
  end
  object PropsManager: TPropsManager
    Template = TemplateEditor
    IniSection = 'Template'
    UseRegistry = False
    Properties.Strings = (
      ';Editor'
      'BlockIndent'
      'DefaultStyles.CurrentLine.Enabled'
      'DisableFolding'
      'HorzRuler.Height'
      'HorzRuler.Visible'
      'LineNumbers.Margin'
      'LineNumbers.NumberingStyle'
      'LineNumbers.Visible'
      'LineSpacing'
      'RightMargin'
      'SelectModeDefault'
      'ShowRightMargin'
      'TabList.AsString'
      'TabMode'
      'WordWrap'
      'ecACP.FilterType'
      'ecACP.DropDownCount'
      'SyntKeyMapping.AsString'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 368
    Top = 276
  end
  object ecSyntPrinter: TecSyntPrinter
    Units = puMM
    MarginLeft = 20.000000000000000000
    MarginRight = 10.000000000000000000
    MarginTop = 10.000000000000000000
    MarginBottom = 10.000000000000000000
    Orientation = poPortrait
    FontText.Charset = DEFAULT_CHARSET
    FontText.Color = clWindowText
    FontText.Height = -13
    FontText.Name = 'Courier New'
    FontText.Style = []
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = -13
    FontHeader.Name = 'Courier New'
    FontHeader.Style = []
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = -13
    FontFooter.Name = 'Courier New'
    FontFooter.Style = []
    Header = #9#9'#title#'#13#10' '#13#10
    Footer = ' '#13#10'#datetime#'#9#9'Page #page#'#13#10
    Copies = 1
    Options = [mpWordWrap, mpBlockHighlight, mpBackColor, mpHideCollapsed, mpBlockStaples]
    FontLineNumders.Charset = DEFAULT_CHARSET
    FontLineNumders.Color = clWindowText
    FontLineNumders.Height = -11
    FontLineNumders.Name = 'Courier New'
    FontLineNumders.Style = []
    LineNumbersPos = lnpLeft
    PrintSelection = False
    Left = 453
    Top = 264
  end
  object PopupEditor: TSpTBXPopupMenu
    Images = ImageListIcons
    OnPopup = PopupEditorPopup
    Left = 352
    Top = 304
    object TBXItemCtxUndo: TSpTBXItem
      Action = ecUndo
      ImageIndex = 10
      OnSelect = ButtonOnSelect
    end
    object TBXItemCtxRedo: TSpTBXItem
      Action = ecRedo
      ImageIndex = 11
      OnSelect = ButtonOnSelect
    end
    object TBXSeparatorItem14: TSpTBXSeparatorItem
    end
    object TBXItemCtxCut: TSpTBXItem
      Caption = 'Cut'
      Hint = 'Cut selection to clipboard'
      ImageIndex = 6
      OnClick = TBXItemCtxCutClick
      OnSelect = ButtonOnSelect
    end
    object TBXItemCtxCopy: TSpTBXItem
      Caption = 'Copy'
      Hint = 'Copy selection to clipboard'
      ImageIndex = 5
      OnClick = TBXItemCtxCopyClick
      OnSelect = ButtonOnSelect
    end
    object TBXItemCtxPaste: TSpTBXItem
      Caption = 'Paste'
      Hint = 'Paste clipboard'
      ImageIndex = 7
      OnClick = TBXItemCtxPasteClick
      OnSelect = ButtonOnSelect
    end
    object TBXItemCtxDel: TSpTBXItem
      Caption = 'Delete'
      Hint = 'Clear current selection'
      ImageIndex = 8
      OnClick = TBXItemCtxDelClick
      OnSelect = ButtonOnSelect
    end
    object TBXSeparatorItem13: TSpTBXSeparatorItem
    end
    object TBXItemCtxSelectAll: TSpTBXItem
      Caption = 'Select all'
      Hint = 'Select all text'
      ImageIndex = 9
      OnClick = TBXItemCtxSelectAllClick
      OnSelect = ButtonOnSelect
    end
    object TBXSeparatorItem23: TSpTBXSeparatorItem
    end
    object TBXItemCtxCopyUrl: TSpTBXItem
      Caption = 'Copy link'
      Hint = 'Copy URL to clipboard'
      Enabled = False
      ImageIndex = 25
      OnClick = TBXItemCtxCopyUrlClick
      OnSelect = ButtonOnSelect
    end
    object TBXItemCtxOpenSel: TSpTBXItem
      Hint = 'Open selected filename in separate tab'
      Enabled = False
      OnClick = TBXItemCtxOpenSelClick
      OnSelect = ButtonOnSelect
    end
    object TBXItemCtxAddColor: TSpTBXItem
      Caption = 'Add to recent colors'
      Hint = 'Add color token to "Recent colors" menu'
      Enabled = False
      OnClick = TBXItemCtxAddColorClick
      OnSelect = ButtonOnSelect
    end
    object TBXItemCtxFindID: TSpTBXItem
      Caption = 'Go to definition'
      Hint = 'Go to definition of identifier (only with plugin installed)'
      Enabled = False
      OnClick = TBXItemCtxFindIDClick
      OnSelect = ButtonOnSelect
    end
    object TBXSubmenuCtxMore: TSpTBXSubmenuItem
      Caption = 'more'
      OnPopup = TBXSubmenuCtxMorePopup
      object TBXItemCtxPasteNoCurChange: TSpTBXItem
        Caption = 'Paste, keep position'
        Hint = 'Paste from clipboard, then restore caret position'
        OnSelect = ButtonOnSelect
      end
      object TBXItemCtxPasteToColumn1: TSpTBXItem
        Caption = 'Paste, to 1st column'
        Hint = 'Paste into first column of current line'
        OnSelect = ButtonOnSelect
      end
      object TBXItemCtxPasteAsColumn: TSpTBXItem
        Caption = 'Paste, as column block'
        OnClick = TBXItemCtxPasteAsColumnClick
      end
      object TBXItemCtxPasteBkmkLines: TSpTBXItem
        Caption = 'Paste, into bookmarked lines'
        OnClick = TBXItemCtxPasteBkmkLinesClick
      end
      object TBXSeparatorItem80: TSpTBXSeparatorItem
      end
      object TBXItemCtxCopyAppend: TSpTBXItem
        Caption = 'Copy/Append'
        Hint = 'Append selection to clipboard'
        OnClick = TBXItemCtxCopyAppendClick
        OnSelect = ButtonOnSelect
      end
      object TBXItemCtxCutAppend: TSpTBXItem
        Caption = 'Cut/Append'
        Hint = 'Cut selection and append it to clipboard'
        OnClick = TBXItemCtxCutAppendClick
        OnSelect = ButtonOnSelect
      end
      object TBXSeparatorItem34: TSpTBXSeparatorItem
      end
      object TBXItemCtxCopyHTML: TSpTBXItem
        Caption = 'Copy as HTML'
        OnSelect = ButtonOnSelect
      end
      object TBXItemCtxCopyRTF: TSpTBXItem
        Caption = 'Copy as RTF'
        OnClick = ecCopyAsRTFExecute
        OnSelect = ButtonOnSelect
      end
    end
    object TBXItemCtxCustomize: TSpTBXItem
      Caption = 'Customize...'
      ImageIndex = 4
      OnClick = TBXItemCtxCustomizeClick
    end
    object TBXSeparatorItem45: TSpTBXSeparatorItem
    end
    object TBXItemCtxTool1: TSpTBXItem
    end
    object TBXItemCtxTool2: TSpTBXItem
    end
    object TBXItemCtxTool3: TSpTBXItem
    end
    object TBXItemCtxTool4: TSpTBXItem
    end
    object TBXItemCtxTool5: TSpTBXItem
    end
    object TBXItemCtxTool6: TSpTBXItem
    end
    object TBXItemCtxTool7: TSpTBXItem
    end
    object TBXItemCtxTool8: TSpTBXItem
    end
    object TBXItemCtxTool9: TSpTBXItem
    end
    object TBXItemCtxTool10: TSpTBXItem
    end
    object TBXItemCtxTool11: TSpTBXItem
    end
    object TBXItemCtxTool12: TSpTBXItem
    end
    object TbxItemCtxTool13: TSpTBXItem
    end
    object TbxItemCtxTool14: TSpTBXItem
    end
    object TbxItemCtxTool15: TSpTBXItem
    end
    object TbxItemCtxTool16: TSpTBXItem
    end
    object TbxSubmenuCtxPlugins: TSpTBXSubmenuItem
      Caption = 'Plugins'
      Visible = False
    end
  end
  object ImgListGutter: TImageList
    AllocBy = 30
    Left = 288
    Top = 192
    Bitmap = {
      494C010115001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0550000C055000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BF540000D47A0B00C0550000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BE510000F4BA2300D5770800C9681A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BE510000E6910100F0AD1500D4760800C968
      1900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CA671300C45E0600C45E0700C55F
      0800C5600900C5600A00C5610B00CA670900E9930000E18B0000F0A90E00D073
      0A00C96818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DC8C2500FFE76700FFD55500FDCD
      4700FCC63E00F8BC3300F5B42700F3AB1C00ED9F1200E9950500E48C0000ED9E
      0200CE720C00C968170000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DE912800FFE67600FAD06300F8CD
      5600F7CA4D00F6C44300F4BD3900F2B32F00EFA82400EEA41A00EC9C0E00E68F
      0200EF9B0000D27C1600C7631200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3982E00FFEB8300FBDA6F00F9D3
      6500F9CF5C00F7C95200F6C74900F5BF4000F3B63500F1B02C00EFA92100EDA4
      1800E68A0000F6BF2900EDBD6500C96511000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9A23100FFF08E00FDE17A00FCDC
      7200FBD76900F9D26000F8CB5500F7C84E00F5C54700F4BD3C00F3B53400EFA7
      1B00F2B62B00F5D67500DD963B00C5600D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDAC3800FFF49D00FEE78900FEE3
      8000FDE07A00FBDC7100FBD76900FAD26100F7CD5500F6C95100F5BD3600F2BD
      3800FCDC6E00DE922C00C45D0B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1BC5A00FFFFFA00FFFFE300FFFF
      E000FFFEDD00FFFCD800FFFDD900FFF7C700FBD46300F8C94700F7D47400FEE6
      8C00E3931F00C45D0D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEA42A00EEB14400EDAB3E00ECAA
      3D00EBA83C00EAA83D00E8A03700E7A33B00FDDE6700FDE9A200FFF3B100E59F
      2E00C25809000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECA01A00FFFBC800FFFCCC00E5A54000C157
      0700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F3B83B00FFFEC800E5A63F00C15605000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8BE3300E4A54100C1550500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DA8A2600C157080000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000090C5000090C5000090
      C5000090C5000090C5000090C5000090C5000090C5000090C5000090C5000090
      C5000090C5000090C5000090C500000000000000000000000000000000000000
      0000000000000701AF000702B9000500A9000500A9000702B9000701AF000000
      000000000000000000000000000000000000000000002C2BEB003B44EB003B44
      EB00393EE600393EE6003237E0001119DA001119DA002B2DD4003031D7002B2D
      D4002B29CF002926CE001410B300000000000000000000000000000000000000
      0000000000001AA41C001AA41C00000000000000000000000000000000000000
      0000000000000000000000000000000000000090C5000EB8E90010CAFA0010CA
      FA0010CAFA0010CAFA0010CAFA0010CAFA0010CAFA0010CAFA0010CAFA0010CA
      FA0010CAFA0010CAFA000AB4E6000090C5000000000000000000000000000701
      AF000D08DF001712F6001712F4000F0BF1000E0AF0001713F3001813F5000D08
      DF000701AF000000000000000000000000003C39EE006D97F6004E71F4004E71
      F400496BF4004461F2002C4CF400889AF90096A6FA00112FF1003147F900303E
      F8002D34F9002D34F9002C2CFB001410B3000000000000000000000000000000
      000022B72B002DCE3D0025BE2F0021B529000000000000000000000000000000
      0000000000000000000000000000000000000395CA0012B8E80018CDFA0018CD
      FA0018CDFA0018CDFA0018CDFA00000000000000000018CDFA0018CDFA0018CD
      FA0017CDFA0017CDFA000FB6E7000395CA0000000000000000000701AF001614
      F9001816F6001A17F1001511F1009B98F9009B98F9001511F1001A17F1001A16
      F4001715F8000701AF0000000000000000003F3DF000688BF500425CF1004461
      F200425CF1002945EF006376F300FEFEFE00FEFEFE005B6BF1001B2CED002E39
      ED002B30EC002729EC002A27FE00140FB40000000000000000000000000020B4
      270031D548002DD4410023CD350025BD2E0022B62A0000000000000000000000
      00000000000000000000000000000000000000000000059ACD0023D1FA0024D1
      FA0024D1FA0024D1FA0024D1FA00000000000000000024D1FA0023D1FA0024D1
      FA0024D1FA0024D1FA00059ACD0000000000000000000906C1001A1EF8001D20
      F2001D20F200191CF200494CF400FFFFFF00FFFFFF00494CF400191CF2001D20
      F2001D20F2001B1FF7000906C10000000000000000006376F3004E71F4004461
      F2004461F2002F4BEF00566CF200FEFEFE00FEFEFE004E60F0001F30EE002E39
      ED002B30EC002C2CFB00221EDD000000000000000000000000001EB4240031D4
      4A0030D74A004ADE63006DE4810025CE360024BF2F0021B52900000000000000
      00000000000000000000000000000000000000000000079ED1001DBEEA0031D6
      FB0031D6FB0031D6FB0031D6FB0031D6FB0031D6FB0031D6FB0031D6FB0031D6
      FB0031D6FB001FBBE700079ED10000000000000000000D08DF001C23F7001D24
      F2001D24F2001A21F200373FF300FFFFFF00FFFFFF00373FF3001A21F2001D24
      F2001D24F2001D25F500110EE20000000000000000003C33EC00678AF5003C59
      F1004461F200425CF1002542EF003F52EF003F52F0000D27EC00313FEF002E39
      ED002B30EC002C2CFB001F1BAE0000000000000000001CB41E0033D44D0035DA
      530056E06D0051E167009BF1B00079E78D0022CE350024BD2E001AA51E000000
      000000000000000000000000000000000000000000000000000009A3D60041DB
      FB0041DBFC0041DCFC0041DCFC00000000000000000041DBFC0041DCFC0041DC
      FC0041DCFC0009A3D60000000000000000000F0CD200202EFA00202DF300202D
      F300202DF300202DF3001C2AF3001426F2001426F2001C2AF300202DF300202D
      F300202DF300202DF300212EF4002B25D20000000000000000004C54EE004E71
      F400425CF100304CEF00566CF200FEFEFE00FEFEFE00495EF0001B2CED002E39
      ED002D34F9001F1CD00000000000000000001C9B210030D14A0039DD5D005FE5
      780038C5400011B4130022BC2700A6F5B8006CE3810021CF340021B529001FAE
      26000000000000000000000000000000000000000000000000000BA7DA0039D1
      F40051E1FC0051E1FC0051E1FC00000000000000000051E1FC0051E1FC0051E1
      FC0040D0F1000BA7DA0000000000000000000F0CD2001F2EEA002231F3002231
      F3002231F3002130F3001221F200FFFFFF00FFFFFF001221F2002130F3002231
      F3002231F3002231F3002232F4002B25D20000000000000000003C33EC006980
      F5003C59F100203DEE005F74F300FEFEFE00FEFEFE005B6BF100172AED00313D
      F4002C30F0004B47BB00000000000000000030C7410041E1690073E8910045CA
      4E000D9D0B000000000011A310002DC03200AFF7C0005BDF6F0022CF360025BE
      3000169A18000000000000000000000000000000000000000000000000000EAD
      DF0063E7FD0063E7FD0063E8FD00000000000000000063E7FD0063E8FD0063E8
      FD000EADDF000000000000000000000000002B25D200273DF0002238F300253B
      F300253BF3001F36F3005168F500FFFFFF00FFFFFF005168F5001F36F300253B
      F300253BF300253BF300253BF3000C05D2000000000000000000000000004C54
      EE007C96F7003C59F1006376F300FEFEFE00FEFEFE005161F1001023ED002B3A
      F9003C33EC000000000000000000000000002BC1350080EB9E005BD36B000C9F
      0A000000000000000000000000000EA70D003CC64700B3F8C50046DA5C0024D0
      380020AD250015981400000000000000000000000000000000000000000010B2
      E4005EE1F80074EDFD0074EDFD00000000000000000074EDFD0074EDFD005EE1
      F80010B2E400000000000000000000000000453BE800647AF7004058F500263D
      F400283FF400223AF400546CF600FFFFFF00FFFFFF00546CF600223AF400283F
      F400283FF400283FF400283FF4000800C8000000000000000000000000003C33
      EC008B99F5006980F5008997F600FEFEFE00FEFEFE007180F3004151F500585F
      EF004C54EE000000000000000000000000000000000010B8390013B83A000000
      0000000000000000000000000000000000000CA10B0053CE6000B3F7C70041DA
      560026D039001CA92100159A1400000000000000000000000000000000000000
      000012B8E80083F3FE0084F3FE00000000000000000084F3FE0083F3FE0012B8
      E800000000000000000000000000000000005E55EE00637BF400647CF700687F
      F7006078F7002C47F500566EF600FFFFFF00FFFFFF005871F600253FF4002944
      F4002742F4004A65F600617AF9000C05D2000000000000000000000000000000
      00006864E900728AF9008393F600FEFEFE00FEFEFE008393F6005C6BF9005956
      D100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000DA70C006BD97B00BFF9
      D10044DC5A0024CB360019A41C001BA625000000000000000000000000000000
      000014BCEC0075EAF90091F8FE00000000000000000091F8FE0075EAF90014BC
      EC00000000000000000000000000000000005E55EE006C88FB00657EF700667F
      F7006780F700667FF70092A6FA00FFFFFF00FFFFFF00748DF7004360F6005975
      F7006780F7006880F7006E8AFA000C05D2000000000000000000000000000000
      00004C54EE00728AF9008393F600FEFEFE00FEFEFE008393F6005C6BF9004C54
      EE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000017B71F0068DB
      7900B8F8CB004ADF5F0022C6330018A11B000000000000000000000000000000
      00000000000016C0F0009EFCFE0000000000000000009EFCFE0016C0F0000000
      000000000000000000000000000000000000000000005B58FB0090AAFC006985
      F7006A86F7006683F70092A8FA00FFFFFF00FFFFFF0092A8FA006683F7006A86
      F7006985F70092ABFD004B4ACD00000000000000000000000000000000000000
      000000000000737AF000869CFA00FEFEFE00FEFEFE007F8FFB005057E6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001ABA
      220054D464009DEEAD004FE167001FB52B000000000000000000000000000000
      00000000000018C5F50085EFFA00A6FFFF00A6FFFF0085EFFA0018C5F5000000
      00000000000000000000000000000000000000000000443AF400828DFC006A87
      F7006D89F7006B87F70099AEFA00FFFFFF00FFFFFF0099AEFA006B87F7006D89
      F7006A87F700727CE5003C35DB00000000000000000000000000000000000000
      000000000000746DE5008393F6008B99F500919DF6005C73FA006D68D5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000016B81E0050D55F007EE690001CB627000000000000000000000000000000
      000000000000000000001AC8F700A6FFFF00A6FFFF001AC8F700000000000000
      00000000000000000000000000000000000000000000000000004338EF00828D
      FB00AAC2FF007A95FD006D8CFA00C9D4FC00C9D4FC006B8AF8007995FA00ABC3
      FF007D8BEF004338EF0000000000000000000000000000000000000000000000
      000000000000000000006E72E9006F8AFA005C73FA005C5FE200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003BCF4C0091DC9100000000000000000000000000000000000000
      000000000000000000001BCAF90085EFFA0085EFFA001BCAF900000000000000
      000000000000000000000000000000000000000000000000000000000000443A
      F4004338EF00ACC2FF00A6BDFE0094ADFB0094ADFB00A6BDFB00ACC3FF005150
      DC003B35DE000000000000000000000000000000000000000000000000000000
      000000000000000000004C54EE00787DEB006E72E9004C54EE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001BCAF9001BCAF90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004338EF004338EF004338EF004338EE004B4ADD004B4ADD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004C54EE004C54EE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C19A8000A8724E009D6037009D603700A8724E00C19A80000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003F3EB7001210C300100DC000100DC0001210C300100DC000100DC0003C39
      B60000000000000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C19A
      800098572B009451240094512400945124009451240094512400945124009857
      2B00C09A7F000000000000000000000000000000000000000000000000003938
      B9001715EB00100EF7000F0CF4000F0CF4000F0CF4000F0BF500100EF7000C09
      EA003330B900000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C6840000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B48566009451
      2400945124009451240094512400945124009451240094512400945124009451
      240094512400B4856600000000000000000000000000000000003B38BF00191A
      EC001417F4001010ED001010ED001010ED001010ED000F0FED000F0FED00100F
      F2000F0DE9003432BE000000000000000000000000003636360063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      6300AF7B4E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      00000000000000000000000000000000000000000000C19A8000945124009451
      240094512400D8D8D800F3F3F300FFFFFF00FFFFFF00F3F3F300D8D8D8009451
      24009451240094512400C19A800000000000000000003C39C5001A1FEB001417
      F4001115EE001115EE001115EE001115EE001115EE001115EE001115EE001115
      EE001113F2001010EA003634C30000000000000000003D3D3D0063636300CC99
      6600CC996600CC9966003633FF00CC996600CC9966003633FF00CC996600CC99
      6600B58153000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000096552900945124009451
      24009451240094512400EFEFEF00FFFFFF00FFFFFF00EFEFEF00945124009451
      2400945124009451240096552900000000004543CC001D27EF000A16F5000E1A
      F100141DEF001119F1001119F100141BEF001016F0000A12F0001016F0001016
      F0000F14F1001417F4001215EA003E3DCC00000000003D3D3D006C6C6C00D09D
      6A00D09D6A00D09D6A003B38FF004542FF004542FF003B38FF00D09D6A00D09D
      6A00B58153000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000000000000000
      000000000000000000000000000000000000C29C830094512400924E20009450
      23009451240094512400EFEFEF00FFFFFF00FFFFFF00EFEFEF00945124009451
      2400945124009451240094512400C19A80002126D9002934E600151DF700151D
      F700151DF700151DF700151DF700151DF700151DF700151DF700151DF700151D
      F700151DF700151DF700151DF7001113D50000000000444444006C6C6C00D3A0
      6D00D3A06D00D3A06D00433FFF006969FF006969FF00433FFF00D3A06D00D3A0
      6D00BA8656000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000000000000000000000800000000000
      000000000000000000000000000000000000B07E5C00A66E49009B5C32009451
      2400924E200093502300EFEFEF00FFFFFF00FFFFFF00EFEFEF00945124009451
      2400945124009451240094512400A8724E002126D900AFAAE600FFFFFF00FFFF
      FF00292AD100FFFFFF000006DA000006DA00EBE8F200FFFFFF00EBE8F2002B34
      E100FFFFFF000E1AF1001520F000191DD900000000004444440074747400D9A6
      7300D9A67300D9A673004542FF006969FF006969FF004542FF00D7A47100D7A4
      7100BE8A5A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000800000000000
      000000000000000000000000000000000000AA755200B07E5C00AD7A5800A872
      4E009E633A0098572B00F3F3F300FFFFFF00FFFFFF00EFEFEF00935023009350
      23009450230094502300945124009D6037002B32E0000816E9008F88EC00FFFF
      FF002B34E100FFFFFF002B34E1002B34E100FFFFFF000D21F300FFFFFF002B34
      E100FFFFFF00FFFFFF00FFFFFF000D0FD900000000004444440074747400DBA8
      7500DBA87500DBA875004542FF006969FF006969FF004542FF00D9A67300D9A6
      7300C18E5D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      000000000000000000000000000000000000AC785500B0805E00B0805E00B080
      5E00B0805E00AF7D5C00EBEBEB00EFEFEF00EFEFEF00E3E3E300965529009451
      24009451240093502300935023009D6037004B51E800AFAAE600FFFFFF000611
      E4000611E400FFFFFF002B34E1002B34E100FFFFFF001029F200FFFFFF002B34
      E100FFFFFF00766FED00FFFFFF002D2CDF00000000004D4D4D007A7A7A00DEAB
      7800DEAB7800DEAB78004D47FF007A7AFF007A7AFF004D47FF00DEAB7800DEAB
      7800C18E5D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      000000000000000000000000000000000000B2816100B4836400B2816100B281
      6100B2816100CDCDCD00D8D8D800DCDCDC00DCDCDC00D6D6D600AA755200A66E
      4900A3694200A0653D009E633A00AC785500575FEC00FFFFFF00FFFFFF00AFAA
      E600FFFFFF00FFFFFF00FFFFFF00AFAAE600EBE8F200FFFFFF00EBE8F2002B34
      E100FFFFFF00FFFFFF00FFFFFF004041E800000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00E1AE7B004D47FF007A7AFF007A7AFF004D47FF00E1AE7B00E1AE
      7B00C69260000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      000000000000000000000000000000000000C5A18900B2846400B4856600B485
      6600B6886900B4856600B2846400B2816100B2816100B0805E00AF7D5C00AE7C
      5A00AC785500AA755200A7704C00C49F86006067EE004E67F3004E67F3004E67
      F3004E67F3004E67F3004E67F3004E67F3004E67F3004E67F3004E67F3004E67
      F3004E67F3004E67F3004E67F300424AEC00000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00514CFF008383FF008383FF004D47FF00E3B07D00E3B0
      7D00C99663000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      00000000000000000000000000000000000000000000AD7A5800B88C6E00B78A
      6C00B78A6C00B6886900D2BDB000FBFBFB00FBFBFB00D0BBAD00B0805E00AE7C
      5A00AC785500AC785500A46C4600000000006D6BEE00778DF6005374F4004A69
      F4005170F4004C6AF4004A69F400506EF4005170F4004765F3004C6AF400506E
      F4004866F4004A69F4004E67F3006664ED00000000005454540054545400CC99
      6600CC996600CC996600514CFF008383FF008383FF00514CFF00CC996600CC99
      6600C99663000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000000000000000
      00000000000000000000000000000000000000000000C5A18900B78A6C00BB90
      7500B88C6E00B88B6D00DCDCDC00EBEBEB00EBEBEB00DCDCDC00B2816100B07E
      5C00AF7D5C00AA755200C49F860000000000000000006A67F1007D91F6005F7C
      F5005875F4005E78F5005875F4005875F4005875F4005875F4005875F4005672
      F4005875F400546DF4005F5EEF00000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300443EF6008C8CFF008C8CFF00443EF600F7F7F6000000
      0000BBBBAA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD937800B98D
      7000BD947800BC917500C1AEA100CDCDCD00CDCDCD00BFAB9D00B2846400B483
      6400AD7A5800B98D7000000000000000000000000000000000006A67F1007D91
      F6006282F6005875F4005875F4005E78F5005875F4005875F4005875F4005B7C
      F4005672F400605EF200000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600777FE700555BEF00555BEF00777FE700CC996600CC99
      6600D8B28C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C5A1
      8900B2816100BB907500BD947800BC917500B98D7000B88B6D00B4836400AA75
      5200C49F86000000000000000000000000000000000000000000000000006B68
      F4008095F7007190F7006C8BF7006D8CF6006D8CF6006C8BF7006D8CF6005E78
      F500605EF2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5A18900B6886900B2816100B2816100B4856600C5A189000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000716EF400686FF500636AF500646BF500646BF500646BF500676EF5006D6B
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCBDB200A5999000A599
      9000A5999000A5999000A5999000A5999000A5999000A5999000A5999000A599
      9000A5999000AEA19800CCBDB2000000000000000000BDB1A9007D7670006A64
      60006A6460006A6460006A6460006A6460006A6460006A6460006A6460006A64
      60006A6460007D767000BDB1A90000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000CCBDB200B8ADA600F5ECE500F5EC
      E500F5ECE500F5ECE500F5ECE500F5ECE500F5ECE500F5ECE500F5ECE500F5EC
      E500F5ECE500ECE3DC00B8ADA600CCBDB200BDB1A90080787300D7CAC000F6E6
      DB00F6E6DB00F6E6DB000000000022667B005B65680084848400848484008B8B
      8B008B8B8B009595950095959500BDB1A900000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000AEA19800FCF3EB00FBECE100FBEC
      E100FBECE100FBECE1000000000022667B005B65680084848400848484008B8B
      8B008B8B8B009595950095959500AEA198007D767000C2B7B000EADBD100F9E9
      DD00F9E9DD00F9E9DD00408BA300A5D4E5004FC0D300829FA800F9E9DD00F9E9
      DD00F9E9DD00F9E9DD00F9E9DD007D767000000000003636360063636300C996
      6300C9966300C9966300F7F7F600F7F7F600F7F7F600C9966300C9966300C996
      6300AF7B4E00000000000000000000000000000000003636360063636300C996
      6300C9966300F7F7F600F7F7F600F7F7F600F7F7F600C9966300C9966300C996
      6300AF7B4E00000000000000000000000000A5999000FFFAF400FBECE100FBEC
      E100FBECE100FBECE100408BA300A5D4E5004FC0D300829FA800FBECE100FBEC
      E100FBECE100FBECE100FFFAF400A59990006A646000CDC1B900EADBD100F9E9
      DD00F9E9DD00F9E9DD00CAE0E7004A96AE00CBEDFE004FC0D30052879800F9E9
      DD00F9E9DD00F6E6DB00F6E6DB006A646000000000003D3D3D0063636300CC99
      6600CC996600F7F7F600F7F7F600CC996600F7F7F600F7F7F600CC996600CC99
      6600B5815300000000000000000000000000000000003D3D3D0063636300CC99
      6600CC996600CC996600CC996600CC996600F7F7F600F7F7F600CC996600CC99
      6600B5815300000000000000000000000000A5999000FFFAF400FBECE100FBEC
      E100FBECE100FBECE100CAE0E7004A96AE00CBEDFE004FC0D30052879800FBEC
      E100FBECE100FBECE100FFFAF400A59990006A646000CDC1B900EADBD100F9E9
      DD00F9E9DD00F9E9DD00F9E9DD00ADD3DF0057A2BA0065DCED0033A1B5000873
      8900F9E9DD00F6E6DB00F6E6DB006A646000000000003D3D3D006C6C6C00D09D
      6A00D09D6A00F7F7F600F7F7F600D09D6A00F7F7F600F7F7F600D09D6A00D09D
      6A00B5815300000000000000000000000000000000003D3D3D006C6C6C00D09D
      6A00D09D6A00D09D6A00D09D6A00D09D6A00F7F7F600F7F7F600D09D6A00D09D
      6A00B5815300000000000000000000000000A5999000FCF5F100F8E9DE00F8E9
      DE00F8E9DE00F8E9DE00F8E9DE00ADD3DF0057A2BA0065DCED0033A1B5000873
      8900F8E9DE00F8E9DE00FCF5F100A59990006A6460000000000022667B00636D
      70008B8B8B008B8B8B0095959500B2B2B20046AEBE000196AC007AE7F8004EBE
      D000006D8300F6E6DB00F6E6DB006A64600000000000444444006C6C6C00D3A0
      6D00D3A06D00F7F7F600F7F7F600F7F7F600F7F7F600F7F7F600D3A06D00D3A0
      6D00BA86560000000000000000000000000000000000444444006C6C6C00D3A0
      6D00D3A06D00D3A06D00F7F7F600F7F7F600F7F7F600F7F7F600D3A06D00D3A0
      6D00BA865600000000000000000000000000A59990000000000022667B00636D
      70008B8B8B008B8B8B0095959500B2B2B20046AEBE000196AC007AE7F8004EBE
      D000006D8300F2E4D900FCF3EB00A59990006A646000408BA300A5D4E5004FC0
      D300829FA800F9E9DD00F9E9DD00F9E9DD00F9E9DD004B4B490008869A004FC0
      D30032A9BB004B4B4900F6E6DB006A646000000000004444440074747400D8A5
      7200D8A57200D8A57200F7F7F600F7F7F600F7F7F600D7A47100D7A47100D7A4
      7100BE8A5A00000000000000000000000000000000004444440074747400D9A6
      7300D9A67300F7F7F600F7F7F600D7A47100F7F7F600F7F7F600D7A47100D7A4
      7100BE8A5A00000000000000000000000000A5999000408BA300A5D4E5004FC0
      D300829FA800F2E4D900F2E4D900F2E4D900F2E4D9004B4B490008869A004FC0
      D30032A9BB004B4B4900FCF3EB00A59990006A646000CAE0E7004A96AE00CBED
      FE004FC0D30052879800F9E9DD00C1C1C1007B554900943A1E00705445008484
      8400FEFEFE00ABABAB000707AB006A646000000000004444440074747400DBA8
      7500DBA87500F7F7F600F7F7F600DBA87500F7F7F600F7F7F600D8A57200D8A5
      7200C18E5D00000000000000000000000000000000004444440074747400DBA8
      7500DBA87500F7F7F600F7F7F600D9A67300F7F7F600F7F7F600D9A67300D9A6
      7300C18E5D00000000000000000000000000A5999000CAE0E7004A96AE00CBED
      FE004FC0D30052879800F5ECE500C1C1C1007B554900943A1E00705445008484
      8400FEFEFE00ABABAB000707AB00A59990006A646000C9BEB500ADD3DF0057A2
      BA0065DCED004FC0D300087389007D594E00943A1E00943A1E00943A1E00C1C1
      C100848484007474FD004646E1006A646000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800F7F7F600F7F7F600DEAB7800F7F7F600F7F7F600DEAB7800DEAB
      7800C18E5D00000000000000000000000000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800F7F7F600F7F7F600DEAB7800F7F7F600F7F7F600DEAB7800DEAB
      7800C18E5D00000000000000000000000000A5999000FEFEFE00ADD3DF0057A2
      BA0065DCED004FC0D300087389007D594E00943A1E00943A1E00943A1E00C1C1
      C100848484007474FD004646E100A59990006A646000C6BBB300E3D5CB004EBE
      D000029AB1007AE7F8004FC0D300006D8300943A1E00943A1E00F0E0D500F0E0
      D5008F8FF2001E1EE3004545DB006A646000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00E1AE7B00F7F7F600F7F7F600F7F7F600E1AE7B00E1AE7B00E1AE
      7B00C6926000000000000000000000000000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00E1AE7B00F7F7F600F7F7F600F7F7F600E1AE7B00E1AE7B00E1AE
      7B00C6926000000000000000000000000000A5999000FEFEFE00FBF0E7004EBE
      D000029AB1007AE7F8004FC0D300006D8300943A1E00943A1E00FBF0E700FBF0
      E7008F8FF2001E1EE3004545DB00A59990006A646000C2B7B000DCCEC400EADB
      D1008CD5E00018A2B8007AE7F80032A9BB004B4B4900EADBD100EADBD100EADB
      D100EADBD100EADBD100EADBD1006A646000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000A5999000FEFEFE00FCF3EB00FCF3
      EB008CD5E00018A2B8007AE7F80032A9BB004B4B4900FCF3EB00FCF3EB00FCF3
      EB00FCF3EB00FCF3EB00FEFEFE00A59990006A646000BDB1A900DCCEC400E3D5
      CB00E3D5CB00C1C1C10084848400FEFEFE00ABABAB000707AB00E3D5CB00E3D5
      CB00E3D5CB00E6D8CD00E6D8CD006A646000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C9966300000000000000000000000000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C9966300000000000000000000000000A5999000FEFEFE00FCF5F100FCF5
      F100FCF5F100C1C1C10084848400FEFEFE00ABABAB000707AB00FCF5F100FCF5
      F100FCF5F100FCF5F100FEFEFE00A59990006A646000B1A8A100CDC1B900DCCE
      C400DCCEC400DCCEC400C1C1C100848484007474FD004646E100DCCEC400DCCE
      C400DCCEC400E3D5CB00DCCEC4006A6460000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA000000000000000000000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA00000000000000000000000000AEA19800FFFAF400FFFAF400FFFA
      F400FFFAF400FFFAF400C1C1C100848484007474FD004646E100FFFAF400FFFA
      F400FFFAF400FEFEFE00FFFAF400AEA198007D767000A69E9800BDB1A900C9BE
      B500C9BEB500C9BEB500C9BEB5008F8FF2001E1EE3004545DB00C9BEB500C9BE
      B500C9BEB500CCC0B700A49B95007D76700000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C0000000000000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C00000000000000000000000000CCBDB200B8ADA600FCF5F100FCF5
      F100FCF5F100FCF5F100FCF5F1008F8FF2001E1EE3004545DB00FCF5F100FCF5
      F100FCF5F100EEE8E400B8ADA600CCBDB200BDB1A90079726E00A49B9500B1A8
      A100B1A8A100B1A8A100B1A8A100B1A8A100B1A8A100B1A8A100B1A8A100B1A8
      A100B1A8A100A49B9500706A6600BDB1A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCBDB200A5999000A599
      9000A5999000A5999000A5999000A5999000A5999000A5999000A5999000A599
      9000A5999000AEA19800CCBDB2000000000000000000C0B3AB00807873006A64
      60006A6460006A6460006A6460006A6460006A6460006A6460006A6460006A64
      60006A64600080787300C0B3AB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000000000003636360063636300C996
      6300C9966300C9966300C9966300F7F7F600F7F7F600C9966300C9966300C996
      6300AF7B4E00000000000000000000000000000000003636360063636300C996
      6300C9966300F7F7F600F7F7F600F7F7F600F7F7F600C9966300C9966300C996
      6300AF7B4E00000000000000000000000000000000003636360063636300C996
      6300C9966300C9966300F7F7F600F7F7F600F7F7F600C9966300C9966300C996
      6300AF7B4E00000000000000000000000000000000003636360063636300C996
      6300C9966300C9966300F7F7F600F7F7F600C9966300C9966300C9966300C996
      6300AF7B4E00000000000000000000000000000000003D3D3D0063636300CC99
      6600CC996600CC996600CC996600F7F7F600F7F7F600CC996600CC996600CC99
      6600B5815300000000000000000000000000000000003D3D3D0063636300CC99
      6600CC996600CC996600CC996600CC996600F7F7F600F7F7F600CC996600CC99
      6600B5815300000000000000000000000000000000003D3D3D0063636300CC99
      6600CC996600F7F7F600F7F7F600CC996600F7F7F600F7F7F600CC996600CC99
      6600B5815300000000000000000000000000000000003D3D3D0063636300CC99
      6600CC996600CC996600F7F7F600F7F7F600CC996600CC996600CC996600CC99
      6600B5815300000000000000000000000000000000003D3D3D006C6C6C00D09D
      6A00F7F7F600F7F7F600F7F7F600F7F7F600F7F7F600F7F7F600D09D6A00D09D
      6A00B5815300000000000000000000000000000000003D3D3D006C6C6C00D09D
      6A00D09D6A00D09D6A00D09D6A00D09D6A00F7F7F600F7F7F600D09D6A00D09D
      6A00B5815300000000000000000000000000000000003D3D3D006C6C6C00D09D
      6A00D09D6A00F7F7F600F7F7F600D09D6A00F7F7F600F7F7F600D09D6A00D09D
      6A00B5815300000000000000000000000000000000003D3D3D006C6C6C00D09D
      6A00D09D6A00D09D6A00D09D6A00F7F7F600F7F7F600D09D6A00D09D6A00D09D
      6A00B581530000000000000000000000000000000000444444006C6C6C00D3A0
      6D00F7F7F600F7F7F600D3A06D00F7F7F600F7F7F600D3A06D00D3A06D00D3A0
      6D00BA86560000000000000000000000000000000000444444006C6C6C00D3A0
      6D00D3A06D00D3A06D00D3A06D00D3A06D00F7F7F600F7F7F600D3A06D00D3A0
      6D00BA86560000000000000000000000000000000000444444006C6C6C00D3A0
      6D00D3A06D00F7F7F600F7F7F600D3A06D00F7F7F600F7F7F600D3A06D00D3A0
      6D00BA86560000000000000000000000000000000000444444006C6C6C00D3A0
      6D00D3A06D00D3A06D00D3A06D00F7F7F600F7F7F600D3A06D00D3A06D00D3A0
      6D00BA865600000000000000000000000000000000004444440074747400D9A6
      7300D9A67300F7F7F600D7A47100F7F7F600F7F7F600D7A47100D7A47100D7A4
      7100BE8A5A00000000000000000000000000000000004444440074747400D9A6
      7300D9A67300F7F7F600F7F7F600F7F7F600F7F7F600D7A47100D7A47100D7A4
      7100BE8A5A00000000000000000000000000000000004444440074747400D9A6
      7300D9A67300F7F7F600F7F7F600F7F7F600F7F7F600D7A47100D7A47100D7A4
      7100BE8A5A00000000000000000000000000000000004444440074747400D9A6
      7300D9A67300D9A67300D7A47100F7F7F600F7F7F600D7A47100D7A47100D7A4
      7100BE8A5A00000000000000000000000000000000004444440074747400DBA8
      7500DBA87500F7F7F600F7F7F600F7F7F600F7F7F600D9A67300D9A67300D9A6
      7300C18E5D00000000000000000000000000000000004444440074747400DBA8
      7500DBA87500F7F7F600F7F7F600DBA87500D9A67300D9A67300D9A67300D9A6
      7300C18E5D00000000000000000000000000000000004444440074747400DBA8
      7500DBA87500F7F7F600F7F7F600DBA87500D9A67300D9A67300D9A67300D9A6
      7300C18E5D00000000000000000000000000000000004444440074747400DBA8
      7500DBA87500DBA87500D9A67300DBA87500F7F7F600F7F7F600D9A67300D9A6
      7300C18E5D00000000000000000000000000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800DEAB7800F7F7F600F7F7F600F7F7F600DEAB7800DEAB7800DEAB
      7800C18E5D00000000000000000000000000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800F7F7F600F7F7F600DEAB7800DEAB7800DEAB7800DEAB7800DEAB
      7800C18E5D00000000000000000000000000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800F7F7F600F7F7F600DEAB7800DEAB7800DEAB7800DEAB7800DEAB
      7800C18E5D00000000000000000000000000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800DEAB7800DEAB7800DEAB7800F7F7F600F7F7F600DEAB7800DEAB
      7800C18E5D00000000000000000000000000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00E1AE7B00E1AE7B00F7F7F600F7F7F600E1AE7B00E1AE7B00E1AE
      7B00C6926000000000000000000000000000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00F7F7F600F7F7F600F7F7F600F7F7F600F7F7F600E1AE7B00E1AE
      7B00C6926000000000000000000000000000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00E1AE7B00F7F7F600F7F7F600F7F7F600F7F7F600E1AE7B00E1AE
      7B00C6926000000000000000000000000000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00F7F7F600F7F7F600F7F7F600F7F7F600F7F7F600E1AE7B00E1AE
      7B00C6926000000000000000000000000000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C9966300000000000000000000000000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C9966300000000000000000000000000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C9966300000000000000000000000000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C99663000000000000000000000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA000000000000000000000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA000000000000000000000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA000000000000000000000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA0000000000000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C0000000000000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C0000000000000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C0000000000000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000000000007A7A7A00181818008F5B
      38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B38008F5B
      380092725C00000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000000000002424240063636300C996
      6300C9966300C9966300C9966300C9966300C9966300C9966300C9966300C996
      63009C684000000000000000000000000000000000003636360063636300C996
      6300C9966300C9966300F7F7F600F7F7F600F7F7F600C9966300C9966300C996
      6300AF7B4E00000000000000000000000000000000003636360063636300C996
      6300C9966300F7F7F600F7F7F600F7F7F600F7F7F600C9966300C9966300C996
      6300AF7B4E00000000000000000000000000000000003636360063636300C996
      6300C9966300F7F7F600F7F7F600F7F7F600F7F7F600F7F7F600C9966300C996
      6300AF7B4E00000000000000000000000000000000003636360063636300C996
      6300C9966300F7F7F600F7F7F600F7F7F600F7F7F600C9966300C9966300C996
      6300AF7B4E00000000000000000000000000000000003D3D3D0063636300CC99
      6600CC996600F7F7F600F7F7F600CC996600F7F7F600F7F7F600CC996600CC99
      6600B5815300000000000000000000000000000000003D3D3D0063636300CC99
      6600CC996600CC996600F7F7F600F7F7F600CC996600CC996600CC996600CC99
      6600B5815300000000000000000000000000000000003D3D3D0063636300CC99
      6600CC996600F7F7F600F7F7F600CC996600CC996600CC996600CC996600CC99
      6600B5815300000000000000000000000000000000003D3D3D0063636300CC99
      6600CC996600CC996600CC996600CC996600F7F7F600F7F7F600CC996600CC99
      6600B5815300000000000000000000000000000000003D3D3D006C6C6C00D09D
      6A00D09D6A00F7F7F600F7F7F600D09D6A00F7F7F600F7F7F600D09D6A00D09D
      6A00B5815300000000000000000000000000000000003D3D3D006C6C6C00D09D
      6A00D09D6A00D09D6A00F7F7F600F7F7F600D09D6A00D09D6A00D09D6A00D09D
      6A00B5815300000000000000000000000000000000003D3D3D006C6C6C00D09D
      6A00D09D6A00D09D6A00F7F7F600F7F7F600D09D6A00D09D6A00D09D6A00D09D
      6A00B5815300000000000000000000000000000000003D3D3D006C6C6C00D09D
      6A00D09D6A00D09D6A00D09D6A00D09D6A00F7F7F600F7F7F600D09D6A00D09D
      6A00B581530000000000000000000000000000000000444444006C6C6C00D3A0
      6D00D3A06D00F7F7F600F7F7F600D3A06D00F7F7F600F7F7F600D3A06D00D3A0
      6D00BA86560000000000000000000000000000000000444444006C6C6C00D3A0
      6D00D3A06D00D3A06D00F7F7F600F7F7F600D3A06D00D3A06D00D3A06D00D3A0
      6D00BA86560000000000000000000000000000000000444444006C6C6C00D3A0
      6D00D3A06D00D3A06D00D3A06D00F7F7F600F7F7F600D3A06D00D3A06D00D3A0
      6D00BA86560000000000000000000000000000000000444444006C6C6C00D3A0
      6D00D3A06D00D3A06D00D3A06D00D3A06D00F7F7F600F7F7F600D3A06D00D3A0
      6D00BA865600000000000000000000000000000000004444440074747400D8A5
      7200D8A57200F7F7F600F7F7F600D8A57200F7F7F600F7F7F600D7A47100D7A4
      7100BE8A5A00000000000000000000000000000000004444440074747400D9A6
      7300D9A67300D9A67300F7F7F600F7F7F600D7A47100D7A47100D7A47100D7A4
      7100BE8A5A00000000000000000000000000000000004444440074747400D8A5
      7200D8A57200D8A57200D7A47100D8A57200F7F7F600F7F7F600D7A47100D7A4
      7100BE8A5A00000000000000000000000000000000004444440074747400D9A6
      7300D9A67300D9A67300F7F7F600F7F7F600F7F7F600D7A47100D7A47100D7A4
      7100BE8A5A00000000000000000000000000000000004444440074747400DBA8
      7500DBA87500F7F7F600F7F7F600DBA87500F7F7F600F7F7F600D8A57200D8A5
      7200C18E5D00000000000000000000000000000000004444440074747400DBA8
      7500DBA87500DBA87500F7F7F600F7F7F600D9A67300D9A67300D9A67300D9A6
      7300C18E5D00000000000000000000000000000000004444440074747400DBA8
      7500DBA87500F7F7F600F7F7F600DBA87500F7F7F600F7F7F600D8A57200D8A5
      7200C18E5D00000000000000000000000000000000004444440074747400DBA8
      7500DBA87500DBA87500D9A67300DBA87500F7F7F600F7F7F600D9A67300D9A6
      7300C18E5D00000000000000000000000000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800F7F7F600F7F7F600DEAB7800F7F7F600F7F7F600DEAB7800DEAB
      7800C18E5D00000000000000000000000000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800F7F7F600F7F7F600F7F7F600DEAB7800DEAB7800DEAB7800DEAB
      7800C18E5D00000000000000000000000000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800F7F7F600F7F7F600DEAB7800F7F7F600F7F7F600DEAB7800DEAB
      7800C18E5D00000000000000000000000000000000004D4D4D007A7A7A00DEAB
      7800DEAB7800DEAB7800DEAB7800DEAB7800F7F7F600F7F7F600DEAB7800DEAB
      7800C18E5D00000000000000000000000000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00E1AE7B00F7F7F600F7F7F600F7F7F600E1AE7B00E1AE7B00E1AE
      7B00C6926000000000000000000000000000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00E1AE7B00F7F7F600F7F7F600E1AE7B00E1AE7B00E1AE7B00E1AE
      7B00C6926000000000000000000000000000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00E1AE7B00F7F7F600F7F7F600F7F7F600E1AE7B00E1AE7B00E1AE
      7B00C6926000000000000000000000000000000000004D4D4D007A7A7A00E1AE
      7B00E1AE7B00F7F7F600F7F7F600F7F7F600F7F7F600E1AE7B00E1AE7B00E1AE
      7B00C6926000000000000000000000000000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000000000004D4D4D007A7A7A00E3B0
      7D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B07D00E3B0
      7D00C9966300000000000000000000000000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C9966300000000000000000000000000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C9966300000000000000000000000000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C9966300000000000000000000000000000000005454540054545400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600C99663000000000000000000000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA000000000000000000000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA000000000000000000000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA000000000000000000000000000000000074747400BBBBAA00C1C1
      B100C7C7B900CFCFC300D7D7CD00DFDFD700E8E8E200EFEFEC00F7F7F6000000
      0000BBBBAA0000000000000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C0000000000000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C0000000000000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C0000000000000000000000000000000000B8B8B80074747400CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600D8B28C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FE7F000000000000FE3F000000000000
      FE1F000000000000FE0F00000000000000070000000000000003000000000000
      0001000000000000000000000000000000000000000000000001000000000000
      00030000000000000007000000000000FE0F000000000000FE1F000000000000
      FE3F000000000000FE7F0000000000008001F81F8001F9FF0000E0070000F0FF
      0000C0030000E07F800180018001C03F800180018001801FC0030000C003000F
      C0030000C0030407E0070000E0070E03E0070000E0079F01F00F0000F00FFF80
      F00F0000F00FFFC0F81F8001F81FFFE0F81F8001F81FFFF0FC3FC003FC3FFFF9
      FC3FE007FC3FFFFFFE7FF81FFE7FFFFFFFFFFFFFF81FF00F8007FFFFE007E007
      8007FFFFC003C0038007FEFF800180018007FCFF800100008007F83F00000000
      8007FCDF000000008007FEDF000000008007FFDF000000008007FFDF00000000
      8007FFDF000000008007FFDF800100008007FE3F800180018017FFFFC003C003
      8007FFFFE007E007FFFFFFFFF81FF00FFFFFFFFF800180018007800700000000
      8007800700000000800780070000000080078007000000008007800700000000
      8007800700000000800780070000000080078007000000008007800700000000
      8007800700000000800780070000000080078007000000008017801700000000
      8007800700000000FFFFFFFF80018001FFFFFFFFFFFFFFFF8007800780078007
      8007800780078007800780078007800780078007800780078007800780078007
      8007800780078007800780078007800780078007800780078007800780078007
      8007800780078007800780078007800780078007800780078017801780178017
      8007800780078007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8007800780078007
      8007800780078007800780078007800780078007800780078007800780078007
      8007800780078007800780078007800780078007800780078007800780078007
      8007800780078007800780078007800780078007800780078017801780178017
      8007800780078007FFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object SyntKeyMapping: TSyntKeyMapping
    Items = <
      item
        Command = 700
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16462
              end>
          end>
        Category = 'File'
        DisplayName = 'New file'
      end
      item
        Command = 740
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24654
              end>
          end>
        Category = 'File'
        DisplayName = 'New window'
      end
      item
        Command = 701
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16463
              end>
          end>
        Category = 'File'
        DisplayName = 'Open file'
      end
      item
        Command = 702
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16467
              end>
          end
          item
            KeyDefs = <
              item
                ShortCut = 113
              end>
          end>
        Category = 'File'
        DisplayName = 'Save file'
      end
      item
        Command = 706
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24659
              end>
          end>
        Category = 'File'
        DisplayName = 'Save file as'
      end
      item
        Command = 707
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Reopen file'
      end
      item
        Command = 704
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Export to RTF'
      end
      item
        Command = 705
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Export to HTML'
      end
      item
        Command = 709
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 120
              end>
          end>
        Category = 'Options'
        DisplayName = 'Dialog "Options"'
      end
      item
        Command = 710
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Dialog "Customize lexer"'
      end
      item
        Command = 711
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Dialog "Customize lexers library"'
      end
      item
        Command = 565
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Align tokens by spaces'
      end
      item
        Command = 562
        KeyStrokes = <>
        Category = 'Sorting'
        DisplayName = 'Sort selected lines ascending'
      end
      item
        Command = 563
        KeyStrokes = <>
        Category = 'Sorting'
        DisplayName = 'Sort selected lines descending'
      end
      item
        Command = 560
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16575
              end>
          end>
        Category = 'Comments'
        DisplayName = 'Line comment'
      end
      item
        Command = 561
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24767
              end>
          end>
        Category = 'Comments'
        DisplayName = 'Line uncomment'
      end
      item
        Command = 715
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 123
              end>
          end>
        Category = 'Options'
        DisplayName = 'Toggle tree panel'
      end
      item
        Command = 712
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16466
              end>
          end>
        Category = 'Options'
        DisplayName = 'Toggle read-only'
      end
      item
        Command = 730
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16469
              end>
          end>
        Category = 'Options'
        DisplayName = 'Toggle word wrap'
      end
      item
        Command = 731
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle line numbers'
      end
      item
        Command = 732
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle code folding'
      end
      item
        Command = 733
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle non-printable chars'
      end
      item
        Command = 717
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16491
              end>
          end>
        Category = 'Zoom'
        DisplayName = 'Zoom in'
      end
      item
        Command = 716
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16493
              end>
          end>
        Category = 'Zoom'
        DisplayName = 'Zoom out'
      end
      item
        Command = 566
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32806
              end>
          end>
        Category = 'Miscellaneous'
        DisplayName = 'Move lines up'
      end
      item
        Command = 567
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32808
              end>
          end>
        Category = 'Miscellaneous'
        DisplayName = 'Move lines down'
      end
      item
        Command = 670
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16416
              end>
          end>
        Category = 'Hints'
        DisplayName = 'Auto-complete popup'
      end
      item
        Command = 652
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24608
              end>
          end>
        Category = 'Hints'
        DisplayName = 'Function parameters popup'
      end
      item
        Command = 651
        KeyStrokes = <>
        Category = 'Hints'
        DisplayName = 'Code template popup (obsolete)'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Hints'
        DisplayName = 'Context help'
      end
      item
        Command = 630
        KeyStrokes = <>
        Category = 'Print'
        DisplayName = 'Dialog "Print"'
      end
      item
        Command = 632
        KeyStrokes = <>
        Category = 'Print'
        DisplayName = 'Dialog "Print preview"'
      end
      item
        Command = 633
        KeyStrokes = <>
        Category = 'Print'
        DisplayName = 'Dialog "Page setup"'
      end
      item
        Command = 634
        KeyStrokes = <>
        Category = 'Print'
        DisplayName = 'Dialog "Printer setup"'
      end
      item
        Command = 611
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Replace next'
      end
      item
        Command = 613
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Replace all'
      end
      item
        Command = 564
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16455
              end>
          end>
        Category = 'Go to'
        DisplayName = 'Dialog "Go to"'
      end
      item
        Command = 608
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24614
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Find current word prior'
      end
      item
        Command = 607
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24616
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Find current word next'
      end
      item
        Command = 603
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Find all (mark)'
      end
      item
        Command = 602
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16498
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Find previous'
      end
      item
        Command = 601
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 114
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Find next'
      end
      item
        Command = 600
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16454
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Dialog "Find"'
      end
      item
        Command = 641
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Next search mark'
      end
      item
        Command = 642
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Previous search mark'
      end
      item
        Command = 640
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Clear search marks'
      end
      item
        Command = 620
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Lister Find'
      end
      item
        Command = 621
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Lister Find next'
      end
      item
        Command = 17
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to specified position'
      end
      item
        Command = 20
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor left and up at line start'
      end
      item
        Command = 19
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 35
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to last char of line'
      end
      item
        Command = 18
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 36
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to first char of line'
      end
      item
        Command = 16
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16419
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to absolute end'
      end
      item
        Command = 15
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16420
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to absolute beginning'
      end
      item
        Command = 14
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16418
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to bottom of page'
      end
      item
        Command = 13
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16417
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to top of page'
      end
      item
        Command = 12
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor left one page'
      end
      item
        Command = 11
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor right one page'
      end
      item
        Command = 10
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 34
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor down one page'
      end
      item
        Command = 9
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 33
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor up one page'
      end
      item
        Command = 8
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to end of line'
      end
      item
        Command = 7
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to beginning of line'
      end
      item
        Command = 6
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16423
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor right one word'
      end
      item
        Command = 5
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16421
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor left one word'
      end
      item
        Command = 4
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 40
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor down one line'
      end
      item
        Command = 3
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 38
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor up one line'
      end
      item
        Command = 2
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 39
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor right one char'
      end
      item
        Command = 1
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 37
              end>
          end>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor left one char'
      end
      item
        Command = 101
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8229
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select left one char'
      end
      item
        Command = 102
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8231
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select right one char'
      end
      item
        Command = 103
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8230
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select up one line'
      end
      item
        Command = 104
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8232
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select down one line'
      end
      item
        Command = 105
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24613
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select left one word'
      end
      item
        Command = 106
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24615
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select right one word'
      end
      item
        Command = 107
        KeyStrokes = <>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select to beginning of line'
      end
      item
        Command = 108
        KeyStrokes = <>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select to end of line'
      end
      item
        Command = 109
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8225
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select up one page'
      end
      item
        Command = 110
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8226
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select down one page'
      end
      item
        Command = 111
        KeyStrokes = <>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select right one page'
      end
      item
        Command = 112
        KeyStrokes = <>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select left one page'
      end
      item
        Command = 113
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24609
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select to top of page'
      end
      item
        Command = 114
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24610
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select to bottom of page'
      end
      item
        Command = 115
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24612
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select to absolute beginning'
      end
      item
        Command = 116
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24611
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select to absolute end'
      end
      item
        Command = 118
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8228
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select to first char of line'
      end
      item
        Command = 119
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8227
              end>
          end>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select to last char of line'
      end
      item
        Command = 120
        KeyStrokes = <>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select left and up at line start'
      end
      item
        Command = 117
        KeyStrokes = <>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor to specified position and select'
      end
      item
        Command = 201
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 40997
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select left one char'
      end
      item
        Command = 202
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 40999
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select right one char'
      end
      item
        Command = 203
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 40998
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select up one line'
      end
      item
        Command = 204
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 41000
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select down one line'
      end
      item
        Command = 205
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 57381
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select left one word'
      end
      item
        Command = 206
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 57383
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select right one word'
      end
      item
        Command = 207
        KeyStrokes = <>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select to beginning of line'
      end
      item
        Command = 208
        KeyStrokes = <>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select to end of line'
      end
      item
        Command = 209
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 40993
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select up one page'
      end
      item
        Command = 210
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 40994
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select down one page'
      end
      item
        Command = 211
        KeyStrokes = <>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select right one page'
      end
      item
        Command = 212
        KeyStrokes = <>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select left one page'
      end
      item
        Command = 213
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 57377
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select to top of page'
      end
      item
        Command = 214
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 57378
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select to bottom of page'
      end
      item
        Command = 215
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 57380
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select to absolute beginning'
      end
      item
        Command = 216
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 57379
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select to absolute end'
      end
      item
        Command = 218
        KeyStrokes = <>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select to first char of line'
      end
      item
        Command = 219
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 40995
              end>
          end>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select to last char of line'
      end
      item
        Command = 220
        KeyStrokes = <>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor and column select left and up at line start'
      end
      item
        Command = 217
        KeyStrokes = <>
        Category = 'Navigation, columnar select'
        DisplayName = 'Move cursor to specified position and column select'
      end
      item
        Command = 311
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16422
              end>
          end>
        Category = 'Scrolling'
        DisplayName = 'Scroll up one line leaving cursor position unchanged'
      end
      item
        Command = 312
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16424
              end>
          end>
        Category = 'Scrolling'
        DisplayName = 'Scroll down one line leaving cursor position unchanged'
      end
      item
        Command = 313
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll left one char leaving cursor position unchanged'
      end
      item
        Command = 314
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll right one char leaving cursor position unchanged'
      end
      item
        Command = 315
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll up one page leaving cursor position unchanged'
      end
      item
        Command = 316
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll down one page leaving cursor position unchanged'
      end
      item
        Command = 317
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll left one screen leaving cursor position unchanged'
      end
      item
        Command = 318
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll right one screen leaving cursor position unchanged'
      end
      item
        Command = 319
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll to absolute beginning leaving cursor position unchanged'
      end
      item
        Command = 320
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll to absolute end leaving cursor position unchanged'
      end
      item
        Command = 321
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll to absolute left leaving cursor position unchanged'
      end
      item
        Command = 322
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll to absolute right leaving cursor position unchanged'
      end
      item
        Command = 301
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16451
              end>
          end
          item
            KeyDefs = <
              item
                ShortCut = 16429
              end>
          end>
        Category = 'Standard actions'
        DisplayName = 'Copy selection to clipboard'
      end
      item
        Command = 302
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16472
              end>
          end
          item
            KeyDefs = <
              item
                ShortCut = 8238
              end>
          end>
        Category = 'Standard actions'
        DisplayName = 'Cut selection to clipboard'
      end
      item
        Command = 303
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16470
              end>
          end
          item
            KeyDefs = <
              item
                ShortCut = 8237
              end>
          end>
        Category = 'Standard actions'
        DisplayName = 'Paste from clipboard'
      end
      item
        Command = 304
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16474
              end>
          end
          item
            KeyDefs = <
              item
                ShortCut = 32776
              end>
          end>
        Category = 'Standard actions'
        DisplayName = 'Perform undo if available'
      end
      item
        Command = 305
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16473
              end>
          end>
        Category = 'Standard actions'
        DisplayName = 'Perform redo if available'
      end
      item
        Command = 306
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16449
              end>
          end>
        Category = 'Standard actions'
        DisplayName = 'Select entire contents of document'
      end
      item
        Command = 307
        KeyStrokes = <>
        Category = 'Standard actions'
        DisplayName = 'Delete current selection'
      end
      item
        Command = 310
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Copy to clipboard in RTF format'
      end
      item
        Command = 339
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 13
              end>
          end
          item
            KeyDefs = <
              item
                ShortCut = 16397
              end>
          end>
        Category = 'Inserting text'
        DisplayName = 'Break line at current position, move caret to new line'
      end
      item
        Command = 340
        KeyStrokes = <>
        Category = 'Inserting text'
        DisplayName = 'Break line at current position, leave caret'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Inserting text'
        DisplayName = 'Insert a character (uses parameter)'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Inserting text'
        DisplayName = 'Insert a whole string (uses parameter)'
      end
      item
        Command = 568
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16452
              end>
          end>
        Category = 'Inserting text'
        DisplayName = 'Duplicate line'
      end
      item
        Command = 350
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24649
              end>
          end>
        Category = 'Indents and Tabs'
        DisplayName = 'Indent selection'
      end
      item
        Command = 351
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8201
              end>
          end
          item
            KeyDefs = <
              item
                ShortCut = 24661
              end>
          end>
        Category = 'Indents and Tabs'
        DisplayName = 'Unindent selection'
      end
      item
        Command = 352
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 9
              end>
          end>
        Category = 'Indents and Tabs'
        DisplayName = 'Tab key'
      end
      item
        Command = 353
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16457
              end>
          end>
        Category = 'Indents and Tabs'
        DisplayName = 'Insert Tab char'
      end
      item
        Command = 331
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8
              end>
          end
          item
            KeyDefs = <
              item
                ShortCut = 8200
              end>
          end>
        Category = 'Deleting text'
        DisplayName = 'Delete last char (i.e. BackSpace key)'
      end
      item
        Command = 332
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 46
              end>
          end>
        Category = 'Deleting text'
        DisplayName = 'Delete char at caret (i.e. Delete key)'
      end
      item
        Command = 333
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16430
              end>
          end>
        Category = 'Deleting text'
        DisplayName = 'Delete from caret to next word'
      end
      item
        Command = 334
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16392
              end>
          end>
        Category = 'Deleting text'
        DisplayName = 'Delete from caret to start of word'
      end
      item
        Command = 335
        KeyStrokes = <>
        Category = 'Deleting text'
        DisplayName = 'Delete from caret to beginning of line'
      end
      item
        Command = 336
        KeyStrokes = <>
        Category = 'Deleting text'
        DisplayName = 'Delete from caret to end of line'
      end
      item
        Command = 337
        KeyStrokes = <>
        Category = 'Deleting text'
        DisplayName = 'Delete current line'
      end
      item
        Command = 338
        KeyStrokes = <>
        Category = 'Deleting text'
        DisplayName = 'Delete everything'
      end
      item
        Command = 371
        KeyStrokes = <>
        Category = 'Selection modes'
        DisplayName = 'Set insert mode'
      end
      item
        Command = 372
        KeyStrokes = <>
        Category = 'Selection modes'
        DisplayName = 'Set overwrite mode'
      end
      item
        Command = 373
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 45
              end>
          end>
        Category = 'Selection modes'
        DisplayName = 'Toggle insert/overwrite mode'
      end
      item
        Command = 374
        KeyStrokes = <>
        Category = 'Selection modes'
        DisplayName = 'Normal selection mode'
      end
      item
        Command = 375
        KeyStrokes = <>
        Category = 'Selection modes'
        DisplayName = 'Column selection mode'
      end
      item
        Command = 376
        KeyStrokes = <>
        Category = 'Selection modes'
        DisplayName = 'Line selection mode'
      end
      item
        Command = 377
        KeyStrokes = <>
        Category = 'Selection modes'
        DisplayName = 'Mark start of selection'
      end
      item
        Command = 378
        KeyStrokes = <>
        Category = 'Selection modes'
        DisplayName = 'Mark end of selection'
      end
      item
        Command = 360
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Upper case to current or previous word'
      end
      item
        Command = 361
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Lower case to current or previous word'
      end
      item
        Command = 362
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Toggle case to current or previous word'
      end
      item
        Command = 363
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Title case to current or previous word'
      end
      item
        Command = 365
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Upper case to current selection or current char'
      end
      item
        Command = 366
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Lower case to current selection or current char'
      end
      item
        Command = 367
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Toggle case to current selection or current char'
      end
      item
        Command = 368
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Title case to current selection'
      end
      item
        Command = 520
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Collapse/expand block at current line'
      end
      item
        Command = 521
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Collapse block at current line'
      end
      item
        Command = 522
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Expand block at current line'
      end
      item
        Command = 523
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Collapse all blocks'
      end
      item
        Command = 524
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Expand all blocks'
      end
      item
        Command = 525
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Collapse selected block'
      end
      item
        Command = 526
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16571
              end>
          end>
        Category = 'Text folding'
        DisplayName = 'Collapse/expand nearest block'
      end
      item
        Command = 527
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Collapse ranges in selection'
      end
      item
        Command = 528
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Expand ranges in selection'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Toggle folding'
      end
      item
        Command = 401
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16432
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #0'
      end
      item
        Command = 402
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16433
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #1'
      end
      item
        Command = 403
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16434
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #2'
      end
      item
        Command = 404
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16435
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #3'
      end
      item
        Command = 405
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16436
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #4'
      end
      item
        Command = 406
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16437
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #5'
      end
      item
        Command = 407
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16438
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #6'
      end
      item
        Command = 408
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16439
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #7'
      end
      item
        Command = 409
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16440
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #8'
      end
      item
        Command = 410
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16441
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Go to bookmark #9'
      end
      item
        Command = 411
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24624
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #0'
      end
      item
        Command = 412
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24625
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #1'
      end
      item
        Command = 413
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24626
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #2'
      end
      item
        Command = 414
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24627
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #3'
      end
      item
        Command = 415
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24628
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #4'
      end
      item
        Command = 416
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24629
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #5'
      end
      item
        Command = 417
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24630
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #6'
      end
      item
        Command = 418
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24631
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #7'
      end
      item
        Command = 419
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24632
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #8'
      end
      item
        Command = 420
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24633
              end>
          end>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark #9'
      end
      item
        Command = 841
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Clear all bookmarks'
      end
      item
        Command = 430
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32804
              end>
          end>
        Category = 'Markers'
        DisplayName = 'Drop marker to current position'
      end
      item
        Command = 431
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32803
              end>
          end>
        Category = 'Markers'
        DisplayName = 'Collect marker (jump back)'
      end
      item
        Command = 432
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 40996
              end>
          end>
        Category = 'Markers'
        DisplayName = 'Swap marker (keep position, jump back)'
      end
      item
        Command = 433
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16603
              end>
          end>
        Category = 'Go to'
        DisplayName = 'Jump to matching bracket'
      end
      item
        Command = 573
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play last recorded macro'
      end
      item
        Command = 570
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Start macro recording'
      end
      item
        Command = 571
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Stop macro recording'
      end
      item
        Command = 572
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Cancel macro recording'
      end
      item
        Command = 1200
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Change encoding - ANSI'
      end
      item
        Command = 1201
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Change encoding - OEM'
      end
      item
        Command = 1202
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Change encoding - UTF-8'
      end
      item
        Command = 1203
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Change encoding - UTF-8 no BOM'
      end
      item
        Command = 1204
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Change encoding - UTF-16 LE'
      end
      item
        Command = 1205
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Change encoding - UTF-16 BE'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Change encoding - KOI8 (deprecated)'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Change encoding - Mac (deprecated)'
      end
      item
        Command = 703
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16574
              end>
          end>
        Category = 'Miscellaneous'
        DisplayName = 'Popup "Insert character"'
      end
      item
        Command = 718
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16490
              end>
          end>
        Category = 'Zoom'
        DisplayName = 'Reset zoom'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Run external tool 1'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Run external tool 2'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Run external tool 3'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Run external tool 4'
      end
      item
        Command = 622
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Lister Find previous'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Menu "Encodings"'
      end
      item
        Command = 811
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Menu "Lexers"'
      end
      item
        Command = 812
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Menu "Line endings"'
      end
      item
        Command = 814
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16465
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Quick search'
      end
      item
        Command = 741
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16471
              end>
          end
          item
            KeyDefs = <
              item
                ShortCut = 16499
              end>
          end>
        Category = 'Tabs'
        DisplayName = 'Close tab'
      end
      item
        Command = 742
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Close all tabs'
      end
      item
        Command = 743
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Close other tabs (current group)'
      end
      item
        Command = 744
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 49235
              end>
          end>
        Category = 'File'
        DisplayName = 'Save all'
      end
      item
        Command = 813
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24622
              end>
          end>
        Category = 'File'
        DisplayName = 'Clear files history'
      end
      item
        Command = 815
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Insert current date/time'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Run external tool 5'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Run external tool 6'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Run external tool 7'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Run external tool 8'
      end
      item
        Command = 830
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Open in Firefox'
      end
      item
        Command = 831
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Open in IE'
      end
      item
        Command = 832
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Open in Chrome'
      end
      item
        Command = 833
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Open in Safari'
      end
      item
        Command = 834
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Open containing folder'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Online help'
        DisplayName = 'Online search on PHP site'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Online help'
        DisplayName = 'Online search in Google'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Online help'
        DisplayName = 'Online search in Wikipedia'
      end
      item
        Command = 610
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16456
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Dialog "Replace"'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Online help'
        DisplayName = 'Online search in MSDN'
      end
      item
        Command = 745
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Exit program'
      end
      item
        Command = 746
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Close and delete file'
      end
      item
        Command = 617
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16461
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Dialog "Find/Replace in files"'
      end
      item
        Command = 309
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Copy to clipboard in HTML format'
      end
      item
        Command = 720
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Copy and append to clipboard'
      end
      item
        Command = 721
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Cut and append to clipboard'
      end
      item
        Command = 713
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 119
              end>
          end>
        Category = 'Options'
        DisplayName = 'Toggle output panel'
      end
      item
        Command = 0
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16453
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Dialog "Extract strings"'
      end
      item
        Command = 1070
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Sentence case to current selection'
      end
      item
        Command = 719
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 117
              end>
          end>
        Category = 'Options'
        DisplayName = 'Toggle clipboard/minimap panel'
      end
      item
        Command = 817
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 8306
              end>
          end>
        Category = 'Go to'
        DisplayName = 'Next mass search result'
      end
      item
        Command = 818
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 41074
              end>
          end>
        Category = 'Go to'
        DisplayName = 'Previous mass search result'
      end
      item
        Command = 722
        KeyStrokes = <>
        Category = 'Sessions'
        DisplayName = 'Save session as...'
      end
      item
        Command = 723
        KeyStrokes = <>
        Category = 'Sessions'
        DisplayName = 'Open session'
      end
      item
        Command = 724
        KeyStrokes = <>
        Category = 'Sessions'
        DisplayName = 'Open/Add session'
      end
      item
        Command = 819
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Toggle SyncEditing mode'
      end
      item
        Command = 820
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 122
              end>
          end>
        Category = 'Options'
        DisplayName = 'Toggle full screen'
      end
      item
        Command = 747
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Move tab to group 1/2'
      end
      item
        Command = 821
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle synchronized horizontal scrolling'
      end
      item
        Command = 822
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle synchronized vertical scrolling'
      end
      item
        Command = 823
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle always on top'
      end
      item
        Command = 824
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Dialog "Fill block"'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Dialog "Insert text"'
      end
      item
        Command = 734
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Tree panel focus'
      end
      item
        Command = 735
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Clipboard panel focus'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Abbreviations'
        DisplayName = 'Emmet - Expand abbreviation (deleted)'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Abbreviations'
        DisplayName = 'Emmet - Wrap with abbreviation (deleted)'
      end
      item
        Command = 738
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 49343
              end>
          end>
        Category = 'Comments'
        DisplayName = 'Toggle line comment'
      end
      item
        Command = 739
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Output panel focus'
      end
      item
        Command = 750
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Create backup copy'
      end
      item
        Command = 751
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32959
              end>
          end>
        Category = 'Comments'
        DisplayName = 'Toggle stream comment'
      end
      item
        Command = 752
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Copy filename to clipboard'
      end
      item
        Command = 753
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Copy full path to clipboard'
      end
      item
        Command = 754
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Copy dir path to clipboard'
      end
      item
        Command = 755
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Search Results panel focus'
      end
      item
        Command = 0
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 118
              end>
          end>
        Category = 'Options'
        DisplayName = 'Toggle live spelling'
      end
      item
        Command = 0
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32886
              end>
          end>
        Category = 'Miscellaneous'
        DisplayName = 'Perform spell check'
      end
      item
        Command = 828
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24650
              end>
          end>
        Category = 'Miscellaneous'
        DisplayName = 'Join lines'
      end
      item
        Command = 829
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Split lines'
      end
      item
        Command = 839
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Dialog "Run/customize macros"'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Preview selected HTML code (deleted)'
      end
      item
        Command = 901
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play macro #1'
      end
      item
        Command = 902
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play macro #2'
      end
      item
        Command = 903
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play macro #3'
      end
      item
        Command = 904
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play macro #4'
      end
      item
        Command = 905
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play macro #5'
      end
      item
        Command = 906
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play macro #6'
      end
      item
        Command = 907
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play macro #7'
      end
      item
        Command = 908
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play macro #8'
      end
      item
        Command = 909
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Play macro #9'
      end
      item
        Command = 842
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Toggle bookmark'
      end
      item
        Command = 843
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Go to next bookmark'
      end
      item
        Command = 844
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Go to previous bookmark'
      end
      item
        Command = 845
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Copy bookmarked lines'
      end
      item
        Command = 846
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Cut bookmarked lines'
      end
      item
        Command = 849
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Paste into bookmarked lines'
      end
      item
        Command = 847
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Delete bookmarked lines'
      end
      item
        Command = 848
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Delete unmarked lines'
      end
      item
        Command = 850
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Inverse bookmarks'
      end
      item
        Command = 756
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle groups focus'
      end
      item
        Command = 725
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Copy current line to clipboard'
      end
      item
        Command = 726
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Cut current line to clipboard'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'HTML Tidy - validate (deleted)'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'HTML Tidy - configure (deleted)'
      end
      item
        Command = 757
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Validation panel focus'
      end
      item
        Command = 855
        KeyStrokes = <>
        Category = 'Sorting'
        DisplayName = 'Remove adjacent duplicates'
      end
      item
        Command = 910
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32817
              end>
          end>
        Category = 'Tabs'
        DisplayName = 'Activate tab #1'
      end
      item
        Command = 911
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32818
              end>
          end>
        Category = 'Tabs'
        DisplayName = 'Activate tab #2'
      end
      item
        Command = 912
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32819
              end>
          end>
        Category = 'Tabs'
        DisplayName = 'Activate tab #3'
      end
      item
        Command = 913
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32820
              end>
          end>
        Category = 'Tabs'
        DisplayName = 'Activate tab #4'
      end
      item
        Command = 914
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32821
              end>
          end>
        Category = 'Tabs'
        DisplayName = 'Activate tab #5'
      end
      item
        Command = 915
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab #6'
      end
      item
        Command = 916
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab #7'
      end
      item
        Command = 917
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab #8'
      end
      item
        Command = 918
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab #9'
      end
      item
        Command = 919
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab #10'
      end
      item
        Command = 727
        KeyStrokes = <>
        Category = 'Sessions'
        DisplayName = 'Save session'
      end
      item
        Command = 728
        KeyStrokes = <>
        Category = 'Sessions'
        DisplayName = 'Close session'
      end
      item
        Command = 857
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Trim leading spaces'
      end
      item
        Command = 858
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Trim trailing spaces'
      end
      item
        Command = 859
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Trim leading/trailing spaces'
      end
      item
        Command = 856
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Delete blank lines'
      end
      item
        Command = 860
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Delete duplicate spaces'
      end
      item
        Command = 862
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Replace spaces to tabs (all)'
      end
      item
        Command = 861
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Replace tabs to spaces'
      end
      item
        Command = 863
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Find string from clipboard - next'
      end
      item
        Command = 864
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Find string from clipboard - previous'
      end
      item
        Command = 920
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups 20/80'
      end
      item
        Command = 921
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups 30/70'
      end
      item
        Command = 922
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups 40/60'
      end
      item
        Command = 923
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups 50/50'
      end
      item
        Command = 924
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups 60/40'
      end
      item
        Command = 925
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups 70/30'
      end
      item
        Command = 926
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups 80/20'
      end
      item
        Command = 900
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = 'Repeat last played macro'
      end
      item
        Command = 865
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Repeat last editing command'
      end
      item
        Command = 866
        KeyStrokes = <>
        Category = 'Markers'
        DisplayName = 'Clear markers'
      end
      item
        Command = 758
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Minimap panel focus'
      end
      item
        Command = 867
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Select next node'
      end
      item
        Command = 868
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Select previous node'
      end
      item
        Command = 869
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Reduce blank lines'
      end
      item
        Command = 870
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Next blank line'
      end
      item
        Command = 871
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Previous blank line'
      end
      item
        Command = 872
        KeyStrokes = <>
        Category = 'Selection operations'
        DisplayName = 'Select paragraph'
      end
      item
        Command = 930
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #1'
      end
      item
        Command = 931
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #2'
      end
      item
        Command = 932
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #3'
      end
      item
        Command = 933
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #4'
      end
      item
        Command = 934
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #5'
      end
      item
        Command = 935
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #6'
      end
      item
        Command = 936
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #7'
      end
      item
        Command = 937
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #8'
      end
      item
        Command = 938
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #9'
      end
      item
        Command = 939
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Activate tab on 2nd group #10'
      end
      item
        Command = 927
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups - splitter lefter'
      end
      item
        Command = 928
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups - splitter righter'
      end
      item
        Command = 873
        KeyStrokes = <>
        Category = 'Navigation, normal select'
        DisplayName = 'Move cursor and select to word end'
      end
      item
        Command = 874
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor to word end'
      end
      item
        Command = 875
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Find next - and extend selection'
      end
      item
        Command = 876
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Find previous - and extend selection'
      end
      item
        Command = 940
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#10'
      end
      item
        Command = 941
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#11'
      end
      item
        Command = 942
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#12'
      end
      item
        Command = 943
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#13'
      end
      item
        Command = 944
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#14'
      end
      item
        Command = 945
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#15'
      end
      item
        Command = 946
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#16'
      end
      item
        Command = 947
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#17'
      end
      item
        Command = 948
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#18'
      end
      item
        Command = 949
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#19'
      end
      item
        Command = 950
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#20'
      end
      item
        Command = 951
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#21'
      end
      item
        Command = 952
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#22'
      end
      item
        Command = 953
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#23'
      end
      item
        Command = 954
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#24'
      end
      item
        Command = 955
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#25'
      end
      item
        Command = 956
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#26'
      end
      item
        Command = 957
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#27'
      end
      item
        Command = 958
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#28'
      end
      item
        Command = 959
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#29'
      end
      item
        Command = 960
        KeyStrokes = <>
        Category = 'Macros'
        DisplayName = '#30'
      end
      item
        Command = 761
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor right <N> chars'
      end
      item
        Command = 762
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor left <N> chars'
      end
      item
        Command = 763
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor down <N> lines'
      end
      item
        Command = 764
        KeyStrokes = <>
        Category = 'Navigation, no select'
        DisplayName = 'Move cursor up <N> lines'
      end
      item
        Command = 877
        KeyStrokes = <>
        Category = 'Markers'
        DisplayName = 'Go to last marker (don'#39't delete)'
      end
      item
        Command = 765
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Select parent node'
      end
      item
        Command = 766
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Select next brother node'
      end
      item
        Command = 767
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Select previous brother node'
      end
      item
        Command = 878
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 116
              end>
          end>
        Category = 'Run'
        DisplayName = 'Open current file in default application'
      end
      item
        Command = 879
        KeyStrokes = <>
        Category = 'Selection operations'
        DisplayName = 'Select token'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Show file properties (deleted)'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Dialog "Color picker" (deleted)'
      end
      item
        Command = 881
        KeyStrokes = <>
        Category = 'Selection operations'
        DisplayName = 'Move caret to selection start/end'
      end
      item
        Command = 883
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Replace all occurences of selected string with clipboard'
      end
      item
        Command = 884
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Reread Output panel from file'
      end
      item
        Command = 759
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Project panel focus'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Insert image tag (deleted)'
      end
      item
        Command = 768
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split tab - toggle split'
      end
      item
        Command = 769
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle editor master/slave focus'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Online help'
        DisplayName = 'Online help for HTML4 tag'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Online help'
        DisplayName = 'Online help for HTML5 tag'
      end
      item
        Command = 729
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle ruler'
      end
      item
        Command = 770
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups - toggle splitter vert/horz'
      end
      item
        Command = 771
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split tab - toggle splitter vert/horz'
      end
      item
        Command = 772
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Dialog "Go to bookmark"'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Dialog "Lorem Ipsum generator" (deleted)'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Favorites'
        DisplayName = 'Add current file to Favorites'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Favorites'
        DisplayName = 'Organize Favorites'
      end
      item
        Command = 776
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Text Clips panel focus'
      end
      item
        Command = 777
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle smart highlighting'
      end
      item
        Command = 778
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Drop portable bookmark'
      end
      item
        Command = 779
        KeyStrokes = <>
        Category = 'Bookmarks'
        DisplayName = 'Dialog "Go to portable bookmark"'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Rename file'
      end
      item
        Command = 889
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Dialog "Numeric converter"'
      end
      item
        Command = 780
        KeyStrokes = <>
        Category = 'Indents and Tabs'
        DisplayName = 'Indent selection like 1st line'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Markers'
        DisplayName = 'Set column markers (deleted)'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Markers'
        DisplayName = 'Jump to column marker left (deleted)'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Markers'
        DisplayName = 'Jump to column marker right (deleted)'
      end
      item
        Command = 783
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Paste from clipboard, keep caret position'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Jump over MixedCaseName left (deleted)'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Jump over MixedCaseName right (deleted)'
      end
      item
        Command = 786
        KeyStrokes = <>
        Category = 'Standard actions'
        DisplayName = 'Cancel selection'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Center lines'
      end
      item
        Command = 760
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Tabs panel focus'
      end
      item
        Command = 788
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16460
              end>
          end>
        Category = 'Selection operations'
        DisplayName = 'Extend selection by line'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Encode special HTML chars (deleted)'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Sorting'
        DisplayName = 'Dialog "Sort lines"'
      end
      item
        Command = 789
        KeyStrokes = <>
        Category = 'Selection operations'
        DisplayName = 'Select brackets'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Collapse parent block'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Collapse/Expand current block with nested blocks'
      end
      item
        Command = 852
        KeyStrokes = <>
        Category = 'Blank operations'
        DisplayName = 'Replace spaces to tabs (leading)'
      end
      item
        Command = 892
        KeyStrokes = <>
        Category = 'Comments'
        DisplayName = 'Toggle line comment (at nonspace)'
      end
      item
        Command = 793
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Paste from clipboard, to 1st column'
      end
      item
        Command = 794
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 112
              end>
          end>
        Category = 'Search & Replace'
        DisplayName = 'Dialog "Commands"'
      end
      item
        Command = 795
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll to selection'
      end
      item
        Command = 796
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 32839
              end>
          end>
        Category = 'Projects'
        DisplayName = 'Dialog "Project files list"'
      end
      item
        Command = 2000
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Remove carets, leave first'
      end
      item
        Command = 2001
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Remove carets, leave last'
      end
      item
        Command = 2002
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Carets from selection, left edge'
      end
      item
        Command = 2003
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Carets from selection, right edge'
      end
      item
        Command = 2004
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Carets from selection, delete selection'
      end
      item
        Command = 2005
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Carets from search marks, left edge'
      end
      item
        Command = 2006
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Carets from search marks, right edge'
      end
      item
        Command = 2007
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Carets from search marks, delete marks'
      end
      item
        Command = 2008
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Extend carets up 1 line'
      end
      item
        Command = 2009
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Extend carets down 1 line'
      end
      item
        Command = 2010
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Extend carets up 1 page'
      end
      item
        Command = 2011
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Extend carets down 1 page'
      end
      item
        Command = 2012
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Extend carets up till beginning'
      end
      item
        Command = 2013
        KeyStrokes = <>
        Category = 'Multi-carets'
        DisplayName = 'Extend carets down till end'
      end
      item
        Command = 851
        KeyStrokes = <>
        Category = 'Sorting'
        DisplayName = 'Remove all duplicates'
      end
      item
        Command = 0
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 24763
              end>
          end>
        Category = 'Blank operations'
        DisplayName = 'Align by separator'
      end
      item
        Command = 798
        KeyStrokes = <>
        Category = 'Split view'
        DisplayName = 'Split groups - toggle split'
      end
      item
        Command = 893
        KeyStrokes = <>
        Category = 'Selection operations'
        DisplayName = 'Extend selection'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Selection operations'
        DisplayName = 'Shrink selection'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Favorites'
        DisplayName = 'Add current project to Favorites'
      end
      item
        Command = 895
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Reverse lines'
      end
      item
        Command = 896
        KeyStrokes = <>
        Category = 'Deleting text'
        DisplayName = 'Delete from caret to beginning of file'
      end
      item
        Command = 897
        KeyStrokes = <>
        Category = 'Deleting text'
        DisplayName = 'Delete from caret to end of file'
      end
      item
        Command = 898
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Shuffle lines'
      end
      item
        Command = 982
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Fold level 2'
      end
      item
        Command = 983
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Fold level 3'
      end
      item
        Command = 984
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Fold level 4'
      end
      item
        Command = 985
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Fold level 5'
      end
      item
        Command = 986
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Fold level 6'
      end
      item
        Command = 987
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Fold level 7'
      end
      item
        Command = 988
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Fold level 8'
      end
      item
        Command = 989
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Fold level 9'
      end
      item
        Command = 799
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Paste from clipboard, as column block'
      end
      item
        Command = 1000
        KeyStrokes = <>
        Category = 'Sorting'
        DisplayName = 'Extract duplicate lines (case sensitive)'
      end
      item
        Command = 1001
        KeyStrokes = <>
        Category = 'Sorting'
        DisplayName = 'Extract duplicate lines (case insensitive)'
      end
      item
        Command = 1100
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - default'
      end
      item
        Command = 1111
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - custom'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 1'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 2'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 3'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 4'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 5'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 6'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 7'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 8'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 9'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Set tab color - color 10'
      end
      item
        Command = 1002
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Non-printable chars: hide'
      end
      item
        Command = 1005
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Non-printable chars: show all'
      end
      item
        Command = 1003
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Non-printable chars: show spaces/tabs'
      end
      item
        Command = 1004
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Non-printable chars: show line ends'
      end
      item
        Command = 1006
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Non-printable chars: show detailed line ends'
      end
      item
        Command = 1007
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Dialog "Hide menu items"'
      end
      item
        Command = 1008
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Dialog "Restore lexer styles"'
      end
      item
        Command = 1009
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Dialog "External tools"'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Dialog "Explorer integration"'
      end
      item
        Command = 1012
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Edit file "Syn.ini"'
      end
      item
        Command = 1011
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Edit file "SynPlugins.ini"'
      end
      item
        Command = 1013
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Open filename selected in editor'
      end
      item
        Command = 1115
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Program Settings"'
      end
      item
        Command = 1116
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Colors"'
      end
      item
        Command = 1117
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Fonts"'
      end
      item
        Command = 1118
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Tabs"'
      end
      item
        Command = 1119
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "View Settings"'
      end
      item
        Command = 1120
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Select/Highlight"'
      end
      item
        Command = 1121
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Carets"'
      end
      item
        Command = 1122
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Lexer Overrides"'
      end
      item
        Command = 1123
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Keys"'
      end
      item
        Command = 1124
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Formats/Reload"'
      end
      item
        Command = 1125
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Search"'
      end
      item
        Command = 1126
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Tree/Map"'
      end
      item
        Command = 1127
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "History"'
      end
      item
        Command = 1128
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Sessions/Projects"'
      end
      item
        Command = 1129
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Auto-Complete"'
      end
      item
        Command = 1130
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Auto-Save"'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Spell Check"'
      end
      item
        Command = 1132
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Path Environment"'
      end
      item
        Command = -1
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Misc"'
      end
      item
        Command = 1014
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Dialog "Customize lexer styles"'
      end
      item
        Command = 1092
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Collapse level 2'
      end
      item
        Command = 1093
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Collapse level 3'
      end
      item
        Command = 1094
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Collapse level 4'
      end
      item
        Command = 1095
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Collapse level 5'
      end
      item
        Command = 1096
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Collapse level 6'
      end
      item
        Command = 1097
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Collapse level 7'
      end
      item
        Command = 1098
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Collapse level 8'
      end
      item
        Command = 1099
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Collapse level 9'
      end
      item
        Command = 1090
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Collapse all'
      end
      item
        Command = 1091
        KeyStrokes = <>
        Category = 'Syntax tree'
        DisplayName = 'Tree - Expand all'
      end
      item
        Command = 1135
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Undo"'
      end
      item
        Command = 1136
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "Insert/Format"'
      end
      item
        Command = 1137
        KeyStrokes = <>
        Category = 'Options dialog tabs'
        DisplayName = 'Tab "New/Open"'
      end
      item
        Command = 1020
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Copy search marks to clipboard'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Favorites'
        DisplayName = 'Organize Favorite projects'
      end
      item
        Command = 1021
        KeyStrokes = <>
        Category = 'Projects'
        DisplayName = 'Open project'
      end
      item
        Command = 1022
        KeyStrokes = <>
        Category = 'Projects'
        DisplayName = 'Add current file to project'
      end
      item
        Command = 1024
        KeyStrokes = <>
        Category = 'Projects'
        DisplayName = 'Create new project'
      end
      item
        Command = 1025
        KeyStrokes = <>
        Category = 'Clipboard operations'
        DisplayName = 'Paste from clipboard, then select'
      end
      item
        Command = 1026
        KeyStrokes = <>
        Category = 'Inserting text'
        DisplayName = 'Insert blank line above caret'
      end
      item
        Command = 1027
        KeyStrokes = <>
        Category = 'Inserting text'
        DisplayName = 'Insert blank line below caret'
      end
      item
        Command = 1028
        KeyStrokes = <>
        Category = 'Run'
        DisplayName = 'Open cmd.exe prompt in current folder'
      end
      item
        Command = 1029
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Copy current URL to clipboard'
      end
      item
        Command = 1030
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Open current URL in browser'
      end
      item
        Command = 1031
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Go to definition'
      end
      item
        Command = 1032
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Add current color to recents'
      end
      item
        Command = 1033
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Save folding to file'
      end
      item
        Command = 1034
        KeyStrokes = <>
        Category = 'Text folding'
        DisplayName = 'Load folding from file'
      end
      item
        Command = 1035
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Open last closed file'
      end
      item
        Command = 1036
        KeyStrokes = <>
        Category = 'Hints'
        DisplayName = 'Turn on auto-complete mode "Only words from file"'
      end
      item
        Command = 1037
        KeyStrokes = <>
        Category = 'Hints'
        DisplayName = 'Turn off auto-complete mode "Only words from file"'
      end
      item
        Command = 1038
        KeyStrokes = <>
        Category = 'Selection operations'
        DisplayName = 'Select token, without quotes'
      end
      item
        Command = 1039
        KeyStrokes = <>
        Category = 'Projects'
        DisplayName = 'Add all files to project'
      end
      item
        Command = 1040
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll current line to top of window'
      end
      item
        Command = 1041
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll current line to bottom of window'
      end
      item
        Command = 1042
        KeyStrokes = <>
        Category = 'Scrolling'
        DisplayName = 'Scroll current line to middle of window'
      end
      item
        Command = 1043
        KeyStrokes = <>
        Category = 'Projects'
        DisplayName = 'Save project'
      end
      item
        Command = 1044
        KeyStrokes = <
          item
            KeyDefs = <
              item
                ShortCut = 16576
              end>
          end>
        Category = 'Focusing'
        DisplayName = 'Toggle Console panel focus'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Dialog "New plugin" (deleted)'
      end
      item
        Command = 1046
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Dialog "New snippet"'
      end
      item
        Command = 1047
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Dialog "Snippets"'
      end
      item
        Command = 1048
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Show help file contents'
      end
      item
        Command = 1049
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Reset Python plugins'
      end
      item
        Command = 1050
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Next tab'
      end
      item
        Command = 1051
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Previous tab'
      end
      item
        Command = 1052
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Next output result'
      end
      item
        Command = 1053
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Previous output result'
      end
      item
        Command = 1054
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Next search or output result'
      end
      item
        Command = 1055
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Previous search or output result'
      end
      item
        Command = 1056
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle show folders on tab captions'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Dialog "Spelling options"'
      end
      item
        Command = 1057
        KeyStrokes = <>
        Category = 'Inserting text'
        DisplayName = 'Dialog "Insert char code"'
      end
      item
        Command = 1058
        KeyStrokes = <>
        Category = 'Projects'
        DisplayName = 'Update project (add missing files)'
      end
      item
        Command = 1059
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Close other tabs (all groups)'
      end
      item
        Command = 1060
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Move tab to next group'
      end
      item
        Command = 1061
        KeyStrokes = <>
        Category = 'Tabs'
        DisplayName = 'Move tab to previous group'
      end
      item
        Command = 1062
        KeyStrokes = <>
        Category = 'Focusing'
        DisplayName = 'Toggle Bookmarks panel focus'
      end
      item
        Command = 0
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Update ini file'
      end
      item
        Command = 1063
        KeyStrokes = <>
        Category = 'Print'
        DisplayName = 'Print now, all text'
      end
      item
        Command = 1064
        KeyStrokes = <>
        Category = 'Print'
        DisplayName = 'Print now, selection'
      end
      item
        Command = 618
        KeyStrokes = <>
        Category = 'Search & Replace'
        DisplayName = 'Dialog "Find/Replace in project"'
      end
      item
        Command = 1065
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Next modified line'
      end
      item
        Command = 1066
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Previous modified line'
      end
      item
        Command = 1067
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Next modified/saved line'
      end
      item
        Command = 1068
        KeyStrokes = <>
        Category = 'Go to'
        DisplayName = 'Previous modified/saved line'
      end
      item
        Command = 1069
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Open all files in folder'
      end
      item
        Command = 1071
        KeyStrokes = <>
        Category = 'Change case'
        DisplayName = 'Random case to current selection'
      end
      item
        Command = 1072
        KeyStrokes = <>
        Category = 'File'
        DisplayName = 'Restart program'
      end
      item
        Command = 1073
        KeyStrokes = <>
        Category = 'Sorting'
        DisplayName = 'Remove all duplicates+origins'
      end
      item
        Command = 1074
        KeyStrokes = <>
        Category = 'Sorting'
        DisplayName = 'Extract unique lines'
      end
      item
        Command = 1075
        KeyStrokes = <>
        Category = 'Miscellaneous'
        DisplayName = 'Show keyboard mapping HTML'
      end
      item
        Command = 1150
        KeyStrokes = <>
        Category = 'Add-ons manager'
        DisplayName = 'Install'
      end
      item
        Command = 1151
        KeyStrokes = <>
        Category = 'Add-ons manager'
        DisplayName = 'Remove'
      end
      item
        Command = 1152
        KeyStrokes = <>
        Category = 'Add-ons manager'
        DisplayName = 'Edit'
      end
      item
        Command = 1153
        KeyStrokes = <>
        Category = 'Add-ons manager'
        DisplayName = 'Update'
      end
      item
        Command = 1154
        KeyStrokes = <>
        Category = 'Add-ons manager'
        DisplayName = 'Download all'
      end
      item
        Command = 1210
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Convert encoding to - ANSI'
      end
      item
        Command = 1211
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Convert encoding to - OEM'
      end
      item
        Command = 1212
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Convert encoding to - UTF-8'
      end
      item
        Command = 1213
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Convert encoding to - UTF-8 no BOM'
      end
      item
        Command = 1214
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Convert encoding to - UTF-16 LE'
      end
      item
        Command = 1215
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Convert encoding to - UTF-16 BE'
      end
      item
        Command = 810
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Menu "Reload as encoding"'
      end
      item
        Command = 809
        KeyStrokes = <>
        Category = 'Encodings'
        DisplayName = 'Menu "Convert to encoding"'
      end
      item
        Command = 1155
        KeyStrokes = <>
        Category = 'Add-ons manager'
        DisplayName = 'Configure'
      end
      item
        Command = 800
        KeyStrokes = <>
        Category = 'Options'
        DisplayName = 'Toggle show micro-map'
      end>
    UseFirstControlKeys = True
    Left = 360
    Top = 252
  end
  object TimerTick: TTimer
    Interval = 500
    OnTimer = TimerTickTimer
    Left = 296
    Top = 360
  end
  object PopupStatusEnc: TSpTBXPopupMenu
    OnPopup = PopupStatusEncPopup
    Left = 288
    Top = 304
  end
  object PopupStatusLineEnds: TSpTBXPopupMenu
    OnPopup = PopupStatusLineEndsPopup
    Left = 320
    Top = 304
    object TBXItemEndWin: TSpTBXItem
      Tag = 1
      Caption = 'Windows (CR LF)'
      Checked = True
      GroupIndex = 1
      RadioItem = True
      OnClick = SetFormat
    end
    object TBXItemEndUn: TSpTBXItem
      Tag = 3
      Caption = 'Unix (LF)'
      GroupIndex = 1
      RadioItem = True
      OnClick = SetFormat
    end
    object TBXItemEndMac: TSpTBXItem
      Tag = 2
      Caption = 'Mac (CR)'
      GroupIndex = 1
      RadioItem = True
      OnClick = SetFormat
    end
  end
  object ImgListTree: TImageList
    AllocBy = 10
    Left = 312
    Top = 192
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000848484008484840084848400C6C6C60084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840084848400FFFFFF00C6C6C600FFFFFF00C6C6C60084848400848484000000
      0000000000000000000000000000000000000000000000000000000000003131
      3100212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840000000000000000000000
      000000000000000000000000000000000000000000000000000084848400C6C6
      C600FFFFFF00C6C6C600FFFFFF00C6C6C600C6C6C60084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000080808000000000000000000000000000000000010101000000000002121
      2100212121000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400000000008484
      840084848400848484008484840000000000000000000000000084848400FFFF
      FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000080808003131310000000000000000000000000000000000101010002121
      2100000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000840000000000008484840000FF000000FF
      000000FF000000FF000084848400000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000848400000000008484840000FFFF0000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000084848400C6C6
      C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C60084848400848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000080808001010100000000000000000000000000000000000393939000808
      0800313131000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000FF00000084000000000000848484000084000000FF
      000000FF000000FF000084848400000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF000084840000000000848484000084840000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000084848400FFFF
      FF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000001818180021212100000000000000000031313100313131000000
      00000000000018181800000000000000000000000000000000008484840000FF
      000000FF000000FF0000848484000084000000000000000000000000000000FF
      000000FF000000FF0000848484000000000000000000000000008484840000FF
      FF0000FFFF0000FFFF00848484000084840000000000000000000000000000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000002921210021212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840000FF0000848484008484840000840000008400000084000000FF000000FF
      000000FF000000FF000084848400000000000000000000000000000000008484
      840000FFFF00848484008484840000848400008484000084840000FFFF0000FF
      FF0000FFFF0000FFFF008484840000000000000000000000000084848400C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000002929210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000084848400008400000084000000FF000000FF000000FF
      00000000000000FF000000000000000000000000000000000000000000000000
      0000848484000000000084848400008484000084840000FFFF0000FFFF0000FF
      FF000000000000FFFF0000000000000000000000000000000000000000008484
      8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600848484008484840000000000000000000000000000000000000000000000
      0000181018001010100018181800080808000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000084000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848484000084840000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A4A4A004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000084848400C6C6C600C6C6C6008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000029292900313131000000000021212100424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484840000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005A5A5A00292929004A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840000000000000000000000000000000000000000008484
      8400000000000000000084848400000000000000000084848400000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000000000000000000008484840000848400008484000084
      8400000000008484840084848400000000000000000000000000000000008484
      8400000000000000000000000000000000008484840000848400848484000084
      8400000000008484840000000000000000000000000000000000000000008484
      8400000000000000000084848400000000000000000084848400848484008484
      8400848484000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000848484008484
      8400848484000000000000000000000000000084840000848400008484000084
      8400008484000000000084848400000000000000000000000000848484008484
      8400848484000000000000000000000000000084840084848400FFFFFF00FFFF
      FF00008484000000000084848400000000000000000084848400848484000000
      0000848484008484840000000000848484008484840000000000000000008484
      84008484840084848400848484000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF008484840000000000000000000000FF0000000000000000008484
      8400848484008484840084848400008484000084840000848400008484000084
      8400008484000000000084848400000000000000FF0000000000000000008484
      84008484840084848400848484000084840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000084848400000000000000000000000000000000008484
      840084848400FFFFFF0084848400FFFFFF008484840000848400008484000000
      00008484840000000000000000000000000084848400FFFFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C6008484840000000000000000000000FF000000FF000000FF000000
      00008484840084848400848484000084840000FFFF0000848400008484000084
      8400008484000084840000000000000000000000FF00848484000000FF000000
      0000848484008484840084848400008484008484840084848400FFFFFF00FFFF
      FF00FFFFFF0000848400848484000000000000000000000000000000FF000000
      0000848484008484840084848400008484000084840000848400008484000084
      84000000000000000000000000000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF008484840000000000000000000000FF000000FF000000FF000000
      FF000000000000000000848484000084840000FFFF0000FFFF00008484000084
      8400008484000084840000000000000000000000FF0084848400FFFFFF000000
      FF000000000000000000848484000084840000FFFF008484840084848400FFFF
      FF00FFFFFF0000848400000000000000000000000000848484000000FF000000
      FF000000000084848400848484000084840000FFFF0000848400008484000084
      84000084840084848400848484000000000084848400FFFFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C6008484840000000000000000000000FF000000FF000000FF000000
      8400000084000000840000000000FFFFFF008484840000FFFF0000FFFF000084
      8400008484000000000000000000000000000000FF0084848400FFFFFF00FFFF
      FF00848484008484840000000000FFFFFF00FFFFFF0000FFFF00848484008484
      84000084840000000000000000000000000000000000000000000000FF000000
      FF000000FF0000000000000000000084840000FFFF0000FFFF00008484000084
      84000084840000000000000000000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF008484840000000000000000000000FF000000FF00000084000000
      84000000840000008400FFFFFF00FFFFFF00FFFFFF0000848400008484000084
      8400000000000000000000000000000000000000FF0084848400848484008484
      84000000840000008400FFFFFF00FFFFFF00FFFFFF0000848400008484000084
      84000000000000000000000000000000000000000000000000000000FF000000
      FF00000084000000840000008400FFFFFF00FFFFFF000084840000848400FFFF
      FF008484840000000000000000000000000084848400FFFFFF00C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FF
      FF00C6C6C6008484840000000000000000000000FF000000FF00000084000000
      8400000000000000000084848400848484008484840084848400848484008484
      8400848484000000000000000000000000000000FF0084848400000084000000
      8400000000000000000084848400848484008484840084848400848484008484
      84008484840000000000000000000000000000000000848484000000FF000000
      FF00000084008484840000000000848484008484840084848400848484008484
      84000000000084848400848484000000000084848400FFFFFF0000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6C60000FFFF00C6C6
      C60000FFFF008484840000000000000000000000FF0000008400000000000000
      00000000000084848400FFFFFF00FF00000084840000FF000000FF0000000000
      0000848484000000000000000000000000000000FF0000008400000000000000
      0000000000008484840084848400FF00000084840000FF000000FF0000000000
      00008484840000000000000000000000000000000000000000000000FF000000
      8400FFFFFF00FFFFFF0084848400FF00000084840000FF000000000000008484
      84008484840000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFFFF00FF000000FF000000FF0000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000008484
      8400FFFFFF00FFFFFF00848484008484000084840000FF000000000000008484
      84008484840000000000000000000000000084848400C6C6C60000FFFF00C6C6
      C60000FFFF00C6C6C60000FFFF00C6C6C6008484840084848400848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      00000000000000000000000000008484000084840000FF000000FF0000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000084848400848484000000
      000084848400848484000000000084848400FF000000FF000000000000008484
      8400000000008484840084848400000000000000000084848400C6C6C60000FF
      FF00C6C6C60000FFFF00C6C6C600848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFFFF00FF000000FF000000FF0000000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000FFFF000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000848484000000000000000000000000000000000000000000000000008484
      84000000000000000000848484008484000084840000FF000000840000000000
      0000848484000000000000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008484000084840000FF000000FF0000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840084848400848484008400
      0000000000000000000000000000000000000000000000000000000000008484
      8400000000000000000084848400000000000000000084848400000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFF3FFFFFFFFFFFFF
      F81FDFFFFFFFFFFFE00FE7FFFC7FFC7FC007F727F821F821C003F38FF001F001
      C003F3C7E001E001C003F193C001C001C003F9FFE001E001C003F9FFF40BF40B
      E003F07FFC1FFC1FF00FFCFFFC3FFC3FF83FFC9FFE7FFE7FFCFFFE3FFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7FFC7FFFFFFFFFF83FF83EDB7
      8001EF01EF03ED870001C701C7018001000100010001E007000100030001C007
      0001000300038001000100070007C0070001000F000FC00700010C070C078001
      000138073807C0070001FC07F807E0070003FE07FC07800180FFFC07F807EC17
      C1FFFE0FFC0FEDB7FFFFFC0FFC0FFFFF00000000000000000000000000000000
      000000000000}
  end
  object PrinterSetupDialog: TPrinterSetupDialog
    Left = 576
    Top = 260
  end
  object SyntStyles: TSyntStyles
    Styles = <
      item
        DisplayName = 'type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        FormatFlags = [ffBold, ffItalic, ffUnderline, ffStrikeOut, ffReadOnly, ffHidden]
      end
      item
        DisplayName = 'desc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
      end
      item
        DisplayName = 'hintsB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FormatType = ftCustomFont
      end
      item
        DisplayName = 'hints'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FormatType = ftCustomFont
      end
      item
        DisplayName = 'hintsDesc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        FormatType = ftCustomFont
      end
      item
        DisplayName = 'none'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        BgColor = clWindow
        FormatType = ftColor
      end>
    Left = 480
    Top = 264
  end
  object ecACP: TAutoCompletePopup
    ShowWhenNone = False
    Images = ImgListTree
    Delay = 200
    Styles = SyntStyles
    FixedItemHeight = True
    ColumnSpace = 4
    Options = [aoFormatted, aoExactClose]
    OnGetAutoCompleteList = ecACPGetAutoCompleteList
    OnAfterComplete = ecACPAfterComplete
    OnCheckChar = ecACPCheckChar
    OnKeyPress = ecACPKeyPress
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    DropDownCount = 10
    IntegralHeight = True
    ItemHeight = 15
    AutoSelect = False
    BgColor = clWindow
    CommandID = 650
    Width = 400
    Height = 200
    Constraints.MinWidth = 320
    ToolHint.Left = 0
    ToolHint.Top = 0
    ToolHint.Width = 150
    ToolHint.Height = 0
    ToolHint.Active = True
    ToolHint.Styles = SyntStyles
    ToolHint.Formatted = True
    Controls = <>
    OnChange = ecACPChange
    OnCloseUp = ecACPCloseUp
    OnShow = ecACPShow
    Left = 480
    Top = 232
  end
  object ParamCompletion: TParamCompletion
    DeclSeparator = ','
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OnGetParams = ParamCompletionGetParams
    Delay = 100
    UpDownWidth = 32
    Shadow = False
    ToolHint.Left = 0
    ToolHint.Top = 0
    ToolHint.Width = 0
    ToolHint.Height = 0
    Controls = <>
    CommandID = 652
    Left = 512
    Top = 232
  end
  object TemplatePopup: TTemplatePopup
    Templates = <>
    Options = [ctIncludeOwn, ctIncludeLexer, ctEnableSearch, ctDisplayShortCut, ctDisplayDesc, ctRightDesc, ctFiltered]
    SortType = ctsName
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    AutoSelect = False
    BgColor = clWindow
    CommandID = 651
    Constraints.MinWidth = 220
    ToolHint.Left = 0
    ToolHint.Top = 0
    ToolHint.Width = 0
    ToolHint.Height = 0
    ToolHint.Styles = SyntStyles
    ToolHint.Font.Charset = DEFAULT_CHARSET
    ToolHint.Font.Color = clWindowText
    ToolHint.Font.Height = -12
    ToolHint.Font.Name = 'Tahoma'
    ToolHint.Font.Style = []
    Controls = <>
    OnShow = TemplatePopupShow
    Left = 544
    Top = 232
  end
  object PopupLexers: TSpTBXPopupMenu
    OnPopup = PopupLexersPopup
    Left = 376
    Top = 304
  end
  object ecCharPopup: TecSelCharPopup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    CellWidth = 16
    CellHeight = 18
    ShowCodeHint = False
    BgColor = clWindow
    ToolHint.Left = 0
    ToolHint.Top = 0
    ToolHint.Width = 0
    ToolHint.Height = 0
    ToolHint.Active = True
    Controls = <>
    OnChange = ecCharPopupChange
    OnShow = ecCharPopupShow
    Left = 512
    Top = 264
  end
  object TimerRedraw: TTimer
    OnTimer = TimerRedrawTimer
    Left = 320
    Top = 360
  end
  object DKLanguageController1: TDKLanguageController
    IgnoreList.Strings = (
      'ac*.Category'
      'bbg*.Caption'
      'bBk*.Caption'
      'ec*.Category'
      'ecACP.*'
      'ecSyntPrinter.*'
      'ImageList*'
      'MRU.*'
      'PropsManager*.*'
      'Python*'
      'SyntStyles.*'
      'TBXItemEnd*'
      'TBXItemZSet*'
      'TBXSwitcher.*'
      'TemplateEditor.*')
    Options = [dklcoAutoSaveLangSource, dklcoIgnoreEmptyProps, dklcoIgnoreFontProps]
    StoreList.Strings = (
      '*.Caption'
      '*.Hint')
    OnLanguageChanged = DKLanguageController1LanguageChanged
    Left = 577
    Top = 233
    LangData = {
      0600666D4D61696E0001CB0300000A00544258446F636B546F70000006007462
      46696C650101000000B5020000070043617074696F6E0010005442585375626D
      656E754261724E65770102000000B6020000070043617074696F6EB702000004
      0048696E740011005442585375626D656E754261724F70656E0102000000B802
      0000070043617074696F6EB9020000040048696E740011005442585375626D65
      6E75426172536176650102000000BC020000070043617074696F6EBD02000004
      0048696E740010005442584974656D4261725361766541730102000000BE0200
      00070043617074696F6E370B0000040048696E740012005442585375626D656E
      754261725072696E740102000000C4020000070043617074696F6E750A000004
      0048696E740011005442584974656D426172507265766965770102000000C602
      0000070043617074696F6E760A0000040048696E740011005442584974656D42
      6172506167655365740101000000C8020000070043617074696F6E0012005442
      584974656D4261725072696E745365740101000000CA02000007004361707469
      6F6E0011005442585375626D656E7542617246696E640102000000E009000007
      0043617074696F6EE1090000040048696E74000F005442584974656D42617246
      4E6578740101000000CE020000070043617074696F6E000F005442584974656D
      42617246507265760101000000D0020000070043617074696F6E001100544258
      536570617261746F724974656D39000012005442584974656D426172576F7264
      4E6578740101000000D2020000070043617074696F6E0012005442584974656D
      426172576F7264507265760101000000D4020000070043617074696F6E001200
      544258536570617261746F724974656D313100000F005442584974656D426172
      4D61726B730101000000D6020000070043617074696F6E001100544258536570
      617261746F724974656D31000012005442585375626D656E7542617253657475
      700102000000F2020000070043617074696F6EF3020000040048696E74000F00
      5442584974656D4261724C657865720101000000F4020000070043617074696F
      6E0012005442584974656D4261724C657865724C69620101000000250B000007
      0043617074696F6E0006007462456469740101000000FA020000070043617074
      696F6E000E005442584974656D426172436F70790102000000FB020000070043
      617074696F6EFC020000040048696E74000D005442584974656D426172437574
      0102000000FD020000070043617074696F6EFE020000040048696E74000F0054
      42584974656D42617250617374650102000000FF020000070043617074696F6E
      00030000040048696E740010005442584974656D42617244656C657465010200
      000001030000070043617074696F6E02030000040048696E7400100054425849
      74656D42617253656C416C6C010200000003030000070043617074696F6E0403
      0000040048696E74001100544258536570617261746F724974656D3300000E00
      5442584974656D426172556E646F010200000005030000070043617074696F6E
      06030000040048696E74000E005442584974656D4261725265646F0102000000
      07030000070043617074696F6E08030000040048696E74001100544258536570
      617261746F724974656D3400000E005442585375626D656E75536F7274010200
      000009030000070043617074696F6EEC080000040048696E7400110054425849
      74656D426172536F727441736301010000000B030000070043617074696F6E00
      12005442584974656D426172536F72744465736301010000000D030000070043
      617074696F6E000E005442585375626D656E754361736501020000000F030000
      070043617074696F6E10030000040048696E740013005442584974656D426172
      436173655570706572010100000011030000070043617074696F6E0013005442
      584974656D426172436173654C6F776572010100000013030000070043617074
      696F6E0013005442584974656D426172436173655469746C6501010000001503
      0000070043617074696F6E0014005442584974656D42617243617365496E7665
      7274010100000017030000070043617074696F6E000B00544258446F636B4C65
      667400000600746256696577010100000019030000070043617074696F6E000F
      005442584974656D426172505472656501020000001A03000007004361707469
      6F6E460A0000040048696E740013005442585375626D656E754261724E507269
      6E74010200000022030000070043617074696F6E450A0000040048696E740011
      00544258536570617261746F724974656D3200000E005442584974656D426172
      436F6D6D010200000024030000070043617074696F6E25030000040048696E74
      000F005442584974656D426172556E636F6D0102000000260300000700436170
      74696F6E27030000040048696E74001200544258536570617261746F72497465
      6D3130000010005442584974656D426172496E64656E74010200000028030000
      070043617074696F6E29030000040048696E740012005442584974656D426172
      556E696E64656E7401020000002A030000070043617074696F6E2B0300000400
      48696E74000600706C547265650001010000000700546F6F6C62617201010000
      00E2090000070043617074696F6E0004005472656500000D00544258446F636B
      426F74746F6D00000C00544258446F636B526967687400000600537461747573
      0001010000000D00537461747573546F6F6C6261720101000000E50900000700
      43617074696F6E0004004D656E750000060074624D656E750101000000FB0500
      00070043617074696F6E000E005442585375626D656E7546696C650101000000
      35030000070043617074696F6E0012005442585375626D656E754974656D464E
      6577010100000036030000070043617074696F6E000B005442584974656D464E
      6577010200000037030000070043617074696F6E38030000040048696E74000E
      005442584974656D464E657757696E010200000039030000070043617074696F
      6E380B0000040048696E74000C005442584974656D464F70656E01020000003A
      030000070043617074696F6E3B030000040048696E74000E005442584974656D
      4652656F70656E01020000003C030000070043617074696F6E3D030000040048
      696E74000C005442584974656D465361766501020000003E0300000700436170
      74696F6E3F030000040048696E74000E005442584974656D4653617665417301
      0200000040030000070043617074696F6E41030000040048696E740014005442
      585375626D656E754974656D4578706F72740101000000420300000700436170
      74696F6E000F005442584974656D4645787048746D6C01020000004303000007
      0043617074696F6E44030000040048696E74000E005442584974656D46457870
      527466010200000045030000070043617074696F6E46030000040048696E7400
      0D005442584974656D465072696E74010200000048030000070043617074696F
      6E780A0000040048696E74000F005442584974656D4650726576696577010200
      00004A030000070043617074696F6E790A0000040048696E7400110054425849
      74656D4650616765536574757001010000004C030000070043617074696F6E00
      14005442584974656D465072696E746572536574757001020000004E03000007
      0043617074696F6E7E0A0000040048696E74001200544258536570617261746F
      724974656D313500000C005442584974656D4645786974010200000050030000
      070043617074696F6E26050000040048696E74000E005442585375626D656E75
      45646974010100000051030000070043617074696F6E000C005442584974656D
      45556E646F010200000052030000070043617074696F6E53030000040048696E
      74000C005442584974656D455265646F01020000005403000007004361707469
      6F6E55030000040048696E74001100544258536570617261746F724974656D36
      00000B005442584974656D45437574010200000056030000070043617074696F
      6E57030000040048696E74000C005442584974656D45436F7079010200000058
      030000070043617074696F6E59030000040048696E74000D005442584974656D
      45506173746501020000005A030000070043617074696F6E5B03000004004869
      6E74000E005442584974656D4544656C65746501020000005C03000007004361
      7074696F6E5D030000040048696E740011005442584974656D4553656C656374
      416C6C01020000005E030000070043617074696F6E5F030000040048696E7400
      1200544258536570617261746F724974656D313700000E005442584974656D45
      496E64656E74010200000064030000070043617074696F6E6503000004004869
      6E740010005442584974656D45556E696E64656E740102000000660300000700
      43617074696F6E67030000040048696E74000B005442584974656D4544757001
      0200000068030000070043617074696F6E22050000040048696E74000D005442
      584974656D455461626C65010200000069030000070043617074696F6E230500
      00040048696E740015005442585375626D656E754974656D536F72744F707301
      010000006A030000070043617074696F6E000F005442584974656D45536F7274
      41736301020000006C030000070043617074696F6E6D030000040048696E7400
      10005442584974656D45536F72744465736301020000006E0300000700436170
      74696F6E6F030000040048696E740015005442585375626D656E754974656D43
      6173654F7073010100000070030000070043617074696F6E0011005442584974
      656D45436173655570706572010200000072030000070043617074696F6E7303
      0000040048696E740011005442584974656D45436173654C6F77657201020000
      0074030000070043617074696F6E75030000040048696E740011005442584974
      656D45436173655469746C65010200000076030000070043617074696F6E7703
      0000040048696E740012005442584974656D4543617365496E76657274010200
      000078030000070043617074696F6E79030000040048696E7400100054425853
      75626D656E75536561726368010100000090030000070043617074696F6E000C
      005442584974656D534E657874010200000093030000070043617074696F6E94
      030000040048696E74000C005442584974656D53507265760102000000950300
      00070043617074696F6E96030000040048696E74001200544258536570617261
      746F724974656D3139000010005442584974656D53576F72644E657874010200
      000097030000070043617074696F6E98030000040048696E7400110054425849
      74656D53576F72645072696F72010200000099030000070043617074696F6E9A
      030000040048696E740010005442584974656D534D61726B4E65787401020000
      009B030000070043617074696F6E12050000040048696E740010005442584974
      656D534D61726B5072657601020000009C030000070043617074696F6E130500
      00040048696E740011005442584974656D534D61726B436C6561720102000000
      9D030000070043617074696F6E9E030000040048696E74001200544258536570
      617261746F724974656D323100000C005442584974656D53476F746F01020000
      009F030000070043617074696F6EA0030000040048696E740013005442585375
      626D656E75426F6F6B6D61726B730101000000A1030000070043617074696F6E
      0013005442585375626D656E754974656D426B5365740102000000A203000007
      0043617074696F6E11070000040048696E740009005442584974656D47300101
      000000A3030000070043617074696F6E0009005442584974656D473101010000
      00A4030000070043617074696F6E0009005442584974656D47320101000000A5
      030000070043617074696F6E0009005442584974656D47330101000000A60300
      00070043617074696F6E0009005442584974656D47340101000000A703000007
      0043617074696F6E0009005442584974656D47350101000000A8030000070043
      617074696F6E0009005442584974656D47360101000000A90300000700436170
      74696F6E0009005442584974656D47370101000000AA03000007004361707469
      6F6E0009005442584974656D47380101000000AB030000070043617074696F6E
      0009005442584974656D47390101000000AC030000070043617074696F6E0014
      005442585375626D656E754974656D426B476F746F0102000000AD0300000700
      43617074696F6E12070000040048696E740009005442584974656D4230010100
      0000AE030000070043617074696F6E0009005442584974656D42310101000000
      AF030000070043617074696F6E0009005442584974656D42320101000000B003
      0000070043617074696F6E0009005442584974656D42330101000000B1030000
      070043617074696F6E0009005442584974656D42340101000000B20300000700
      43617074696F6E0009005442584974656D42350101000000B303000007004361
      7074696F6E0009005442584974656D42360101000000B4030000070043617074
      696F6E0009005442584974656D42370101000000B5030000070043617074696F
      6E0009005442584974656D42380101000000B6030000070043617074696F6E00
      09005442584974656D42390101000000B7030000070043617074696F6E001000
      5442585375626D656E754C65786572730101000000BA03000007004361707469
      6F6E0011005442585375626D656E754F7074696F6E730101000000BB03000007
      0043617074696F6E000D005442584974656D4F53657475700102000000BC0300
      00070043617074696F6EBD030000040048696E74000D005442584974656D4F4C
      657865720102000000BE030000070043617074696F6EBF030000040048696E74
      0010005442584974656D4F4C657865724C69620102000000C003000007004361
      7074696F6EC1030000040048696E74000A005442584974656D4F524F01020000
      00C3030000070043617074696F6EC4030000040048696E74000C005442584974
      656D4F547265650102000000C5030000070043617074696F6EC6030000040048
      696E74000C005442584974656D4F466F6C640102000000C70300000700436170
      74696F6EC8030000040048696E74000C005442584974656D4F57726170010200
      0000C9030000070043617074696F6ECA030000040048696E74000C0054425849
      74656D4F4E756D730102000000CB030000070043617074696F6ECC0300000400
      48696E74000E005442584974656D4F4E5072696E740102000000CD0300000700
      43617074696F6EC4090000040048696E74000E005442585375626D656E754865
      6C700101000000CF030000070043617074696F6E0014005442584974656D4865
      6C70526561646D654469720102000000D0030000070043617074696F6E200500
      00040048696E740010005442584974656D48656C7041626F75740102000000D1
      030000070043617074696F6E21050000040048696E7400070050616E656C4267
      00000E0054656D706C617465456469746F7200000A00416374696F6E4C697374
      00000D0065635072696E74416374696F6E010200000006000000070043617074
      696F6E7B0A0000040048696E7400080061634E657754616201020000000F0000
      00070043617074696F6E10000000040048696E74000B0061634E657757696E64
      6F77010200000012000000070043617074696F6E390B0000040048696E74000E
      0065635072696E7465725365747570010100000014000000070043617074696F
      6E00060061634F70656E010200000017000000070043617074696F6E18000000
      040048696E74000800616352657265616401020000001A000000070043617074
      696F6E1B000000040048696E7400060061635361766501020000001D00000007
      0043617074696F6E1E000000040048696E740008006163536176654173010200
      000020000000070043617074696F6E21000000040048696E74000B0061634578
      706F7274525446010400000023000000070043617074696F6E250000000A0044
      656661756C7445787426000000060046696C74657224000000040048696E7400
      0C0061634578706F727448544D4C010400000028000000070043617074696F6E
      2A0000000A0044656661756C744578742B000000060046696C74657229000000
      040048696E740007006163536574757000000F00616353657475704C65786572
      4C6962000006006563436F7079010200000036000000070043617074696F6E37
      000000040048696E74000500656343757401020000003C000000070043617074
      696F6E3D000000040048696E740007006563506173746501020000003F000000
      070043617074696F6E40000000040048696E740007006563436C656172010200
      000042000000070043617074696F6E43000000040048696E74000B0065635365
      6C656374416C6C010200000045000000070043617074696F6E46000000040048
      696E740006006563556E646F010200000048000000070043617074696F6E4900
      0000040048696E7400060065635265646F01020000004B000000070043617074
      696F6E4C000000040048696E740008006563496E64656E7401020000004E0000
      00070043617074696F6E4F000000040048696E74000A006563556E696E64656E
      74010200000051000000070043617074696F6E52000000040048696E74000B00
      65634C6F77657243617365010100000054000000070043617074696F6E000B00
      6563557070657243617365010100000056000000070043617074696F6E000B00
      65635469746C6543617365010100000058000000070043617074696F6E000C00
      6563546F67676C654361736501010000005A000000070043617074696F6E000E
      006563436F6D6D656E744C696E657301020000005C000000070043617074696F
      6E5D000000040048696E740010006563556E436F6D6D656E744C696E65730102
      0000005F000000070043617074696F6E60000000040048696E74000A00656353
      686F7754726565010100000062000000070043617074696F6E000F006563536F
      7274417363656E64696E67010200000065000000070043617074696F6E660000
      00040048696E740010006563536F727444657363656E64696E67010200000068
      000000070043617074696F6E69000000040048696E74000A006563526561644F
      6E6C7901020000006E000000070043617074696F6E6F000000040048696E7400
      0600656346696E64010100000072000000040048696E74000600656357726170
      010200000074000000070043617074696F6E75000000040048696E74000A0065
      634C696E654E756D73010200000077000000070043617074696F6E7800000004
      0048696E740009006563466F6C64696E6701020000007A000000070043617074
      696F6E7B000000040048696E74000A0065634E6F6E5072696E7401020000007D
      000000070043617074696F6E7E000000040048696E740002005344000002004F
      4401010000007F000000060046696C746572000D0053796E7461784D616E6167
      65720101000000800000000D004D656E75506C61696E54657874000C0050726F
      70734D616E6167657200000D00656353796E745072696E74657200000B00506F
      707570456469746F7200000E005442584974656D437478556E646F0102000000
      D2030000070043617074696F6ED3030000040048696E74000E00544258497465
      6D4374785265646F0102000000D4030000070043617074696F6ED50300000400
      48696E74001200544258536570617261746F724974656D313400000D00544258
      4974656D4374784375740102000000D6030000070043617074696F6ED7030000
      040048696E74000E005442584974656D437478436F70790102000000D8030000
      070043617074696F6ED9030000040048696E74000F005442584974656D437478
      50617374650102000000DA030000070043617074696F6EDB030000040048696E
      74000D005442584974656D43747844656C0102000000DC030000070043617074
      696F6EDD030000040048696E740013005442584974656D43747853656C656374
      416C6C0102000000DE030000070043617074696F6EDF030000040048696E7400
      0D00496D674C69737447757474657200000E0053796E744B65794D617070696E
      6701B2040000F403000011004974656D735B305D2E43617465676F7279890000
      0014004974656D735B305D2E446973706C61794E616D65580400001300497465
      6D735B3130305D2E43617465676F72797B01000016004974656D735B3130305D
      2E446973706C61794E616D655904000013004974656D735B3130315D2E436174
      65676F72797D01000016004974656D735B3130315D2E446973706C61794E616D
      655A04000013004974656D735B3130325D2E43617465676F72797F0100001600
      4974656D735B3130325D2E446973706C61794E616D655B04000013004974656D
      735B3130335D2E43617465676F72798101000016004974656D735B3130335D2E
      446973706C61794E616D655C04000013004974656D735B3130345D2E43617465
      676F72798301000016004974656D735B3130345D2E446973706C61794E616D65
      5D04000013004974656D735B3130355D2E43617465676F727985010000160049
      74656D735B3130355D2E446973706C61794E616D655E04000013004974656D73
      5B3130365D2E43617465676F72798701000016004974656D735B3130365D2E44
      6973706C61794E616D655F04000013004974656D735B3130375D2E4361746567
      6F72798901000016004974656D735B3130375D2E446973706C61794E616D6560
      04000013004974656D735B3130385D2E43617465676F72798C01000016004974
      656D735B3130385D2E446973706C61794E616D656104000013004974656D735B
      3130395D2E43617465676F72798F01000016004974656D735B3130395D2E4469
      73706C61794E616D65FE03000012004974656D735B31305D2E43617465676F72
      79A400000015004974656D735B31305D2E446973706C61794E616D6562040000
      13004974656D735B3131305D2E43617465676F72799201000016004974656D73
      5B3131305D2E446973706C61794E616D656304000013004974656D735B313131
      5D2E43617465676F72799501000016004974656D735B3131315D2E446973706C
      61794E616D656404000013004974656D735B3131325D2E43617465676F727998
      01000016004974656D735B3131325D2E446973706C61794E616D656504000013
      004974656D735B3131335D2E43617465676F72799B01000016004974656D735B
      3131335D2E446973706C61794E616D656604000013004974656D735B3131345D
      2E43617465676F72799E01000016004974656D735B3131345D2E446973706C61
      794E616D656704000013004974656D735B3131355D2E43617465676F7279A101
      000016004974656D735B3131355D2E446973706C61794E616D65680400001300
      4974656D735B3131365D2E43617465676F7279A401000016004974656D735B31
      31365D2E446973706C61794E616D656904000013004974656D735B3131375D2E
      43617465676F7279A701000016004974656D735B3131375D2E446973706C6179
      4E616D656A04000013004974656D735B3131385D2E43617465676F7279AA0100
      0016004974656D735B3131385D2E446973706C61794E616D656B040000130049
      74656D735B3131395D2E43617465676F7279AD01000016004974656D735B3131
      395D2E446973706C61794E616D65FF03000012004974656D735B31315D2E4361
      7465676F7279A600000015004974656D735B31315D2E446973706C61794E616D
      656C04000013004974656D735B3132305D2E43617465676F7279B00100001600
      4974656D735B3132305D2E446973706C61794E616D656D04000013004974656D
      735B3132315D2E43617465676F7279B301000016004974656D735B3132315D2E
      446973706C61794E616D656E04000013004974656D735B3132325D2E43617465
      676F7279B601000016004974656D735B3132325D2E446973706C61794E616D65
      6F04000013004974656D735B3132335D2E43617465676F7279B9010000160049
      74656D735B3132335D2E446973706C61794E616D657004000013004974656D73
      5B3132345D2E43617465676F7279BC01000016004974656D735B3132345D2E44
      6973706C61794E616D657104000013004974656D735B3132355D2E4361746567
      6F7279BF01000016004974656D735B3132355D2E446973706C61794E616D6572
      04000013004974656D735B3132365D2E43617465676F7279C201000016004974
      656D735B3132365D2E446973706C61794E616D657304000013004974656D735B
      3132375D2E43617465676F7279C501000016004974656D735B3132375D2E4469
      73706C61794E616D657404000013004974656D735B3132385D2E43617465676F
      7279C801000016004974656D735B3132385D2E446973706C61794E616D657504
      000013004974656D735B3132395D2E43617465676F7279CA0100001600497465
      6D735B3132395D2E446973706C61794E616D650004000012004974656D735B31
      325D2E43617465676F7279A800000015004974656D735B31325D2E446973706C
      61794E616D657604000013004974656D735B3133305D2E43617465676F7279CC
      01000016004974656D735B3133305D2E446973706C61794E616D657704000013
      004974656D735B3133315D2E43617465676F7279CE01000016004974656D735B
      3133315D2E446973706C61794E616D657804000013004974656D735B3133325D
      2E43617465676F7279D001000016004974656D735B3133325D2E446973706C61
      794E616D657904000013004974656D735B3133335D2E43617465676F7279D301
      000016004974656D735B3133335D2E446973706C61794E616D657A0400001300
      4974656D735B3133345D2E43617465676F7279D601000016004974656D735B31
      33345D2E446973706C61794E616D657B04000013004974656D735B3133355D2E
      43617465676F7279D801000016004974656D735B3133355D2E446973706C6179
      4E616D657C04000013004974656D735B3133365D2E43617465676F7279DA0100
      0016004974656D735B3133365D2E446973706C61794E616D657D040000130049
      74656D735B3133375D2E43617465676F7279DD01000016004974656D735B3133
      375D2E446973706C61794E616D657E04000013004974656D735B3133385D2E43
      617465676F7279E001000016004974656D735B3133385D2E446973706C61794E
      616D657F04000013004974656D735B3133395D2E43617465676F7279E3010000
      16004974656D735B3133395D2E446973706C61794E616D650104000012004974
      656D735B31335D2E43617465676F7279AA00000015004974656D735B31335D2E
      446973706C61794E616D658004000013004974656D735B3134305D2E43617465
      676F7279E601000016004974656D735B3134305D2E446973706C61794E616D65
      8104000013004974656D735B3134315D2E43617465676F7279E9010000160049
      74656D735B3134315D2E446973706C61794E616D658204000013004974656D73
      5B3134325D2E43617465676F7279EC01000016004974656D735B3134325D2E44
      6973706C61794E616D658304000013004974656D735B3134335D2E4361746567
      6F7279EF01000016004974656D735B3134335D2E446973706C61794E616D6584
      04000013004974656D735B3134345D2E43617465676F7279F201000016004974
      656D735B3134345D2E446973706C61794E616D658504000013004974656D735B
      3134355D2E43617465676F7279F501000016004974656D735B3134355D2E4469
      73706C61794E616D658604000013004974656D735B3134365D2E43617465676F
      7279F801000016004974656D735B3134365D2E446973706C61794E616D658704
      000013004974656D735B3134375D2E43617465676F7279FB0100001600497465
      6D735B3134375D2E446973706C61794E616D658804000013004974656D735B31
      34385D2E43617465676F7279FE01000016004974656D735B3134385D2E446973
      706C61794E616D658904000013004974656D735B3134395D2E43617465676F72
      790102000016004974656D735B3134395D2E446973706C61794E616D65020400
      0012004974656D735B31345D2E43617465676F7279AC00000015004974656D73
      5B31345D2E446973706C61794E616D658A04000013004974656D735B3135305D
      2E43617465676F72790402000016004974656D735B3135305D2E446973706C61
      794E616D658B04000013004974656D735B3135315D2E43617465676F72790702
      000016004974656D735B3135315D2E446973706C61794E616D658C0400001300
      4974656D735B3135325D2E43617465676F72790A02000016004974656D735B31
      35325D2E446973706C61794E616D658D04000013004974656D735B3135335D2E
      43617465676F72790D02000016004974656D735B3135335D2E446973706C6179
      4E616D658E04000013004974656D735B3135345D2E43617465676F7279100200
      0016004974656D735B3135345D2E446973706C61794E616D658F040000130049
      74656D735B3135355D2E43617465676F72791302000016004974656D735B3135
      355D2E446973706C61794E616D659004000013004974656D735B3135365D2E43
      617465676F72791602000016004974656D735B3135365D2E446973706C61794E
      616D659104000013004974656D735B3135375D2E43617465676F727919020000
      16004974656D735B3135375D2E446973706C61794E616D659204000013004974
      656D735B3135385D2E43617465676F72791C02000016004974656D735B313538
      5D2E446973706C61794E616D659304000013004974656D735B3135395D2E4361
      7465676F72791F02000016004974656D735B3135395D2E446973706C61794E61
      6D650304000012004974656D735B31355D2E43617465676F7279AE0000001500
      4974656D735B31355D2E446973706C61794E616D659404000013004974656D73
      5B3136305D2E43617465676F72792202000016004974656D735B3136305D2E44
      6973706C61794E616D659504000013004974656D735B3136315D2E4361746567
      6F72792502000016004974656D735B3136315D2E446973706C61794E616D6596
      04000013004974656D735B3136325D2E43617465676F72792802000016004974
      656D735B3136325D2E446973706C61794E616D659704000013004974656D735B
      3136335D2E43617465676F72792B02000016004974656D735B3136335D2E4469
      73706C61794E616D659804000013004974656D735B3136345D2E43617465676F
      72792E02000016004974656D735B3136345D2E446973706C61794E616D659904
      000013004974656D735B3136355D2E43617465676F7279310200001600497465
      6D735B3136355D2E446973706C61794E616D659A04000013004974656D735B31
      36365D2E43617465676F72793402000016004974656D735B3136365D2E446973
      706C61794E616D659B04000013004974656D735B3136375D2E43617465676F72
      793702000016004974656D735B3136375D2E446973706C61794E616D659C0400
      0013004974656D735B3136385D2E43617465676F72793A02000016004974656D
      735B3136385D2E446973706C61794E616D659D04000013004974656D735B3136
      395D2E43617465676F72793D02000016004974656D735B3136395D2E44697370
      6C61794E616D650404000012004974656D735B31365D2E43617465676F7279B0
      00000015004974656D735B31365D2E446973706C61794E616D659E0400001300
      4974656D735B3137305D2E43617465676F72794002000016004974656D735B31
      37305D2E446973706C61794E616D659F04000013004974656D735B3137315D2E
      43617465676F72794302000016004974656D735B3137315D2E446973706C6179
      4E616D65A004000013004974656D735B3137325D2E43617465676F7279460200
      0016004974656D735B3137325D2E446973706C61794E616D65A1040000130049
      74656D735B3137335D2E43617465676F72794902000016004974656D735B3137
      335D2E446973706C61794E616D65A204000013004974656D735B3137345D2E43
      617465676F72794C02000016004974656D735B3137345D2E446973706C61794E
      616D65A304000013004974656D735B3137355D2E43617465676F72794F020000
      16004974656D735B3137355D2E446973706C61794E616D65A404000013004974
      656D735B3137365D2E43617465676F72795202000016004974656D735B313736
      5D2E446973706C61794E616D65A504000013004974656D735B3137375D2E4361
      7465676F72795502000016004974656D735B3137375D2E446973706C61794E61
      6D65A604000013004974656D735B3137385D2E43617465676F72795802000016
      004974656D735B3137385D2E446973706C61794E616D65A70400001300497465
      6D735B3137395D2E43617465676F72795B02000016004974656D735B3137395D
      2E446973706C61794E616D650504000012004974656D735B31375D2E43617465
      676F7279B200000015004974656D735B31375D2E446973706C61794E616D65A8
      04000013004974656D735B3138305D2E43617465676F72795E02000016004974
      656D735B3138305D2E446973706C61794E616D65A904000013004974656D735B
      3138315D2E43617465676F72796102000016004974656D735B3138315D2E4469
      73706C61794E616D65AA04000013004974656D735B3138325D2E43617465676F
      72796402000016004974656D735B3138325D2E446973706C61794E616D65AB04
      000013004974656D735B3138335D2E43617465676F7279670200001600497465
      6D735B3138335D2E446973706C61794E616D65AC04000013004974656D735B31
      38345D2E43617465676F72796A02000016004974656D735B3138345D2E446973
      706C61794E616D65AD04000013004974656D735B3138355D2E43617465676F72
      796D02000016004974656D735B3138355D2E446973706C61794E616D65AE0400
      0013004974656D735B3138365D2E43617465676F72797002000016004974656D
      735B3138365D2E446973706C61794E616D65AF04000013004974656D735B3138
      375D2E43617465676F72797302000016004974656D735B3138375D2E44697370
      6C61794E616D65B004000013004974656D735B3138385D2E43617465676F7279
      7602000016004974656D735B3138385D2E446973706C61794E616D65B1040000
      13004974656D735B3138395D2E43617465676F72797902000016004974656D73
      5B3138395D2E446973706C61794E616D650604000012004974656D735B31385D
      2E43617465676F7279B400000015004974656D735B31385D2E446973706C6179
      4E616D65B204000013004974656D735B3139305D2E43617465676F72797C0200
      0016004974656D735B3139305D2E446973706C61794E616D65B3040000130049
      74656D735B3139315D2E43617465676F72797E02000016004974656D735B3139
      315D2E446973706C61794E616D65B404000013004974656D735B3139325D2E43
      617465676F72798102000016004974656D735B3139325D2E446973706C61794E
      616D65B504000013004974656D735B3139335D2E43617465676F727984020000
      16004974656D735B3139335D2E446973706C61794E616D65B604000013004974
      656D735B3139345D2E43617465676F72798702000016004974656D735B313934
      5D2E446973706C61794E616D65B704000013004974656D735B3139355D2E4361
      7465676F72798A02000016004974656D735B3139355D2E446973706C61794E61
      6D65B804000013004974656D735B3139365D2E43617465676F72798D02000016
      004974656D735B3139365D2E446973706C61794E616D65B90400001300497465
      6D735B3139375D2E43617465676F72799002000016004974656D735B3139375D
      2E446973706C61794E616D65BA04000013004974656D735B3139385D2E436174
      65676F72799302000016004974656D735B3139385D2E446973706C61794E616D
      65BB04000013004974656D735B3139395D2E43617465676F7279960200001600
      4974656D735B3139395D2E446973706C61794E616D650704000012004974656D
      735B31395D2E43617465676F7279B600000015004974656D735B31395D2E4469
      73706C61794E616D65F503000011004974656D735B315D2E43617465676F7279
      8B00000014004974656D735B315D2E446973706C61794E616D65BC0400001300
      4974656D735B3230305D2E43617465676F72799802000016004974656D735B32
      30305D2E446973706C61794E616D65BD04000013004974656D735B3230315D2E
      43617465676F72799A02000016004974656D735B3230315D2E446973706C6179
      4E616D65BE04000013004974656D735B3230325D2E43617465676F72799C0200
      0016004974656D735B3230325D2E446973706C61794E616D65BF040000130049
      74656D735B3230335D2E43617465676F72799E02000016004974656D735B3230
      335D2E446973706C61794E616D65C004000013004974656D735B3230345D2E43
      617465676F7279A002000016004974656D735B3230345D2E446973706C61794E
      616D65C104000013004974656D735B3230355D2E43617465676F7279A2020000
      16004974656D735B3230355D2E446973706C61794E616D65C204000013004974
      656D735B3230365D2E43617465676F7279A402000016004974656D735B323036
      5D2E446973706C61794E616D65C304000013004974656D735B3230375D2E4361
      7465676F7279A602000016004974656D735B3230375D2E446973706C61794E61
      6D65C404000013004974656D735B3230385D2E43617465676F7279A802000016
      004974656D735B3230385D2E446973706C61794E616D65CB0400001300497465
      6D735B3230395D2E43617465676F7279CC04000016004974656D735B3230395D
      2E446973706C61794E616D650804000012004974656D735B32305D2E43617465
      676F7279B800000015004974656D735B32305D2E446973706C61794E616D65CD
      04000013004974656D735B3231305D2E43617465676F7279CE04000016004974
      656D735B3231305D2E446973706C61794E616D65CF04000013004974656D735B
      3231315D2E43617465676F7279D004000016004974656D735B3231315D2E4469
      73706C61794E616D65D104000013004974656D735B3231325D2E43617465676F
      7279D204000016004974656D735B3231325D2E446973706C61794E616D65DC04
      000013004974656D735B3231335D2E43617465676F7279DD0400001600497465
      6D735B3231335D2E446973706C61794E616D65EE04000013004974656D735B32
      31345D2E43617465676F7279EF04000016004974656D735B3231345D2E446973
      706C61794E616D65F004000013004974656D735B3231355D2E43617465676F72
      79F104000016004974656D735B3231355D2E446973706C61794E616D65F20400
      0013004974656D735B3231365D2E43617465676F7279F304000016004974656D
      735B3231365D2E446973706C61794E616D65F404000013004974656D735B3231
      375D2E43617465676F7279F504000016004974656D735B3231375D2E44697370
      6C61794E616D650605000013004974656D735B3231385D2E43617465676F7279
      0705000016004974656D735B3231385D2E446973706C61794E616D652B050000
      13004974656D735B3231395D2E43617465676F72792C05000016004974656D73
      5B3231395D2E446973706C61794E616D650904000012004974656D735B32315D
      2E43617465676F7279BA00000015004974656D735B32315D2E446973706C6179
      4E616D653605000013004974656D735B3232305D2E43617465676F7279370500
      0016004974656D735B3232305D2E446973706C61794E616D6538050000130049
      74656D735B3232315D2E43617465676F72793905000016004974656D735B3232
      315D2E446973706C61794E616D653A05000013004974656D735B3232325D2E43
      617465676F72793B05000016004974656D735B3232325D2E446973706C61794E
      616D654A05000013004974656D735B3232335D2E43617465676F72794B050000
      16004974656D735B3232335D2E446973706C61794E616D655105000013004974
      656D735B3232345D2E43617465676F72795205000016004974656D735B323234
      5D2E446973706C61794E616D656D05000013004974656D735B3232355D2E4361
      7465676F72796E05000016004974656D735B3232355D2E446973706C61794E61
      6D656F05000013004974656D735B3232365D2E43617465676F72797005000016
      004974656D735B3232365D2E446973706C61794E616D65710500001300497465
      6D735B3232375D2E43617465676F72797205000016004974656D735B3232375D
      2E446973706C61794E616D657305000013004974656D735B3232385D2E436174
      65676F72797405000016004974656D735B3232385D2E446973706C61794E616D
      657505000013004974656D735B3232395D2E43617465676F7279760500001600
      4974656D735B3232395D2E446973706C61794E616D650A04000012004974656D
      735B32325D2E43617465676F7279BC00000015004974656D735B32325D2E4469
      73706C61794E616D657705000013004974656D735B3233305D2E43617465676F
      72797805000016004974656D735B3233305D2E446973706C61794E616D657905
      000013004974656D735B3233315D2E43617465676F72797A0500001600497465
      6D735B3233315D2E446973706C61794E616D657B05000013004974656D735B32
      33325D2E43617465676F72797C05000016004974656D735B3233325D2E446973
      706C61794E616D657D05000013004974656D735B3233335D2E43617465676F72
      797E05000016004974656D735B3233335D2E446973706C61794E616D657F0500
      0013004974656D735B3233345D2E43617465676F72798005000016004974656D
      735B3233345D2E446973706C61794E616D658105000013004974656D735B3233
      355D2E43617465676F72798205000016004974656D735B3233355D2E44697370
      6C61794E616D658305000013004974656D735B3233365D2E43617465676F7279
      8405000016004974656D735B3233365D2E446973706C61794E616D65A7050000
      13004974656D735B3233375D2E43617465676F7279A805000016004974656D73
      5B3233375D2E446973706C61794E616D65B205000013004974656D735B323338
      5D2E43617465676F7279B305000016004974656D735B3233385D2E446973706C
      61794E616D65B405000013004974656D735B3233395D2E43617465676F7279B5
      05000016004974656D735B3233395D2E446973706C61794E616D650B04000012
      004974656D735B32335D2E43617465676F7279BE00000015004974656D735B32
      335D2E446973706C61794E616D65B705000013004974656D735B3234305D2E43
      617465676F7279B805000016004974656D735B3234305D2E446973706C61794E
      616D65C205000013004974656D735B3234315D2E43617465676F7279C3050000
      16004974656D735B3234315D2E446973706C61794E616D65D005000013004974
      656D735B3234325D2E43617465676F7279D105000016004974656D735B323432
      5D2E446973706C61794E616D65D505000013004974656D735B3234335D2E4361
      7465676F7279D605000016004974656D735B3234335D2E446973706C61794E61
      6D65D805000013004974656D735B3234345D2E43617465676F7279D905000016
      004974656D735B3234345D2E446973706C61794E616D65F50500001300497465
      6D735B3234355D2E43617465676F7279F605000016004974656D735B3234355D
      2E446973706C61794E616D651406000013004974656D735B3234365D2E436174
      65676F72791506000016004974656D735B3234365D2E446973706C61794E616D
      651606000013004974656D735B3234375D2E43617465676F7279170600001600
      4974656D735B3234375D2E446973706C61794E616D652A06000013004974656D
      735B3234385D2E43617465676F72792B06000016004974656D735B3234385D2E
      446973706C61794E616D652F06000013004974656D735B3234395D2E43617465
      676F72793006000016004974656D735B3234395D2E446973706C61794E616D65
      0C04000012004974656D735B32345D2E43617465676F7279C000000015004974
      656D735B32345D2E446973706C61794E616D653106000013004974656D735B32
      35305D2E43617465676F72793206000016004974656D735B3235305D2E446973
      706C61794E616D653706000013004974656D735B3235315D2E43617465676F72
      793806000016004974656D735B3235315D2E446973706C61794E616D65390600
      0013004974656D735B3235325D2E43617465676F72793A06000016004974656D
      735B3235325D2E446973706C61794E616D653D06000013004974656D735B3235
      335D2E43617465676F72793E06000016004974656D735B3235335D2E44697370
      6C61794E616D653F06000013004974656D735B3235345D2E43617465676F7279
      4006000016004974656D735B3235345D2E446973706C61794E616D6542060000
      13004974656D735B3235355D2E43617465676F72794306000016004974656D73
      5B3235355D2E446973706C61794E616D654E06000013004974656D735B323536
      5D2E43617465676F72794F06000016004974656D735B3235365D2E446973706C
      61794E616D655406000013004974656D735B3235375D2E43617465676F727955
      06000016004974656D735B3235375D2E446973706C61794E616D655606000013
      004974656D735B3235385D2E43617465676F72795706000016004974656D735B
      3235385D2E446973706C61794E616D655D06000013004974656D735B3235395D
      2E43617465676F72795E06000016004974656D735B3235395D2E446973706C61
      794E616D650D04000012004974656D735B32355D2E43617465676F7279C20000
      0015004974656D735B32355D2E446973706C61794E616D656006000013004974
      656D735B3236305D2E43617465676F72796106000016004974656D735B323630
      5D2E446973706C61794E616D656406000013004974656D735B3236315D2E4361
      7465676F72796506000016004974656D735B3236315D2E446973706C61794E61
      6D657006000013004974656D735B3236325D2E43617465676F72797106000016
      004974656D735B3236325D2E446973706C61794E616D65730600001300497465
      6D735B3236335D2E43617465676F72797406000016004974656D735B3236335D
      2E446973706C61794E616D657506000013004974656D735B3236345D2E436174
      65676F72797606000016004974656D735B3236345D2E446973706C61794E616D
      657E06000013004974656D735B3236355D2E43617465676F72797F0600001600
      4974656D735B3236355D2E446973706C61794E616D658706000013004974656D
      735B3236365D2E43617465676F72798806000016004974656D735B3236365D2E
      446973706C61794E616D658906000013004974656D735B3236375D2E43617465
      676F72798A06000016004974656D735B3236375D2E446973706C61794E616D65
      8B06000013004974656D735B3236385D2E43617465676F72798C060000160049
      74656D735B3236385D2E446973706C61794E616D658D06000013004974656D73
      5B3236395D2E43617465676F72798E06000016004974656D735B3236395D2E44
      6973706C61794E616D650E04000012004974656D735B32365D2E43617465676F
      7279C500000015004974656D735B32365D2E446973706C61794E616D659F0600
      0013004974656D735B3237305D2E43617465676F7279A006000016004974656D
      735B3237305D2E446973706C61794E616D65A106000013004974656D735B3237
      315D2E43617465676F7279A206000016004974656D735B3237315D2E44697370
      6C61794E616D65A306000013004974656D735B3237325D2E43617465676F7279
      A406000016004974656D735B3237325D2E446973706C61794E616D65A5060000
      13004974656D735B3237335D2E43617465676F7279A606000016004974656D73
      5B3237335D2E446973706C61794E616D65B206000013004974656D735B323734
      5D2E43617465676F7279B306000016004974656D735B3237345D2E446973706C
      61794E616D65B406000013004974656D735B3237355D2E43617465676F7279B5
      06000016004974656D735B3237355D2E446973706C61794E616D65B806000013
      004974656D735B3237365D2E43617465676F7279B906000016004974656D735B
      3237365D2E446973706C61794E616D65BA06000013004974656D735B3237375D
      2E43617465676F7279BB06000016004974656D735B3237375D2E446973706C61
      794E616D65D006000013004974656D735B3237385D2E43617465676F7279D106
      000016004974656D735B3237385D2E446973706C61794E616D65DA0600001300
      4974656D735B3237395D2E43617465676F7279DB06000016004974656D735B32
      37395D2E446973706C61794E616D650F04000012004974656D735B32375D2E43
      617465676F7279C800000015004974656D735B32375D2E446973706C61794E61
      6D65DC06000013004974656D735B3238305D2E43617465676F7279DD06000016
      004974656D735B3238305D2E446973706C61794E616D65DE0600001300497465
      6D735B3238315D2E43617465676F7279DF06000016004974656D735B3238315D
      2E446973706C61794E616D65E006000013004974656D735B3238325D2E436174
      65676F7279E106000016004974656D735B3238325D2E446973706C61794E616D
      65E206000013004974656D735B3238335D2E43617465676F7279E30600001600
      4974656D735B3238335D2E446973706C61794E616D65E406000013004974656D
      735B3238345D2E43617465676F7279E506000016004974656D735B3238345D2E
      446973706C61794E616D65E606000013004974656D735B3238355D2E43617465
      676F7279E706000016004974656D735B3238355D2E446973706C61794E616D65
      E806000013004974656D735B3238365D2E43617465676F7279E9060000160049
      74656D735B3238365D2E446973706C61794E616D65EA06000013004974656D73
      5B3238375D2E43617465676F7279EB06000016004974656D735B3238375D2E44
      6973706C61794E616D65EC06000013004974656D735B3238385D2E4361746567
      6F7279ED06000016004974656D735B3238385D2E446973706C61794E616D65F4
      06000013004974656D735B3238395D2E43617465676F7279F506000016004974
      656D735B3238395D2E446973706C61794E616D651004000012004974656D735B
      32385D2E43617465676F7279CB00000015004974656D735B32385D2E44697370
      6C61794E616D65F606000013004974656D735B3239305D2E43617465676F7279
      F706000016004974656D735B3239305D2E446973706C61794E616D65F8060000
      13004974656D735B3239315D2E43617465676F7279F906000016004974656D73
      5B3239315D2E446973706C61794E616D65FD06000013004974656D735B323932
      5D2E43617465676F7279FE06000016004974656D735B3239325D2E446973706C
      61794E616D65FF06000013004974656D735B3239335D2E43617465676F727900
      07000016004974656D735B3239335D2E446973706C61794E616D650107000013
      004974656D735B3239345D2E43617465676F72790207000016004974656D735B
      3239345D2E446973706C61794E616D650307000013004974656D735B3239355D
      2E43617465676F72790407000016004974656D735B3239355D2E446973706C61
      794E616D650507000013004974656D735B3239365D2E43617465676F72790607
      000016004974656D735B3239365D2E446973706C61794E616D65150700001300
      4974656D735B3239375D2E43617465676F72791607000016004974656D735B32
      39375D2E446973706C61794E616D651B07000013004974656D735B3239385D2E
      43617465676F72791C07000016004974656D735B3239385D2E446973706C6179
      4E616D651F07000013004974656D735B3239395D2E43617465676F7279200700
      0016004974656D735B3239395D2E446973706C61794E616D6511040000120049
      74656D735B32395D2E43617465676F7279CE00000015004974656D735B32395D
      2E446973706C61794E616D65F603000011004974656D735B325D2E4361746567
      6F72798E00000014004974656D735B325D2E446973706C61794E616D65210700
      0013004974656D735B3330305D2E43617465676F72792207000016004974656D
      735B3330305D2E446973706C61794E616D652A07000013004974656D735B3330
      315D2E43617465676F72792B07000016004974656D735B3330315D2E44697370
      6C61794E616D652C07000013004974656D735B3330325D2E43617465676F7279
      2D07000016004974656D735B3330325D2E446973706C61794E616D6533070000
      13004974656D735B3330335D2E43617465676F72793407000016004974656D73
      5B3330335D2E446973706C61794E616D653507000013004974656D735B333034
      5D2E43617465676F72793607000016004974656D735B3330345D2E446973706C
      61794E616D653B07000013004974656D735B3330355D2E43617465676F72793C
      07000016004974656D735B3330355D2E446973706C61794E616D653D07000013
      004974656D735B3330365D2E43617465676F72793E07000016004974656D735B
      3330365D2E446973706C61794E616D653F07000013004974656D735B3330375D
      2E43617465676F72794007000016004974656D735B3330375D2E446973706C61
      794E616D654107000013004974656D735B3330385D2E43617465676F72794207
      000016004974656D735B3330385D2E446973706C61794E616D65430700001300
      4974656D735B3330395D2E43617465676F72794407000016004974656D735B33
      30395D2E446973706C61794E616D651204000012004974656D735B33305D2E43
      617465676F7279D100000015004974656D735B33305D2E446973706C61794E61
      6D654507000013004974656D735B3331305D2E43617465676F72794607000016
      004974656D735B3331305D2E446973706C61794E616D65470700001300497465
      6D735B3331315D2E43617465676F72794807000016004974656D735B3331315D
      2E446973706C61794E616D654907000013004974656D735B3331325D2E436174
      65676F72794A07000016004974656D735B3331325D2E446973706C61794E616D
      654B07000013004974656D735B3331335D2E43617465676F72794C0700001600
      4974656D735B3331335D2E446973706C61794E616D654D07000013004974656D
      735B3331345D2E43617465676F72794E07000016004974656D735B3331345D2E
      446973706C61794E616D656007000013004974656D735B3331355D2E43617465
      676F72796107000016004974656D735B3331355D2E446973706C61794E616D65
      6207000013004974656D735B3331365D2E43617465676F727963070000160049
      74656D735B3331365D2E446973706C61794E616D656D07000013004974656D73
      5B3331375D2E43617465676F72796E07000016004974656D735B3331375D2E44
      6973706C61794E616D656F07000013004974656D735B3331385D2E4361746567
      6F72797007000016004974656D735B3331385D2E446973706C61794E616D6571
      07000013004974656D735B3331395D2E43617465676F72797207000016004974
      656D735B3331395D2E446973706C61794E616D651304000012004974656D735B
      33315D2E43617465676F7279D400000015004974656D735B33315D2E44697370
      6C61794E616D657307000013004974656D735B3332305D2E43617465676F7279
      7407000016004974656D735B3332305D2E446973706C61794E616D6576070000
      13004974656D735B3332315D2E43617465676F72797707000016004974656D73
      5B3332315D2E446973706C61794E616D657A07000013004974656D735B333232
      5D2E43617465676F72797B07000016004974656D735B3332325D2E446973706C
      61794E616D657C07000013004974656D735B3332335D2E43617465676F72797D
      07000016004974656D735B3332335D2E446973706C61794E616D658207000013
      004974656D735B3332345D2E43617465676F72798307000016004974656D735B
      3332345D2E446973706C61794E616D658407000013004974656D735B3332355D
      2E43617465676F72798507000016004974656D735B3332355D2E446973706C61
      794E616D658807000013004974656D735B3332365D2E43617465676F72798907
      000016004974656D735B3332365D2E446973706C61794E616D658A0700001300
      4974656D735B3332375D2E43617465676F72798B07000016004974656D735B33
      32375D2E446973706C61794E616D658C07000013004974656D735B3332385D2E
      43617465676F72798D07000016004974656D735B3332385D2E446973706C6179
      4E616D658E07000013004974656D735B3332395D2E43617465676F72798F0700
      0016004974656D735B3332395D2E446973706C61794E616D6514040000120049
      74656D735B33325D2E43617465676F7279D700000015004974656D735B33325D
      2E446973706C61794E616D659007000013004974656D735B3333305D2E436174
      65676F72799107000016004974656D735B3333305D2E446973706C61794E616D
      659207000013004974656D735B3333315D2E43617465676F7279930700001600
      4974656D735B3333315D2E446973706C61794E616D659407000013004974656D
      735B3333325D2E43617465676F72799507000016004974656D735B3333325D2E
      446973706C61794E616D659E07000013004974656D735B3333335D2E43617465
      676F72799F07000016004974656D735B3333335D2E446973706C61794E616D65
      A007000013004974656D735B3333345D2E43617465676F7279A1070000160049
      74656D735B3333345D2E446973706C61794E616D65AB07000013004974656D73
      5B3333355D2E43617465676F7279AC07000016004974656D735B3333355D2E44
      6973706C61794E616D65B107000013004974656D735B3333365D2E4361746567
      6F7279B207000016004974656D735B3333365D2E446973706C61794E616D65B4
      07000013004974656D735B3333375D2E43617465676F7279B507000016004974
      656D735B3333375D2E446973706C61794E616D65B607000013004974656D735B
      3333385D2E43617465676F7279B707000016004974656D735B3333385D2E4469
      73706C61794E616D65BA07000013004974656D735B3333395D2E43617465676F
      7279BB07000016004974656D735B3333395D2E446973706C61794E616D651504
      000012004974656D735B33335D2E43617465676F7279D900000015004974656D
      735B33335D2E446973706C61794E616D65BC07000013004974656D735B333430
      5D2E43617465676F7279BD07000016004974656D735B3334305D2E446973706C
      61794E616D65BE07000013004974656D735B3334315D2E43617465676F7279BF
      07000016004974656D735B3334315D2E446973706C61794E616D65C007000013
      004974656D735B3334325D2E43617465676F7279C107000016004974656D735B
      3334325D2E446973706C61794E616D65C207000013004974656D735B3334335D
      2E43617465676F7279C307000016004974656D735B3334335D2E446973706C61
      794E616D65C407000013004974656D735B3334345D2E43617465676F7279C507
      000016004974656D735B3334345D2E446973706C61794E616D65C60700001300
      4974656D735B3334355D2E43617465676F7279C707000016004974656D735B33
      34355D2E446973706C61794E616D65C807000013004974656D735B3334365D2E
      43617465676F7279C907000016004974656D735B3334365D2E446973706C6179
      4E616D65CA07000013004974656D735B3334375D2E43617465676F7279CB0700
      0016004974656D735B3334375D2E446973706C61794E616D65CC070000130049
      74656D735B3334385D2E43617465676F7279CD07000016004974656D735B3334
      385D2E446973706C61794E616D65CE07000013004974656D735B3334395D2E43
      617465676F7279CF07000016004974656D735B3334395D2E446973706C61794E
      616D651604000012004974656D735B33345D2E43617465676F7279DC00000015
      004974656D735B33345D2E446973706C61794E616D65D007000013004974656D
      735B3335305D2E43617465676F7279D107000016004974656D735B3335305D2E
      446973706C61794E616D65D207000013004974656D735B3335315D2E43617465
      676F7279D307000016004974656D735B3335315D2E446973706C61794E616D65
      D407000013004974656D735B3335325D2E43617465676F7279D5070000160049
      74656D735B3335325D2E446973706C61794E616D65D607000013004974656D73
      5B3335335D2E43617465676F7279D707000016004974656D735B3335335D2E44
      6973706C61794E616D65D807000013004974656D735B3335345D2E4361746567
      6F7279D907000016004974656D735B3335345D2E446973706C61794E616D65DA
      07000013004974656D735B3335355D2E43617465676F7279DB07000016004974
      656D735B3335355D2E446973706C61794E616D65DC07000013004974656D735B
      3335365D2E43617465676F7279DD07000016004974656D735B3335365D2E4469
      73706C61794E616D65DE07000013004974656D735B3335375D2E43617465676F
      7279DF07000016004974656D735B3335375D2E446973706C61794E616D65E007
      000013004974656D735B3335385D2E43617465676F7279E10700001600497465
      6D735B3335385D2E446973706C61794E616D65EB07000013004974656D735B33
      35395D2E43617465676F7279EC07000016004974656D735B3335395D2E446973
      706C61794E616D651704000012004974656D735B33355D2E43617465676F7279
      DF00000015004974656D735B33355D2E446973706C61794E616D65ED07000013
      004974656D735B3336305D2E43617465676F7279EE07000016004974656D735B
      3336305D2E446973706C61794E616D65EF07000013004974656D735B3336315D
      2E43617465676F7279F007000016004974656D735B3336315D2E446973706C61
      794E616D65F107000013004974656D735B3336325D2E43617465676F7279F207
      000016004974656D735B3336325D2E446973706C61794E616D65F30700001300
      4974656D735B3336335D2E43617465676F7279F407000016004974656D735B33
      36335D2E446973706C61794E616D65F507000013004974656D735B3336345D2E
      43617465676F7279F607000016004974656D735B3336345D2E446973706C6179
      4E616D65F707000013004974656D735B3336355D2E43617465676F7279F80700
      0016004974656D735B3336355D2E446973706C61794E616D65F9070000130049
      74656D735B3336365D2E43617465676F7279FA07000016004974656D735B3336
      365D2E446973706C61794E616D65FB07000013004974656D735B3336375D2E43
      617465676F7279FC07000016004974656D735B3336375D2E446973706C61794E
      616D65FD07000013004974656D735B3336385D2E43617465676F7279FE070000
      16004974656D735B3336385D2E446973706C61794E616D65FF07000013004974
      656D735B3336395D2E43617465676F72790008000016004974656D735B333639
      5D2E446973706C61794E616D651804000012004974656D735B33365D2E436174
      65676F7279E200000015004974656D735B33365D2E446973706C61794E616D65
      0108000013004974656D735B3337305D2E43617465676F727902080000160049
      74656D735B3337305D2E446973706C61794E616D650308000013004974656D73
      5B3337315D2E43617465676F72790408000016004974656D735B3337315D2E44
      6973706C61794E616D650508000013004974656D735B3337325D2E4361746567
      6F72790608000016004974656D735B3337325D2E446973706C61794E616D6507
      08000013004974656D735B3337335D2E43617465676F72790808000016004974
      656D735B3337335D2E446973706C61794E616D650908000013004974656D735B
      3337345D2E43617465676F72790A08000016004974656D735B3337345D2E4469
      73706C61794E616D650B08000013004974656D735B3337355D2E43617465676F
      72790C08000016004974656D735B3337355D2E446973706C61794E616D650D08
      000013004974656D735B3337365D2E43617465676F72790E0800001600497465
      6D735B3337365D2E446973706C61794E616D650F08000013004974656D735B33
      37375D2E43617465676F72791008000016004974656D735B3337375D2E446973
      706C61794E616D651108000013004974656D735B3337385D2E43617465676F72
      791208000016004974656D735B3337385D2E446973706C61794E616D65130800
      0013004974656D735B3337395D2E43617465676F72791408000016004974656D
      735B3337395D2E446973706C61794E616D651904000012004974656D735B3337
      5D2E43617465676F7279E500000015004974656D735B33375D2E446973706C61
      794E616D651D08000013004974656D735B3338305D2E43617465676F72791E08
      000016004974656D735B3338305D2E446973706C61794E616D651F0800001300
      4974656D735B3338315D2E43617465676F72792008000016004974656D735B33
      38315D2E446973706C61794E616D652108000013004974656D735B3338325D2E
      43617465676F72792208000016004974656D735B3338325D2E446973706C6179
      4E616D652308000013004974656D735B3338335D2E43617465676F7279240800
      0016004974656D735B3338335D2E446973706C61794E616D6526080000130049
      74656D735B3338345D2E43617465676F72792708000016004974656D735B3338
      345D2E446973706C61794E616D652808000013004974656D735B3338355D2E43
      617465676F72792908000016004974656D735B3338355D2E446973706C61794E
      616D652A08000013004974656D735B3338365D2E43617465676F72792B080000
      16004974656D735B3338365D2E446973706C61794E616D652C08000013004974
      656D735B3338375D2E43617465676F72792D08000016004974656D735B333837
      5D2E446973706C61794E616D653208000013004974656D735B3338385D2E4361
      7465676F72793308000016004974656D735B3338385D2E446973706C61794E61
      6D653608000013004974656D735B3338395D2E43617465676F72793708000016
      004974656D735B3338395D2E446973706C61794E616D651A0400001200497465
      6D735B33385D2E43617465676F7279E800000015004974656D735B33385D2E44
      6973706C61794E616D653B08000013004974656D735B3339305D2E4361746567
      6F72793C08000016004974656D735B3339305D2E446973706C61794E616D6540
      08000013004974656D735B3339315D2E43617465676F72794108000016004974
      656D735B3339315D2E446973706C61794E616D654208000013004974656D735B
      3339325D2E43617465676F72794308000016004974656D735B3339325D2E4469
      73706C61794E616D654608000013004974656D735B3339335D2E43617465676F
      72794708000016004974656D735B3339335D2E446973706C61794E616D654908
      000013004974656D735B3339345D2E43617465676F72794A0800001600497465
      6D735B3339345D2E446973706C61794E616D654D08000013004974656D735B33
      39355D2E43617465676F72794E08000016004974656D735B3339355D2E446973
      706C61794E616D655308000013004974656D735B3339365D2E43617465676F72
      795408000016004974656D735B3339365D2E446973706C61794E616D65560800
      0013004974656D735B3339375D2E43617465676F72795708000016004974656D
      735B3339375D2E446973706C61794E616D655808000013004974656D735B3339
      385D2E43617465676F72795908000016004974656D735B3339385D2E44697370
      6C61794E616D655A08000013004974656D735B3339395D2E43617465676F7279
      5B08000016004974656D735B3339395D2E446973706C61794E616D651B040000
      12004974656D735B33395D2E43617465676F7279EB00000015004974656D735B
      33395D2E446973706C61794E616D65F703000011004974656D735B335D2E4361
      7465676F72799100000014004974656D735B335D2E446973706C61794E616D65
      5C08000013004974656D735B3430305D2E43617465676F72795D080000160049
      74656D735B3430305D2E446973706C61794E616D656208000013004974656D73
      5B3430315D2E43617465676F72796308000016004974656D735B3430315D2E44
      6973706C61794E616D656608000013004974656D735B3430325D2E4361746567
      6F72796708000016004974656D735B3430325D2E446973706C61794E616D6568
      08000013004974656D735B3430335D2E43617465676F72796908000016004974
      656D735B3430335D2E446973706C61794E616D656A08000013004974656D735B
      3430345D2E43617465676F72796B08000016004974656D735B3430345D2E4469
      73706C61794E616D656E08000013004974656D735B3430355D2E43617465676F
      72796F08000016004974656D735B3430355D2E446973706C61794E616D657808
      000013004974656D735B3430365D2E43617465676F7279790800001600497465
      6D735B3430365D2E446973706C61794E616D657A08000013004974656D735B34
      30375D2E43617465676F72797B08000016004974656D735B3430375D2E446973
      706C61794E616D658208000013004974656D735B3430385D2E43617465676F72
      798308000016004974656D735B3430385D2E446973706C61794E616D65910800
      0013004974656D735B3430395D2E43617465676F72799208000016004974656D
      735B3430395D2E446973706C61794E616D651C04000012004974656D735B3430
      5D2E43617465676F7279EE00000015004974656D735B34305D2E446973706C61
      794E616D659808000013004974656D735B3431305D2E43617465676F72799908
      000016004974656D735B3431305D2E446973706C61794E616D659A0800001300
      4974656D735B3431315D2E43617465676F72799B08000016004974656D735B34
      31315D2E446973706C61794E616D659C08000013004974656D735B3431325D2E
      43617465676F72799D08000016004974656D735B3431325D2E446973706C6179
      4E616D65A208000013004974656D735B3431335D2E43617465676F7279A30800
      0016004974656D735B3431335D2E446973706C61794E616D65A6080000130049
      74656D735B3431345D2E43617465676F7279A708000016004974656D735B3431
      345D2E446973706C61794E616D65AA08000013004974656D735B3431355D2E43
      617465676F7279AB08000016004974656D735B3431355D2E446973706C61794E
      616D65AC08000013004974656D735B3431365D2E43617465676F7279AD080000
      16004974656D735B3431365D2E446973706C61794E616D65AE08000013004974
      656D735B3431375D2E43617465676F7279AF08000016004974656D735B343137
      5D2E446973706C61794E616D65B508000013004974656D735B3431385D2E4361
      7465676F7279B608000016004974656D735B3431385D2E446973706C61794E61
      6D65C808000013004974656D735B3431395D2E43617465676F7279C908000016
      004974656D735B3431395D2E446973706C61794E616D651D0400001200497465
      6D735B34315D2E43617465676F7279F100000015004974656D735B34315D2E44
      6973706C61794E616D65CA08000013004974656D735B3432305D2E4361746567
      6F7279CB08000016004974656D735B3432305D2E446973706C61794E616D65CC
      08000013004974656D735B3432315D2E43617465676F7279CD08000016004974
      656D735B3432315D2E446973706C61794E616D65CE08000013004974656D735B
      3432325D2E43617465676F7279CF08000016004974656D735B3432325D2E4469
      73706C61794E616D65D708000013004974656D735B3432335D2E43617465676F
      7279D808000016004974656D735B3432335D2E446973706C61794E616D65E008
      000013004974656D735B3432345D2E43617465676F7279E10800001600497465
      6D735B3432345D2E446973706C61794E616D65E408000013004974656D735B34
      32355D2E43617465676F7279E508000016004974656D735B3432355D2E446973
      706C61794E616D65EA08000013004974656D735B3432365D2E43617465676F72
      79EB08000016004974656D735B3432365D2E446973706C61794E616D65EF0800
      0013004974656D735B3432375D2E43617465676F7279F008000016004974656D
      735B3432375D2E446973706C61794E616D65F808000013004974656D735B3432
      385D2E43617465676F7279F908000016004974656D735B3432385D2E44697370
      6C61794E616D65FA08000013004974656D735B3432395D2E43617465676F7279
      FB08000016004974656D735B3432395D2E446973706C61794E616D651E040000
      12004974656D735B34325D2E43617465676F7279F400000015004974656D735B
      34325D2E446973706C61794E616D650109000013004974656D735B3433305D2E
      43617465676F72790209000016004974656D735B3433305D2E446973706C6179
      4E616D650309000013004974656D735B3433315D2E43617465676F7279040900
      0016004974656D735B3433315D2E446973706C61794E616D6507090000130049
      74656D735B3433325D2E43617465676F72790809000016004974656D735B3433
      325D2E446973706C61794E616D650E09000013004974656D735B3433335D2E43
      617465676F72790F09000016004974656D735B3433335D2E446973706C61794E
      616D651109000013004974656D735B3433345D2E43617465676F727912090000
      16004974656D735B3433345D2E446973706C61794E616D651509000013004974
      656D735B3433355D2E43617465676F72791609000016004974656D735B343335
      5D2E446973706C61794E616D652309000013004974656D735B3433365D2E4361
      7465676F72792409000016004974656D735B3433365D2E446973706C61794E61
      6D652509000013004974656D735B3433375D2E43617465676F72792609000016
      004974656D735B3433375D2E446973706C61794E616D65270900001300497465
      6D735B3433385D2E43617465676F72792809000016004974656D735B3433385D
      2E446973706C61794E616D652909000013004974656D735B3433395D2E436174
      65676F72792A09000016004974656D735B3433395D2E446973706C61794E616D
      651F04000012004974656D735B34335D2E43617465676F7279F6000000150049
      74656D735B34335D2E446973706C61794E616D652B09000013004974656D735B
      3434305D2E43617465676F72792C09000016004974656D735B3434305D2E4469
      73706C61794E616D652D09000013004974656D735B3434315D2E43617465676F
      72792E09000016004974656D735B3434315D2E446973706C61794E616D652F09
      000013004974656D735B3434325D2E43617465676F7279300900001600497465
      6D735B3434325D2E446973706C61794E616D653109000013004974656D735B34
      34335D2E43617465676F72793209000016004974656D735B3434335D2E446973
      706C61794E616D653309000013004974656D735B3434345D2E43617465676F72
      793409000016004974656D735B3434345D2E446973706C61794E616D65350900
      0013004974656D735B3434355D2E43617465676F72793609000016004974656D
      735B3434355D2E446973706C61794E616D653709000013004974656D735B3434
      365D2E43617465676F72793809000016004974656D735B3434365D2E44697370
      6C61794E616D653909000013004974656D735B3434375D2E43617465676F7279
      3A09000016004974656D735B3434375D2E446973706C61794E616D653B090000
      13004974656D735B3434385D2E43617465676F72793C09000016004974656D73
      5B3434385D2E446973706C61794E616D653D09000013004974656D735B343439
      5D2E43617465676F72793E09000016004974656D735B3434395D2E446973706C
      61794E616D652004000012004974656D735B34345D2E43617465676F7279F800
      000015004974656D735B34345D2E446973706C61794E616D6546090000130049
      74656D735B3435305D2E43617465676F72794709000016004974656D735B3435
      305D2E446973706C61794E616D654A09000013004974656D735B3435315D2E43
      617465676F72794B09000016004974656D735B3435315D2E446973706C61794E
      616D654F09000013004974656D735B3435325D2E43617465676F727950090000
      16004974656D735B3435325D2E446973706C61794E616D655109000013004974
      656D735B3435335D2E43617465676F72795209000016004974656D735B343533
      5D2E446973706C61794E616D655309000013004974656D735B3435345D2E4361
      7465676F72795409000016004974656D735B3435345D2E446973706C61794E61
      6D655709000013004974656D735B3435355D2E43617465676F72795809000016
      004974656D735B3435355D2E446973706C61794E616D65640900001300497465
      6D735B3435365D2E43617465676F72796509000016004974656D735B3435365D
      2E446973706C61794E616D656709000013004974656D735B3435375D2E436174
      65676F72796809000016004974656D735B3435375D2E446973706C61794E616D
      656909000013004974656D735B3435385D2E43617465676F72796A0900001600
      4974656D735B3435385D2E446973706C61794E616D656B09000013004974656D
      735B3435395D2E43617465676F72796C09000016004974656D735B3435395D2E
      446973706C61794E616D652104000012004974656D735B34355D2E4361746567
      6F7279FA00000015004974656D735B34355D2E446973706C61794E616D657709
      000013004974656D735B3436305D2E43617465676F7279780900001600497465
      6D735B3436305D2E446973706C61794E616D657909000013004974656D735B34
      36315D2E43617465676F72797A09000016004974656D735B3436315D2E446973
      706C61794E616D657B09000013004974656D735B3436325D2E43617465676F72
      797C09000016004974656D735B3436325D2E446973706C61794E616D657D0900
      0013004974656D735B3436335D2E43617465676F72797E09000016004974656D
      735B3436335D2E446973706C61794E616D657F09000013004974656D735B3436
      345D2E43617465676F72798009000016004974656D735B3436345D2E44697370
      6C61794E616D658109000013004974656D735B3436355D2E43617465676F7279
      8209000016004974656D735B3436355D2E446973706C61794E616D6583090000
      13004974656D735B3436365D2E43617465676F72798409000016004974656D73
      5B3436365D2E446973706C61794E616D658509000013004974656D735B343637
      5D2E43617465676F72798609000016004974656D735B3436375D2E446973706C
      61794E616D659409000013004974656D735B3436385D2E43617465676F727995
      09000016004974656D735B3436385D2E446973706C61794E616D659609000013
      004974656D735B3436395D2E43617465676F72799709000016004974656D735B
      3436395D2E446973706C61794E616D652204000012004974656D735B34365D2E
      43617465676F7279FC00000015004974656D735B34365D2E446973706C61794E
      616D659809000013004974656D735B3437305D2E43617465676F727999090000
      16004974656D735B3437305D2E446973706C61794E616D659C09000013004974
      656D735B3437315D2E43617465676F72799D09000016004974656D735B343731
      5D2E446973706C61794E616D659E09000013004974656D735B3437325D2E4361
      7465676F72799F09000016004974656D735B3437325D2E446973706C61794E61
      6D65A009000013004974656D735B3437335D2E43617465676F7279A109000016
      004974656D735B3437335D2E446973706C61794E616D65A20900001300497465
      6D735B3437345D2E43617465676F7279A309000016004974656D735B3437345D
      2E446973706C61794E616D65A409000013004974656D735B3437355D2E436174
      65676F7279A509000016004974656D735B3437355D2E446973706C61794E616D
      65A609000013004974656D735B3437365D2E43617465676F7279A70900001600
      4974656D735B3437365D2E446973706C61794E616D65A809000013004974656D
      735B3437375D2E43617465676F7279A909000016004974656D735B3437375D2E
      446973706C61794E616D65AA09000013004974656D735B3437385D2E43617465
      676F7279AB09000016004974656D735B3437385D2E446973706C61794E616D65
      AC09000013004974656D735B3437395D2E43617465676F7279AD090000160049
      74656D735B3437395D2E446973706C61794E616D652304000012004974656D73
      5B34375D2E43617465676F7279FE00000015004974656D735B34375D2E446973
      706C61794E616D65AE09000013004974656D735B3438305D2E43617465676F72
      79AF09000016004974656D735B3438305D2E446973706C61794E616D65B00900
      0013004974656D735B3438315D2E43617465676F7279B109000016004974656D
      735B3438315D2E446973706C61794E616D65B209000013004974656D735B3438
      325D2E43617465676F7279B309000016004974656D735B3438325D2E44697370
      6C61794E616D65B409000013004974656D735B3438335D2E43617465676F7279
      B509000016004974656D735B3438335D2E446973706C61794E616D65B6090000
      13004974656D735B3438345D2E43617465676F7279B709000016004974656D73
      5B3438345D2E446973706C61794E616D65B809000013004974656D735B343835
      5D2E43617465676F7279B909000016004974656D735B3438355D2E446973706C
      61794E616D65BA09000013004974656D735B3438365D2E43617465676F7279BB
      09000016004974656D735B3438365D2E446973706C61794E616D65C809000013
      004974656D735B3438375D2E43617465676F7279C909000016004974656D735B
      3438375D2E446973706C61794E616D65CF09000013004974656D735B3438385D
      2E43617465676F7279D009000016004974656D735B3438385D2E446973706C61
      794E616D65D109000013004974656D735B3438395D2E43617465676F7279D209
      000016004974656D735B3438395D2E446973706C61794E616D65240400001200
      4974656D735B34385D2E43617465676F72790001000015004974656D735B3438
      5D2E446973706C61794E616D65D309000013004974656D735B3439305D2E4361
      7465676F7279D409000016004974656D735B3439305D2E446973706C61794E61
      6D65D509000013004974656D735B3439315D2E43617465676F7279D609000016
      004974656D735B3439315D2E446973706C61794E616D65D70900001300497465
      6D735B3439325D2E43617465676F7279D809000016004974656D735B3439325D
      2E446973706C61794E616D65D909000013004974656D735B3439335D2E436174
      65676F7279DA09000016004974656D735B3439335D2E446973706C61794E616D
      65DE09000013004974656D735B3439345D2E43617465676F7279DF0900001600
      4974656D735B3439345D2E446973706C61794E616D65070A000013004974656D
      735B3439355D2E43617465676F7279080A000016004974656D735B3439355D2E
      446973706C61794E616D65090A000013004974656D735B3439365D2E43617465
      676F72790A0A000016004974656D735B3439365D2E446973706C61794E616D65
      0B0A000013004974656D735B3439375D2E43617465676F72790C0A0000160049
      74656D735B3439375D2E446973706C61794E616D650D0A000013004974656D73
      5B3439385D2E43617465676F72790E0A000016004974656D735B3439385D2E44
      6973706C61794E616D650F0A000013004974656D735B3439395D2E4361746567
      6F7279100A000016004974656D735B3439395D2E446973706C61794E616D6525
      04000012004974656D735B34395D2E43617465676F7279030100001500497465
      6D735B34395D2E446973706C61794E616D65F803000011004974656D735B345D
      2E43617465676F72799400000014004974656D735B345D2E446973706C61794E
      616D65110A000013004974656D735B3530305D2E43617465676F7279120A0000
      16004974656D735B3530305D2E446973706C61794E616D65130A000013004974
      656D735B3530315D2E43617465676F7279140A000016004974656D735B353031
      5D2E446973706C61794E616D65150A000013004974656D735B3530325D2E4361
      7465676F7279160A000016004974656D735B3530325D2E446973706C61794E61
      6D65170A000013004974656D735B3530335D2E43617465676F7279180A000016
      004974656D735B3530335D2E446973706C61794E616D65190A00001300497465
      6D735B3530345D2E43617465676F72791A0A000016004974656D735B3530345D
      2E446973706C61794E616D651B0A000013004974656D735B3530355D2E436174
      65676F72791C0A000016004974656D735B3530355D2E446973706C61794E616D
      651D0A000013004974656D735B3530365D2E43617465676F72791E0A00001600
      4974656D735B3530365D2E446973706C61794E616D651F0A000013004974656D
      735B3530375D2E43617465676F7279200A000016004974656D735B3530375D2E
      446973706C61794E616D65210A000013004974656D735B3530385D2E43617465
      676F7279220A000016004974656D735B3530385D2E446973706C61794E616D65
      230A000013004974656D735B3530395D2E43617465676F7279240A0000160049
      74656D735B3530395D2E446973706C61794E616D652604000012004974656D73
      5B35305D2E43617465676F72790601000015004974656D735B35305D2E446973
      706C61794E616D65250A000013004974656D735B3531305D2E43617465676F72
      79260A000016004974656D735B3531305D2E446973706C61794E616D65270A00
      0013004974656D735B3531315D2E43617465676F7279280A000016004974656D
      735B3531315D2E446973706C61794E616D65290A000013004974656D735B3531
      325D2E43617465676F72792A0A000016004974656D735B3531325D2E44697370
      6C61794E616D652B0A000013004974656D735B3531335D2E43617465676F7279
      2C0A000016004974656D735B3531335D2E446973706C61794E616D652D0A0000
      13004974656D735B3531345D2E43617465676F72792E0A000016004974656D73
      5B3531345D2E446973706C61794E616D652F0A000013004974656D735B353135
      5D2E43617465676F7279300A000016004974656D735B3531355D2E446973706C
      61794E616D65310A000013004974656D735B3531365D2E43617465676F727932
      0A000016004974656D735B3531365D2E446973706C61794E616D65330A000013
      004974656D735B3531375D2E43617465676F7279340A000016004974656D735B
      3531375D2E446973706C61794E616D65350A000013004974656D735B3531385D
      2E43617465676F7279360A000016004974656D735B3531385D2E446973706C61
      794E616D65370A000013004974656D735B3531395D2E43617465676F7279380A
      000016004974656D735B3531395D2E446973706C61794E616D65270400001200
      4974656D735B35315D2E43617465676F72790901000015004974656D735B3531
      5D2E446973706C61794E616D65390A000013004974656D735B3532305D2E4361
      7465676F72793A0A000016004974656D735B3532305D2E446973706C61794E61
      6D653B0A000013004974656D735B3532315D2E43617465676F72793C0A000016
      004974656D735B3532315D2E446973706C61794E616D653D0A00001300497465
      6D735B3532325D2E43617465676F72793E0A000016004974656D735B3532325D
      2E446973706C61794E616D653F0A000013004974656D735B3532335D2E436174
      65676F7279400A000016004974656D735B3532335D2E446973706C61794E616D
      65410A000013004974656D735B3532345D2E43617465676F7279420A00001600
      4974656D735B3532345D2E446973706C61794E616D654B0A000013004974656D
      735B3532355D2E43617465676F72794C0A000016004974656D735B3532355D2E
      446973706C61794E616D654D0A000013004974656D735B3532365D2E43617465
      676F72794E0A000016004974656D735B3532365D2E446973706C61794E616D65
      4F0A000013004974656D735B3532375D2E43617465676F7279500A0000160049
      74656D735B3532375D2E446973706C61794E616D656E0A000013004974656D73
      5B3532385D2E43617465676F72796F0A000016004974656D735B3532385D2E44
      6973706C61794E616D65830A000013004974656D735B3532395D2E4361746567
      6F7279840A000016004974656D735B3532395D2E446973706C61794E616D6528
      04000012004974656D735B35325D2E43617465676F72790C0100001500497465
      6D735B35325D2E446973706C61794E616D65850A000013004974656D735B3533
      305D2E43617465676F7279860A000016004974656D735B3533305D2E44697370
      6C61794E616D65870A000013004974656D735B3533315D2E43617465676F7279
      880A000016004974656D735B3533315D2E446973706C61794E616D65910A0000
      13004974656D735B3533325D2E43617465676F7279920A000016004974656D73
      5B3533325D2E446973706C61794E616D65930A000013004974656D735B353333
      5D2E43617465676F7279940A000016004974656D735B3533335D2E446973706C
      61794E616D65950A000013004974656D735B3533345D2E43617465676F727996
      0A000016004974656D735B3533345D2E446973706C61794E616D65970A000013
      004974656D735B3533355D2E43617465676F7279980A000016004974656D735B
      3533355D2E446973706C61794E616D65990A000013004974656D735B3533365D
      2E43617465676F72799A0A000016004974656D735B3533365D2E446973706C61
      794E616D659B0A000013004974656D735B3533375D2E43617465676F72799C0A
      000016004974656D735B3533375D2E446973706C61794E616D659D0A00001300
      4974656D735B3533385D2E43617465676F72799E0A000016004974656D735B35
      33385D2E446973706C61794E616D659F0A000013004974656D735B3533395D2E
      43617465676F7279A00A000016004974656D735B3533395D2E446973706C6179
      4E616D652904000012004974656D735B35335D2E43617465676F72790F010000
      15004974656D735B35335D2E446973706C61794E616D65A10A00001300497465
      6D735B3534305D2E43617465676F7279A20A000016004974656D735B3534305D
      2E446973706C61794E616D65A30A000013004974656D735B3534315D2E436174
      65676F7279A40A000016004974656D735B3534315D2E446973706C61794E616D
      65A50A000013004974656D735B3534325D2E43617465676F7279A60A00001600
      4974656D735B3534325D2E446973706C61794E616D65A70A000013004974656D
      735B3534335D2E43617465676F7279A80A000016004974656D735B3534335D2E
      446973706C61794E616D65A90A000013004974656D735B3534345D2E43617465
      676F7279AA0A000016004974656D735B3534345D2E446973706C61794E616D65
      AB0A000013004974656D735B3534355D2E43617465676F7279AC0A0000160049
      74656D735B3534355D2E446973706C61794E616D65B10A000013004974656D73
      5B3534365D2E43617465676F7279B20A000016004974656D735B3534365D2E44
      6973706C61794E616D65B30A000013004974656D735B3534375D2E4361746567
      6F7279B40A000016004974656D735B3534375D2E446973706C61794E616D65B6
      0A000013004974656D735B3534385D2E43617465676F7279B70A000016004974
      656D735B3534385D2E446973706C61794E616D65B80A000013004974656D735B
      3534395D2E43617465676F7279B90A000016004974656D735B3534395D2E4469
      73706C61794E616D652A04000012004974656D735B35345D2E43617465676F72
      791201000015004974656D735B35345D2E446973706C61794E616D65BA0A0000
      13004974656D735B3535305D2E43617465676F7279BB0A000016004974656D73
      5B3535305D2E446973706C61794E616D65BD0A000013004974656D735B353531
      5D2E43617465676F7279BE0A000016004974656D735B3535315D2E446973706C
      61794E616D65C00A000013004974656D735B3535325D2E43617465676F7279C1
      0A000016004974656D735B3535325D2E446973706C61794E616D65C40A000013
      004974656D735B3535335D2E43617465676F7279C50A000016004974656D735B
      3535335D2E446973706C61794E616D65CB0A000013004974656D735B3535345D
      2E43617465676F7279CC0A000016004974656D735B3535345D2E446973706C61
      794E616D65CD0A000013004974656D735B3535355D2E43617465676F7279CE0A
      000016004974656D735B3535355D2E446973706C61794E616D65D70A00001300
      4974656D735B3535365D2E43617465676F7279D80A000016004974656D735B35
      35365D2E446973706C61794E616D65DC0A000013004974656D735B3535375D2E
      43617465676F7279DD0A000016004974656D735B3535375D2E446973706C6179
      4E616D65DF0A000013004974656D735B3535385D2E43617465676F7279E00A00
      0016004974656D735B3535385D2E446973706C61794E616D65E10A0000130049
      74656D735B3535395D2E43617465676F7279E20A000016004974656D735B3535
      395D2E446973706C61794E616D652B04000012004974656D735B35355D2E4361
      7465676F72791501000015004974656D735B35355D2E446973706C61794E616D
      65E40A000013004974656D735B3536305D2E43617465676F7279E50A00001600
      4974656D735B3536305D2E446973706C61794E616D65E60A000013004974656D
      735B3536315D2E43617465676F7279E70A000016004974656D735B3536315D2E
      446973706C61794E616D65E80A000013004974656D735B3536325D2E43617465
      676F7279E90A000016004974656D735B3536325D2E446973706C61794E616D65
      EA0A000013004974656D735B3536335D2E43617465676F7279EB0A0000160049
      74656D735B3536335D2E446973706C61794E616D65ED0A000013004974656D73
      5B3536345D2E43617465676F7279EE0A000016004974656D735B3536345D2E44
      6973706C61794E616D65EF0A000013004974656D735B3536355D2E4361746567
      6F7279F00A000016004974656D735B3536355D2E446973706C61794E616D65F1
      0A000013004974656D735B3536365D2E43617465676F7279F20A000016004974
      656D735B3536365D2E446973706C61794E616D65F30A000013004974656D735B
      3536375D2E43617465676F7279F40A000016004974656D735B3536375D2E4469
      73706C61794E616D650A0B000013004974656D735B3536385D2E43617465676F
      72790B0B000016004974656D735B3536385D2E446973706C61794E616D650C0B
      000013004974656D735B3536395D2E43617465676F72790D0B00001600497465
      6D735B3536395D2E446973706C61794E616D652C04000012004974656D735B35
      365D2E43617465676F72791801000015004974656D735B35365D2E446973706C
      61794E616D650E0B000013004974656D735B3537305D2E43617465676F72790F
      0B000016004974656D735B3537305D2E446973706C61794E616D65150B000013
      004974656D735B3537315D2E43617465676F7279160B000016004974656D735B
      3537315D2E446973706C61794E616D65170B000013004974656D735B3537325D
      2E43617465676F7279180B000016004974656D735B3537325D2E446973706C61
      794E616D651B0B000013004974656D735B3537335D2E43617465676F72791C0B
      000016004974656D735B3537335D2E446973706C61794E616D651D0B00001300
      4974656D735B3537345D2E43617465676F72791E0B000016004974656D735B35
      37345D2E446973706C61794E616D65230B000013004974656D735B3537355D2E
      43617465676F7279240B000016004974656D735B3537355D2E446973706C6179
      4E616D65260B000013004974656D735B3537365D2E43617465676F7279270B00
      0016004974656D735B3537365D2E446973706C61794E616D65280B0000130049
      74656D735B3537375D2E43617465676F7279290B000016004974656D735B3537
      375D2E446973706C61794E616D652A0B000013004974656D735B3537385D2E43
      617465676F72792B0B000016004974656D735B3537385D2E446973706C61794E
      616D652C0B000013004974656D735B3537395D2E43617465676F72792D0B0000
      16004974656D735B3537395D2E446973706C61794E616D652D04000012004974
      656D735B35375D2E43617465676F72791B01000015004974656D735B35375D2E
      446973706C61794E616D652E0B000013004974656D735B3538305D2E43617465
      676F72792F0B000016004974656D735B3538305D2E446973706C61794E616D65
      300B000013004974656D735B3538315D2E43617465676F7279310B0000160049
      74656D735B3538315D2E446973706C61794E616D65350B000013004974656D73
      5B3538325D2E43617465676F7279360B000016004974656D735B3538325D2E44
      6973706C61794E616D653C0B000013004974656D735B3538335D2E4361746567
      6F72793D0B000016004974656D735B3538335D2E446973706C61794E616D653E
      0B000013004974656D735B3538345D2E43617465676F72793F0B000016004974
      656D735B3538345D2E446973706C61794E616D65460B000013004974656D735B
      3538355D2E43617465676F7279470B000016004974656D735B3538355D2E4469
      73706C61794E616D654E0B000013004974656D735B3538365D2E43617465676F
      72794F0B000016004974656D735B3538365D2E446973706C61794E616D65500B
      000013004974656D735B3538375D2E43617465676F7279510B00001600497465
      6D735B3538375D2E446973706C61794E616D65520B000013004974656D735B35
      38385D2E43617465676F7279530B000016004974656D735B3538385D2E446973
      706C61794E616D65540B000013004974656D735B3538395D2E43617465676F72
      79550B000016004974656D735B3538395D2E446973706C61794E616D652E0400
      0012004974656D735B35385D2E43617465676F72791E01000015004974656D73
      5B35385D2E446973706C61794E616D65560B000013004974656D735B3539305D
      2E43617465676F7279570B000016004974656D735B3539305D2E446973706C61
      794E616D65580B000013004974656D735B3539315D2E43617465676F7279590B
      000016004974656D735B3539315D2E446973706C61794E616D655A0B00001300
      4974656D735B3539325D2E43617465676F72795B0B000016004974656D735B35
      39325D2E446973706C61794E616D655C0B000013004974656D735B3539335D2E
      43617465676F72795D0B000016004974656D735B3539335D2E446973706C6179
      4E616D655E0B000013004974656D735B3539345D2E43617465676F72795F0B00
      0016004974656D735B3539345D2E446973706C61794E616D65600B0000130049
      74656D735B3539355D2E43617465676F7279610B000016004974656D735B3539
      355D2E446973706C61794E616D65620B000013004974656D735B3539365D2E43
      617465676F7279630B000016004974656D735B3539365D2E446973706C61794E
      616D65650B000013004974656D735B3539375D2E43617465676F7279660B0000
      16004974656D735B3539375D2E446973706C61794E616D65670B000013004974
      656D735B3539385D2E43617465676F7279680B000016004974656D735B353938
      5D2E446973706C61794E616D65690B000013004974656D735B3539395D2E4361
      7465676F72796A0B000016004974656D735B3539395D2E446973706C61794E61
      6D652F04000012004974656D735B35395D2E43617465676F7279210100001500
      4974656D735B35395D2E446973706C61794E616D65F903000011004974656D73
      5B355D2E43617465676F72799600000014004974656D735B355D2E446973706C
      61794E616D65740B000013004974656D735B3630305D2E43617465676F727975
      0B000016004974656D735B3630305D2E446973706C61794E616D653004000012
      004974656D735B36305D2E43617465676F72792401000015004974656D735B36
      305D2E446973706C61794E616D653104000012004974656D735B36315D2E4361
      7465676F72792701000015004974656D735B36315D2E446973706C61794E616D
      653204000012004974656D735B36325D2E43617465676F72792A010000150049
      74656D735B36325D2E446973706C61794E616D653304000012004974656D735B
      36335D2E43617465676F72792D01000015004974656D735B36335D2E44697370
      6C61794E616D653404000012004974656D735B36345D2E43617465676F727930
      01000015004974656D735B36345D2E446973706C61794E616D65350400001200
      4974656D735B36355D2E43617465676F72793301000015004974656D735B3635
      5D2E446973706C61794E616D653604000012004974656D735B36365D2E436174
      65676F72793601000015004974656D735B36365D2E446973706C61794E616D65
      3704000012004974656D735B36375D2E43617465676F72793901000015004974
      656D735B36375D2E446973706C61794E616D653804000012004974656D735B36
      385D2E43617465676F72793B01000015004974656D735B36385D2E446973706C
      61794E616D653904000012004974656D735B36395D2E43617465676F72793D01
      000015004974656D735B36395D2E446973706C61794E616D65FA030000110049
      74656D735B365D2E43617465676F72799900000014004974656D735B365D2E44
      6973706C61794E616D653A04000012004974656D735B37305D2E43617465676F
      72793F01000015004974656D735B37305D2E446973706C61794E616D653B0400
      0012004974656D735B37315D2E43617465676F72794101000015004974656D73
      5B37315D2E446973706C61794E616D653C04000012004974656D735B37325D2E
      43617465676F72794301000015004974656D735B37325D2E446973706C61794E
      616D653D04000012004974656D735B37335D2E43617465676F72794501000015
      004974656D735B37335D2E446973706C61794E616D653E04000012004974656D
      735B37345D2E43617465676F72794701000015004974656D735B37345D2E4469
      73706C61794E616D653F04000012004974656D735B37355D2E43617465676F72
      794901000015004974656D735B37355D2E446973706C61794E616D6540040000
      12004974656D735B37365D2E43617465676F72794B01000015004974656D735B
      37365D2E446973706C61794E616D654104000012004974656D735B37375D2E43
      617465676F72794D01000015004974656D735B37375D2E446973706C61794E61
      6D654204000012004974656D735B37385D2E43617465676F72794F0100001500
      4974656D735B37385D2E446973706C61794E616D654304000012004974656D73
      5B37395D2E43617465676F72795101000015004974656D735B37395D2E446973
      706C61794E616D65FB03000011004974656D735B375D2E43617465676F72799C
      00000014004974656D735B375D2E446973706C61794E616D6544040000120049
      74656D735B38305D2E43617465676F72795301000015004974656D735B38305D
      2E446973706C61794E616D654504000012004974656D735B38315D2E43617465
      676F72795501000015004974656D735B38315D2E446973706C61794E616D6546
      04000012004974656D735B38325D2E43617465676F7279570100001500497465
      6D735B38325D2E446973706C61794E616D654704000012004974656D735B3833
      5D2E43617465676F72795901000015004974656D735B38335D2E446973706C61
      794E616D654804000012004974656D735B38345D2E43617465676F72795B0100
      0015004974656D735B38345D2E446973706C61794E616D654904000012004974
      656D735B38355D2E43617465676F72795D01000015004974656D735B38355D2E
      446973706C61794E616D654A04000012004974656D735B38365D2E4361746567
      6F72795F01000015004974656D735B38365D2E446973706C61794E616D654B04
      000012004974656D735B38375D2E43617465676F72796101000015004974656D
      735B38375D2E446973706C61794E616D654C04000012004974656D735B38385D
      2E43617465676F72796301000015004974656D735B38385D2E446973706C6179
      4E616D654D04000012004974656D735B38395D2E43617465676F727965010000
      15004974656D735B38395D2E446973706C61794E616D65FC0300001100497465
      6D735B385D2E43617465676F72799F00000014004974656D735B385D2E446973
      706C61794E616D654E04000012004974656D735B39305D2E43617465676F7279
      6701000015004974656D735B39305D2E446973706C61794E616D654F04000012
      004974656D735B39315D2E43617465676F72796901000015004974656D735B39
      315D2E446973706C61794E616D655004000012004974656D735B39325D2E4361
      7465676F72796B01000015004974656D735B39325D2E446973706C61794E616D
      655104000012004974656D735B39335D2E43617465676F72796D010000150049
      74656D735B39335D2E446973706C61794E616D655204000012004974656D735B
      39345D2E43617465676F72796F01000015004974656D735B39345D2E44697370
      6C61794E616D655304000012004974656D735B39355D2E43617465676F727971
      01000015004974656D735B39355D2E446973706C61794E616D65540400001200
      4974656D735B39365D2E43617465676F72797301000015004974656D735B3936
      5D2E446973706C61794E616D655504000012004974656D735B39375D2E436174
      65676F72797501000015004974656D735B39375D2E446973706C61794E616D65
      5604000012004974656D735B39385D2E43617465676F72797701000015004974
      656D735B39385D2E446973706C61794E616D655704000012004974656D735B39
      395D2E43617465676F72797901000015004974656D735B39395D2E446973706C
      61794E616D65FD03000011004974656D735B395D2E43617465676F7279A20000
      0014004974656D735B395D2E446973706C61794E616D6500090054696D657254
      69636B00000E00506F707570537461747573456E6300001300506F7075705374
      617475734C696E65456E647300000D005442584974656D456E6457696E00000C
      005442584974656D456E64556E00000D005442584974656D456E644D61630000
      0B00496D674C69737454726565000012005072696E7465725365747570446961
      6C6F6700000A0053796E745374796C6573000005006563414350000101000000
      040048696E7400000F00506172616D436F6D706C6574696F6E00010100000004
      0048696E7400000D0054656D706C617465506F70757000010100000004004869
      6E7400000B00506F7075704C657865727300000B00656343686172506F707570
      000101000000040048696E7400000B0054696D657252656472617700000D0054
      42584974656D4F546F6F6C730102000000C2030000070043617074696F6E1805
      0000040048696E74001200544258536570617261746F724974656D323200000E
      005442584974656D426B436C6561720102000000B8030000070043617074696F
      6EB9030000040048696E7400090054696D657248696E74000012005442585365
      70617261746F724974656D323600000F005442584974656D4D61726B53776170
      0102000000F6040000070043617074696F6E17050000040048696E74000F0054
      42584974656D4D61726B436F6C6C0102000000F7040000070043617074696F6E
      16050000040048696E74000F005442584974656D4D61726B44726F7001020000
      00F8040000070043617074696F6E15050000040048696E740004007462517301
      01000000FA040000070043617074696F6E000D005442584974656D46464E6578
      7401020000000B050000070043617074696F6EFB040000040048696E74000D00
      5442584974656D46465072657601020000000C050000070043617074696F6EFC
      040000040048696E740016005442585375626D656E7556696577546F6F6C6261
      72730101000000FE040000070043617074696F6E000A005442584974656D5451
      730102000000FF040000070043617074696F6E1C050000040048696E74000C00
      5442584974656D5456696577010200000000050000070043617074696F6E1B05
      0000040048696E74000C005442584974656D5445646974010200000001050000
      070043617074696F6E1A050000040048696E74000C005442584974656D544669
      6C65010200000002050000070043617074696F6E19050000040048696E740006
      0063624361736501020000000D050000070043617074696F6E09050000040048
      696E740004006564517301010000000A050000040048696E740010005442436F
      6E74726F6C4974656D316161000009005442584974656D517301020000000805
      0000070043617074696F6E11050000040048696E740006006362576F72640102
      0000000E050000070043617074696F6E0F050000040048696E74000F00544258
      4974656D534D61726B416C6C010200000010050000070043617074696F6E1405
      0000040048696E740011005442584974656D48656C70546F7069637301020000
      0027050000070043617074696F6E28050000040048696E74000D005442584974
      656D46436C6F7365010200000029050000070043617074696F6E3D0500000400
      48696E740007006163436C6F736500000F00506F707570546162436F6E746578
      74000015005442584974656D546162436C6F73654F746865727301010000002D
      050000070043617074696F6E000F005442584974656D546162436C6F73650101
      0000002E050000070043617074696F6E001200544258536570617261746F7249
      74656D323800001100496D6167654C697374436C6F736542746E000009006163
      53617665416C6C00000F005442584974656D4653617665416C6C010200000033
      050000070043617074696F6E3C050000040048696E74000A006163436C6F7365
      416C6C000010005442584974656D46436C6F7365416C6C010200000035050000
      070043617074696F6E3E050000040048696E740016006163436C6F73654F7468
      6572735468697347726F7570000010005442584974656D46436C6F73654F7468
      010200000040050000070043617074696F6E41050000040048696E7400120054
      4258536570617261746F724974656D323900000F005442584974656D46536573
      4F70656E010200000042050000070043617074696F6E48050000040048696E74
      0011005442584974656D46536573536176654173010200000043050000070043
      617074696F6E49050000040048696E74000A004F445F53657373696F6E00000A
      0053445F53657373696F6E000016005442585375626D656E754974656D465265
      63656E747301010000004C050000070043617074696F6E001200544258536570
      617261746F724974656D3330000014005442584974656D46436C656172526563
      656E747301010000004D050000070043617074696F6E0010005462785375626D
      656E7557696E646F7701010000004E050000070043617074696F6E000C005442
      584974656D4554696D65010200000050050000070043617074696F6E53050000
      040048696E74000F005442585375626D656E75546F6F6C730101000000540500
      00070043617074696F6E0011005442584974656D52756E4F70656E4469720102
      00000067050000070043617074696F6E68050000040048696E74001300544258
      5375626D656E75456E636F64696E677301010000008905000007004361707469
      6F6E0012005442585375626D656E754C696E65456E647301010000008A050000
      070043617074696F6E000E005442584974656D456E644D57696E00000D005442
      584974656D456E644D556E00000E005442584974656D456E644D4D6163000013
      005442585375626D656E75456E6352657265616401010000006F0B0000070043
      617074696F6E0014005442585375626D656E75456E63436F6E76657274010100
      0000700B0000070043617074696F6E00090054696D65724C6F61640000090065
      635265706C6163650101000000BD050000040048696E74000B00544258497465
      6D535265700102000000AA050000070043617074696F6EAD050000040048696E
      74000C005442584974656D5346696E640102000000AB05000007004361707469
      6F6EAC050000040048696E74000600616345786974000010005442584974656D
      46436C6F736544656C0102000000B6050000070043617074696F6EB905000004
      0048696E740010006163436C6F7365416E6444656C6574650000100065635265
      706C616365496E46696C65730101000000BE050000040048696E740012005442
      584974656D53526570496E46696C65730102000000C005000007004361707469
      6F6EC1050000040048696E7400080054696D657253656C000011005442585375
      626D656E754374784D6F72650101000000C4050000070043617074696F6E0011
      005442584974656D437478436F707955726C0102000000C50500000700436170
      74696F6EC6050000040048696E740014005442584974656D437478436F707941
      7070656E640102000000C7050000070043617074696F6EC8050000040048696E
      740013005442584974656D437478437574417070656E640102000000C9050000
      070043617074696F6ECA050000040048696E7400120054425853657061726174
      6F724974656D3334000012005442584974656D437478436F707948544D4C0101
      000000CB050000070043617074696F6E0011005442584974656D437478436F70
      795254460101000000CD050000070043617074696F6E00120054425853657061
      7261746F724974656D333500000E005442584974656D45437574417070010200
      0000DE050000070043617074696F6EDF050000040048696E74000F0054425849
      74656D45436F70794170700102000000E0050000070043617074696F6EE10500
      00040048696E740011005442584974656D53476F427261636B65740102000000
      F1050000070043617074696F6EF2050000040048696E74000500706C4F757401
      01000000F3050000070043617074696F6E01010000000700546F6F6C62617201
      01000000E3090000070043617074696F6E0007004C6973744F757400000E0054
      42584974656D426172504F75740102000000F7050000070043617074696F6E47
      0A0000040048696E74000900656353686F774F75740101000000F40500000700
      43617074696F6E000B005442584974656D4F4F75740102000000F90500000700
      43617074696F6EFA050000040048696E74000800506F7075704F757400000F00
      5442584974656D4F7574436C6561720101000000FC050000070043617074696F
      6E0011005442584974656D4F7574436F707953656C0101000000FD0500000700
      43617074696F6E000D005442584974656D4F75744E61760101000000FE050000
      070043617074696F6E001200544258536570617261746F724974656D31380000
      11005442584974656D4F7574436F7079416C6C0101000000FF05000007004361
      7074696F6E001200544258536570617261746F724974656D333200000F00496D
      6167654C697374537461747573000010005442584974656D4F757444656C5365
      6C010100000004060000070043617074696F6E0016005442584974656D4F7574
      44656C4E6F6E706172736564010100000005060000070043617074696F6E0009
      00506F70757046696E64000012005442584974656D5472656546696E644E6176
      010100000008060000070043617074696F6E001200544258536570617261746F
      724974656D333600001200544258536570617261746F724974656D3337000012
      00616353657475704C657865725374796C657300001200544258536570617261
      746F724974656D333800001200544258536570617261746F724974656D333900
      0010005442584974656D454361736553656E7401020000001806000007004361
      7074696F6E19060000040048696E740012005442584974656D42617243617365
      53656E7401010000001A060000070043617074696F6E000A00656353656E7443
      61736501010000001C060000070043617074696F6E000900506F7075705A6F6F
      6D00000E005442584974656D5A53657433303000000E005442584974656D5A53
      657432303000000E005442584974656D5A53657431353000000E005442584974
      656D5A53657431303000000D005442584974656D5A536574373500000D005442
      584974656D5A536574353000000D005442584974656D5A536574323500000D00
      5442584974656D5A4F74686572010100000025060000070043617074696F6E00
      0600706C436C69700001010000000700546F6F6C6261720101000000E4090000
      070043617074696F6E000A00656353686F77436C697001010000002706000007
      0043617074696F6E001200544258536570617261746F724974656D323500000C
      005442584974656D4F436C6970010200000028060000070043617074696F6E29
      060000040048696E74000900506F707570436C6970000014005442584974656D
      436C697044656C657465416C6C01010000002C060000070043617074696F6E00
      14006563476F746F4E65787446696E64526573756C74000014006563476F746F
      5072657646696E64526573756C7400000F005442584974656D53526573507265
      7601020000002D060000070043617074696F6E33060000040048696E74000F00
      5442584974656D535265734E65787401020000002E060000070043617074696F
      6E34060000040048696E74000E005442584974656D4553796E63456401020000
      0035060000070043617074696F6E36060000040048696E74000E005442584974
      656D4653657341646401020000003B060000070043617074696F6E3C06000004
      0048696E74000900656346756C6C53637200000F005442584974656D4F46756C
      6C536372010200000041060000070043617074696F6E44060000040048696E74
      000D0054696D6572427261636B65747300001200544258536570617261746F72
      4974656D3431000011005442584974656D546162436F70794469720101000000
      46060000070043617074696F6E0012005442584974656D546162436F70794675
      6C6C010100000047060000070043617074696F6E0010005442584974656D5461
      62436F7079464E010100000048060000070043617074696F6E00120054425853
      6570617261746F724974656D343200001200544258536570617261746F724974
      656D343400000F005442584974656D42617253796E63480102000000CB090000
      070043617074696F6E52060000040048696E74000F005442584974656D426172
      53796E63560102000000CC090000070043617074696F6E53060000040048696E
      74000D00656353796E635363726F6C6C4800000D00656353796E635363726F6C
      6C5600000E005442585375626D656E755669657701010000005A060000070043
      617074696F6E000D005442584974656D4F4F6E546F7001020000005B06000007
      0043617074696F6E5C060000040048696E7400070065634F6E546F7000001100
      5442584974656D4546696C6C426C6F636B01020000005F060000070043617074
      696F6E62060000040048696E74001200544258536570617261746F724974656D
      3233000011005442584974656D4374784F70656E53656C010100000068060000
      040048696E74001200544258536570617261746F724974656D34350000100054
      42584974656D437478546F6F6C3132000010005442584974656D437478546F6F
      6C3131000010005442584974656D437478546F6F6C313000000F005442584974
      656D437478546F6F6C3900000F005442584974656D437478546F6F6C3800000F
      005442584974656D437478546F6F6C3700000F005442584974656D437478546F
      6F6C3600000F005442584974656D437478546F6F6C3500000F00544258497465
      6D437478546F6F6C3400000F005442584974656D437478546F6F6C3300000F00
      5442584974656D437478546F6F6C3200000F005442584974656D437478546F6F
      6C3100001200544258536570617261746F724974656D31330000120054425853
      6570617261746F724974656D3234000012005442585375626D656E7541647661
      6E63656401010000006C060000070043617074696F6E0015005442584974656D
      4F526573746F72655374796C657301020000006D060000070043617074696F6E
      6E060000040048696E740013005442584974656D437478437573746F6D697A65
      01010000006F060000070043617074696F6E0011006563546F67676C65466F63
      757354726565000011006563546F67676C65466F637573436C69700000120054
      4258536570617261746F724974656D3436000018005442585375626D656E7549
      74656D436F6D6D656E744F7073010100000080060000070043617074696F6E00
      0C005442584974656D45436F6D6D010200000081060000070043617074696F6E
      82060000040048696E74000E005442584974656D45556E636F6D6D0102000000
      83060000070043617074696F6E84060000040048696E74001900544258497465
      6D45546F67676C654C696E65436F6D6D656E7401020000008506000007004361
      7074696F6E86060000040048696E740013006563546F67676C654C696E65436F
      6D6D656E74000013006563546F67676C65466F6375734F757470757400000800
      61634261636B7570000015006563546F67676C6553747265616D436F6D6D656E
      7400001B005442584974656D45546F67676C6553747265616D436F6D6D656E74
      01020000008F060000070043617074696F6E90060000040048696E7400170054
      42585375626D656E754974656D496E64656E744F707301010000009106000007
      0043617074696F6E0015005442585375626D656E754974656D4C696E654F7073
      010100000092060000070043617074696F6E000E005442584974656D454D6F76
      65446E010200000093060000070043617074696F6E95060000040048696E7400
      0E005442584974656D454D6F7665557001020000009406000007004361707469
      6F6E96060000040048696E740011005442584974656D48656C70446F6E617465
      010200000097060000070043617074696F6E98060000040048696E74000D0054
      42584974656D4544656C4C6E010200000099060000070043617074696F6E9A06
      0000040048696E74001200544258536570617261746F724974656D3437000015
      005442585375626D656E754974656D436F70794F707301010000009B06000007
      0043617074696F6E0011005442584974656D4543704469725061746801010000
      009C060000070043617074696F6E0012005442584974656D45437046756C6C50
      61746801010000009D060000070043617074696F6E000C005442584974656D45
      4370464E01010000009E060000070043617074696F6E0014006563546F67676C
      65466F63757346696E6452657300001200544258536570617261746F72497465
      6D343900000C005442584974656D454A6F696E0102000000B606000007004361
      7074696F6EB7060000040048696E74000D005442584974656D4553706C697401
      02000000BC060000070043617074696F6EBD060000040048696E740012005442
      58536570617261746F724974656D3530000010005442585375626D656E754D61
      63726F730101000000BE060000070043617074696F6E0010005442584974656D
      4D6163726F506C61790102000000C7060000070043617074696F6ED506000004
      0048696E740010005442584974656D4D6163726F53746F700102000000C90600
      00070043617074696F6ED3060000040048696E740012005442584974656D4D61
      63726F5265636F72640102000000CB060000070043617074696F6ED206000004
      0048696E740012005442584974656D4D6163726F43616E63656C0102000000CD
      060000070043617074696F6ED4060000040048696E7400120054425853657061
      7261746F724974656D353100000F005442584974656D4D6163726F446C670102
      000000CF060000070043617074696F6ED6060000040048696E74000D0061634D
      6163726F5265636F726400000B0061634D6163726F53746F7000000D0061634D
      6163726F43616E63656C00000B0061634D6163726F506C617900000D0061634D
      6163726F4469616C6F6700000A0065634D6163726F5265630000080061634D61
      63726F310000080061634D6163726F320000080061634D6163726F3300000800
      61634D6163726F340000080061634D6163726F350000080061634D6163726F36
      0000080061634D6163726F370000080061634D6163726F380000080061634D61
      63726F390000100050726F70734D616E616765724B6579730000120054425853
      6570617261746F724974656D353300000D005442584974656D4D6163726F3900
      000D005442584974656D4D6163726F3800000D005442584974656D4D6163726F
      3700000D005442584974656D4D6163726F3600000D005442584974656D4D6163
      726F3500000D005442584974656D4D6163726F3400000D005442584974656D4D
      6163726F3300000D005442584974656D4D6163726F3200000D00544258497465
      6D4D6163726F3100000D005442584974656D426B4E6578740102000000EE0600
      00070043617074696F6EF1060000040048696E74000D005442584974656D426B
      507265760102000000EF060000070043617074696F6EF2060000040048696E74
      000F005442584974656D426B546F67676C650102000000F00600000700436170
      74696F6EF3060000040048696E74000C006563426B436C656172416C6C00000A
      006563426B546F67676C65000008006563426B4E657874000008006563426B50
      72657600000B006563426B496E7665727365000010005442584974656D426B49
      6E76657273650102000000FA060000070043617074696F6EFB06000004004869
      6E740008006563426B436F7079000007006563426B43757400000A006563426B
      44656C65746500000E006563426B44656C657465556E6D6B000009006563426B
      5061737465000010005442584974656D426B44656C556E6D6B01020000000707
      0000070043617074696F6E0C070000040048696E74000C005442584974656D42
      6B44656C010200000008070000070043617074696F6E0D070000040048696E74
      000E005442584974656D426B5061737465010200000009070000070043617074
      696F6E0E070000040048696E74000C005442584974656D426B43757401020000
      000A070000070043617074696F6E0F070000040048696E74000D005442584974
      656D426B436F707901020000000B070000070043617074696F6E100700000400
      48696E74000E005442584974656D426172476F746F0102000000130700000700
      43617074696F6E14070000040048696E740006006563476F746F000010005442
      584974656D5653796E6356657274010200000017070000070043617074696F6E
      18070000040048696E740010005442584974656D5653796E63486F727A010200
      000019070000070043617074696F6E1A070000040048696E740013006563546F
      67676C65466F63757347726F75707300001200544258536570617261746F7249
      74656D353400000F005442584974656D454375744C696E6501020000001D0700
      00070043617074696F6E23070000040048696E740010005442584974656D4543
      6F70794C696E6501020000001E070000070043617074696F6E24070000040048
      696E740007004C69737456616C00000D00506F70757056616C69646174650000
      0D005442584974656D56616C4E617601010000002F070000070043617074696F
      6E001200544258536570617261746F724974656D353600001100544258497465
      6D56616C436F707953656C010100000030070000070043617074696F6E001100
      5442584974656D56616C436F7079416C6C010100000031070000070043617074
      696F6E001200544258536570617261746F724974656D353700000F0054425849
      74656D56616C436C656172010100000032070000070043617074696F6E001500
      6563546F67676C65466F63757356616C6964617465000015005442584974656D
      45446564757041646A6163656E74010100000037070000070043617074696F6E
      0012005442584974656D426172446564757041646A0101000000390700000700
      43617074696F6E0012005442585375626D656E754974656D5365737301010000
      0059070000070043617074696F6E001200544258536570617261746F72497465
      6D353900000E005442584974656D53657373436C7201010000005A0700000700
      43617074696F6E000F005442584974656D465365735361766501020000005C07
      0000070043617074696F6E5D070000040048696E740010005442584974656D46
      536573436C6F736501020000005E070000070043617074696F6E5F0700000400
      48696E74000E00656352656D6F7665426C616E6B73000011005442584974656D
      4552656D426C616E6B73010200000064070000070043617074696F6E65070000
      040048696E74000D00656352656D6F76654C696E657300001600544258537562
      6D656E754974656D426C616E6B4F707301010000006607000007004361707469
      6F6E001200544258536570617261746F724974656D363000000F005442584974
      656D455472696D416C6C010200000067070000070043617074696F6E6A070000
      040048696E740011005442584974656D455472696D547261696C010200000068
      070000070043617074696F6E6B070000040048696E740010005442584974656D
      455472696D4C656164010200000069070000070043617074696F6E6C07000004
      0048696E74000A0065635472696D4C65616400000B0065635472696D54726169
      6C0000090065635472696D416C6C00001100656352656D6F7665447570537061
      636573000010005442584974656D4552656D4475705370010200000078070000
      070043617074696F6E79070000040048696E740009006563546162546F537000
      00090065635370546F54616200001200544258536570617261746F724974656D
      363100000F005442584974656D455370546F54616201020000007E0700000700
      43617074696F6E7F070000040048696E74000F005442584974656D4554616254
      6F5370010200000080070000070043617074696F6E81070000040048696E7400
      0E00656346696E64436C69704E65787400000E00656346696E64436C69705072
      6576000016005442585375626D656E754974656D53657373696F6E7301010000
      0086070000070043617074696F6E000C00656353706C697435305F353000000C
      00656353706C697434305F363000000C00656353706C697436305F343000000C
      00656353706C697433305F373000000C00656353706C697437305F333000000C
      00656353706C697432305F383000000C00656353706C697438305F3230000012
      005442584974656D4D6163726F5265706561740102000000CD09000007004361
      7074696F6E9D070000040048696E74000D0061634D6163726F52657065617400
      001200544258536570617261746F724974656D363200000B0065635265706561
      74436D64000011005442584974656D45526570656174436D640102000000A207
      0000070043617074696F6EA3070000040048696E740009005442585365705769
      6E00000E005442584974656D57696E465265730101000000A407000007004361
      7074696F6E000D005442584974656D57696E4F75740101000000A50700000700
      43617074696F6E000E005442584974656D57696E436C69700101000000A60700
      00070043617074696F6E000E005442584974656D57696E547265650101000000
      A7070000070043617074696F6E000D005442584974656D57696E56616C010100
      0000A8070000070043617074696F6E00090054425853756257696E0101000000
      A9070000070043617074696F6E0010005442584974656D4D61726B436C656172
      0102000000AD070000070043617074696F6EAE070000040048696E7400100065
      63546F67676C65466F6375734D617000000D005442584974656D57696E4D6170
      0101000000B3070000070043617074696F6E000C00656346696E64496E547265
      6500001000656346696E64496E547265654E65787400001000656346696E6449
      6E547265655072657600000A006563547265654E65787400000A006563547265
      655072657600000E006563526564756365426C616E6B73000014005442584974
      656D45526564756365426C616E6B730102000000B8070000070043617074696F
      6EB9070000040048696E74000B00656353706C69744C65667400000C00656353
      706C6974526967687400001400656346696E644E65787457697468457874656E
      6400001400656346696E645072657657697468457874656E6400000C00656346
      696E64496E4C69737400001000656346696E64496E4C6973744E657874000010
      00656346696E64496E4C6973745072657600000F005442584974656D436C6970
      46696E640101000000E4070000070043617074696F6E00120054425853657061
      7261746F724974656D363400001200544258536570617261746F724974656D36
      35000013005442584974656D5472656546696E6446696E640101000000E50700
      00070043617074696F6E001200544258536570617261746F724974656D363600
      000E005442584974656D56616C46696E640101000000E6070000070043617074
      696F6E001200544258536570617261746F724974656D363700000E0054425849
      74656D4F757446696E640101000000E7070000070043617074696F6E00090050
      6F7075705472656500000F005442584974656D5472656546696E640101000000
      E8070000070043617074696F6E0011005442584974656D54726565457870616E
      640101000000E9070000070043617074696F6E0013005442584974656D547265
      65436F6C6C617073650101000000EA070000070043617074696F6E000D005469
      6D65724175746F5361766500000E005442584974656D4D6163726F323900000E
      005442584974656D4D6163726F323800000E005442584974656D4D6163726F32
      3700000E005442584974656D4D6163726F323600000E005442584974656D4D61
      63726F323500000E005442584974656D4D6163726F323400000E005442584974
      656D4D6163726F323300000E005442584974656D4D6163726F323200000E0054
      42584974656D4D6163726F323100000E005442584974656D4D6163726F323000
      000E005442584974656D4D6163726F313900000E005442584974656D4D616372
      6F313800000E005442584974656D4D6163726F313700000E005442584974656D
      4D6163726F313600000E005442584974656D4D6163726F313500000E00544258
      4974656D4D6163726F313400000E005442584974656D4D6163726F313300000E
      005442584974656D4D6163726F313200000E005442584974656D4D6163726F31
      3100000E005442584974656D4D6163726F313000000E005442584974656D4D61
      63726F33300000090061634D6163726F31300000090061634D6163726F313100
      00090061634D6163726F31320000090061634D6163726F31330000090061634D
      6163726F31340000090061634D6163726F31350000090061634D6163726F3136
      0000090061634D6163726F31370000090061634D6163726F3138000009006163
      4D6163726F31390000090061634D6163726F32300000090061634D6163726F32
      310000090061634D6163726F32320000090061634D6163726F32330000090061
      634D6163726F32340000090061634D6163726F32350000090061634D6163726F
      32360000090061634D6163726F32370000090061634D6163726F323800000900
      61634D6163726F32390000090061634D6163726F333000000800547265654669
      6E64000018005442584974656D5472656546696E64436F7079546F5461620101
      00000015080000070043617074696F6E0014005442584974656D547265654669
      6E64436C656172010100000016080000070043617074696F6E00190054425849
      74656D5472656546696E64436F7079546F436C69700101000000170800000700
      43617074696F6E0017005442584974656D5472656546696E64436F6C6C617073
      65010100000018080000070043617074696F6E0015005442584974656D547265
      6546696E64457870616E64010100000019080000070043617074696F6E001200
      544258536570617261746F724974656D3639000018005442584974656D547265
      6546696E64457870616E6443757201010000001A080000070043617074696F6E
      0010005442584974656D43747846696E64494401020000001B08000007004361
      7074696F6E1C080000040048696E74000C00656354726565506172656E740000
      11006563547265654E65787442726F7468657200001100656354726565507265
      7642726F74686572000011005442584974656D4D61726B476F4C617374010200
      00002E080000070043617074696F6E2F080000040048696E7400120054425849
      74656D52756E4F70656E46696C65010200000030080000070043617074696F6E
      31080000040048696E74001D005442584974656D5472656546696E64436F7079
      546F436C69704E6F6465010100000038080000070043617074696F6E00120054
      4258536570617261746F724974656D3731000013005442584974656D436C6970
      436F7079546F4564010100000044080000070043617074696F6E001500544258
      4974656D436C6970436F7079546F436C69700101000000450800000700436170
      74696F6E001200544258536570617261746F724974656D373200001700656352
      65706C61636553656C46726F6D436C6970416C6C00000B006163526572656164
      4F7574000014006563546F67676C65466F63757350726F6A65637400000E0054
      42584974656D57696E50726F6A010100000051080000070043617074696F6E00
      18006563546F67676C65466F6375734D6173746572536C61766500000D006563
      546F67676C65536C61766500000700656352756C657200000D00544258497465
      6D4F52756C6572010200000060080000070043617074696F6E61080000040048
      696E74001400656353706C6974566965777356657274486F727A000014006563
      53706C6974536C61766556657274486F727A000008006563476F746F426B0000
      0D005442584974656D426B476F746F01020000006C080000070043617074696F
      6E6D080000040048696E740010005462785375626D656E75436F6C6F72730101
      000000F2080000040048696E74001400496D6167654C697374436F6C6F725265
      63656E74000012005442584974656D437478416464436F6C6F7201020000007C
      080000070043617074696F6E7D080000040048696E7400120054425853657061
      7261746F724974656D3735000013005442584974656D546162416464546F5072
      6F6A010100000080080000070043617074696F6E0012006563546F67676C6546
      6F637573436C69707300000F005462784974656D57696E436C69707301010000
      0084080000070043617074696F6E000A00506F707570436C6970730000130054
      42584974656D436C697073416464546578740101000000850800000700436170
      74696F6E0010005442584974656D436C69707345646974010100000086080000
      070043617074696F6E001200544258536570617261746F724974656D37360000
      0F005442584974656D436C697073446972010100000088080000070043617074
      696F6E0009004F445F5377617463680000090053445F53776174636800000900
      6563536D617274486C000015005442584974656D426B44726F70506F72746162
      6C65010200000093080000070043617074696F6E95080000040048696E740010
      00656344726F70506F727461626C65426B00001200544258536570617261746F
      724974656D3738000010006563476F746F506F727461626C65426B0000150054
      42584974656D426B476F746F506F727461626C65010200000096080000070043
      617074696F6E97080000040048696E740011005442584974656D52756E4E756D
      436F6E760102000000A0080000070043617074696F6EA1080000040048696E74
      00120065634E756D65726963436F6E76657274657200000F006563496E64656E
      744C696B6531737400001200544258536570617261746F724974656D33330000
      15005442584974656D45496E64656E744C696B653173740102000000A4080000
      070043617074696F6EA5080000040048696E7400120054425853657061726174
      6F724974656D373900000C00496D6167654C697374467470000008004C697374
      504C6F6700000F00506F707570506C7567696E734C6F67000012005442584974
      656D504C6F67436F707953656C0101000000B0080000070043617074696F6E00
      12005442584974656D504C6F67436F7079416C6C0101000000B1080000070043
      617074696F6E001200544258536570617261746F724974656D38310000110054
      42584974656D504C6F6744656C6574650101000000B208000007004361707469
      6F6E0010005442584974656D504C6F67436C6561720101000000B30800000700
      43617074696F6E001200544258536570617261746F724974656D383200000F00
      5442584974656D504C6F6746696E640101000000B4080000070043617074696F
      6E001A005442584974656D43747850617374654E6F4375724368616E67650102
      000000B7080000070043617074696F6EB8080000040048696E74001200544258
      536570617261746F724974656D383000000900506C7567696E41435000010100
      0000040048696E7400000D00656343656E7465724C696E6573000008004C6973
      745461627301030000006E0B00001200436F6C756D6E735B305D2E4361707469
      6F6ED60800001200436F6C756D6E735B315D2E43617074696F6E6D0B00001200
      436F6C756D6E735B325D2E43617074696F6E0011006563546F67676C65466F63
      75735461627300000E005462784974656D57696E546162730101000000D90800
      00070043617074696F6E0011005442585375626D656E75506C7567696E730101
      000000DA080000070043617074696F6E001200544258536570617261746F7249
      74656D3834000019005442584974656D4F4564697453796E506C7567696E7349
      6E690102000000DB080000070043617074696F6EDC080000040048696E740011
      005442584974656D504C6F675361766541730101000000DD0800000700436170
      74696F6E0016005442584974656D5461624D6F7665546F57696E646F77010100
      0000DE080000070043617074696F6E0016005442584974656D5461624F70656E
      496E57696E646F770101000000DF080000070043617074696F6E001300544258
      4974656D5353656C427261636B6574730102000000ED08000007004361707469
      6F6EEE080000040048696E7400110050726F70734D616E616765725072696E74
      0000090054696D657254726565000010006563436F6C6C61707365506172656E
      74000014006563436F6C6C61707365576974684E657374656400001000656353
      70546F5461624C656164696E67000013005442584974656D455370546F546162
      4C6561640102000000FF080000070043617074696F6E00090000040048696E74
      0016006563546F67676C654C696E65436F6D6D656E74416C7400001C00544258
      4974656D45546F67676C654C696E65436F6D6D656E74416C7401020000000509
      0000070043617074696F6E06090000040048696E740018005442584974656D43
      74785061737465546F436F6C756D6E3101020000000909000007004361707469
      6F6E0A090000040048696E74000E006563436F6D6D616E64734C697374000016
      005442584974656D48656C70436F6D6D616E644C69737401020000000D090000
      070043617074696F6E10090000040048696E74000D00656350726F6A6563744C
      697374000017005462785375626D656E754974656D4361726574734F70730101
      00000017090000070043617074696F6E0014005442584974656D436172657473
      52656D6F766532010100000018090000070043617074696F6E00140054425849
      74656D43617265747352656D6F76653101010000001909000007004361707469
      6F6E001200544258536570617261746F724974656D3931000019005442584974
      656D43617265747346726F6D53656C436C65617201010000001A090000070043
      617074696F6E0019005442584974656D43617265747346726F6D53656C526967
      687401010000001B090000070043617074696F6E0018005442584974656D4361
      7265747346726F6D53656C4C65667401010000001C090000070043617074696F
      6E001200544258536570617261746F724974656D393200001700544258497465
      6D436172657473457874446F776E456E6401010000001D090000070043617074
      696F6E0015005442584974656D4361726574734578745570456E640101000000
      1E090000070043617074696F6E0018005442584974656D436172657473457874
      446F776E5061676501010000001F090000070043617074696F6E001600544258
      4974656D43617265747345787455705061676501010000002009000007004361
      7074696F6E0018005442584974656D436172657473457874446F776E4C696E65
      010100000021090000070043617074696F6E0016005442584974656D43617265
      747345787455704C696E65010100000022090000070043617074696F6E001200
      544258536570617261746F724974656D393300001B005442584974656D436172
      65747346726F6D4D61726B73436C65617201010000003F090000070043617074
      696F6E001B005442584974656D43617265747346726F6D4D61726B7352696768
      74010100000040090000070043617074696F6E001A005442584974656D436172
      65747346726F6D4D61726B734C65667401010000004109000007004361707469
      6F6E000E005442584974656D45436F6C756D6E01020000004209000007004361
      7074696F6E43090000040048696E74000C00656345646974436F6C756D6E0000
      0A0065634465647570416C6C00000F006563446564757041646A6163656E7400
      001200544258536570617261746F724974656D3934000010005442584974656D
      454465647570416C6C010100000044090000070043617074696F6E0012005442
      58536570617261746F724974656D3835000012005442584974656D4261724465
      647570416C6C010100000045090000070043617074696F6E000E006563416C69
      676E57697468536570000015005442584974656D546162546F67676C6553706C
      697401010000004E090000070043617074696F6E0012006563546F67676C6553
      686F7747726F757032000016005442584974656D54726565436F6C6C61707365
      416C6C010100000059090000070043617074696F6E0014005442584974656D54
      726565457870616E64416C6C01010000005A090000070043617074696F6E0011
      005442584974656D547265654C6576656C3201010000005B0900000700436170
      74696F6E0011005442584974656D547265654C6576656C3501010000005C0900
      00070043617074696F6E0011005442584974656D547265654C6576656C340101
      0000005D090000070043617074696F6E0011005442584974656D547265654C65
      76656C3301010000005E090000070043617074696F6E00120054425853657061
      7261746F724974656D3936000013005442585375626D656E75547265654C6576
      656C01010000005F090000070043617074696F6E0011005442584974656D5472
      65654C6576656C36010100000060090000070043617074696F6E001100544258
      4974656D547265654C6576656C39010100000061090000070043617074696F6E
      0011005442584974656D547265654C6576656C38010100000062090000070043
      617074696F6E0011005442584974656D547265654C6576656C37010100000063
      090000070043617074696F6E000E006563526576657273654C696E6573000012
      00544258536570617261746F724974656D363800000F005442584974656D4552
      657665727365010100000066090000070043617074696F6E000E006563536875
      66666C654C696E657300000F005442584974656D4553687566666C6501010000
      006D090000070043617074696F6E000700746255736572310101000000870900
      00070043617074696F6E00070074625573657232010100000088090000070043
      617074696F6E0007007462557365723301010000008909000007004361707469
      6F6E001200544258536570617261746F724974656D393700000D005442584974
      656D545573657233010100000093090000070043617074696F6E000D00544258
      4974656D545573657232010100000092090000070043617074696F6E000D0054
      42584974656D545573657231010100000091090000070043617074696F6E0012
      005442585375626D656E75546F6F6C6261727301010000008D09000007004361
      7074696F6E0010005442584974656D4F546F6F6C6261723301010000008E0900
      00070043617074696F6E0010005442584974656D4F546F6F6C62617232010100
      00008F090000070043617074696F6E0010005442584974656D4F546F6F6C6261
      7231010100000090090000070043617074696F6E001100656345787472616374
      447570734361736500001300656345787472616374447570734E6F4361736500
      001100544258536570617261746F724974656D37000018005442584974656D45
      457874726163744475704E6F4361736501010000009A09000007004361707469
      6F6E0016005442584974656D4545787472616374447570436173650101000000
      9B090000070043617074696F6E000D0065634E6F6E5072696E744F6666000010
      0065634E6F6E5072696E7453706163657300000D0065634E6F6E5072696E7445
      6F6C00000E0065634E6F6E5072696E74426F7468000012005442585375626D65
      6E754E6F6E5072696E740101000000BC090000070043617074696F6E00120054
      4258536570617261746F724974656D3938000011005442584974656D4F4E5072
      696E74416C6C0101000000BD090000070043617074696F6E0011005442584974
      656D4F4E5072696E74456F6C0101000000BE090000070043617074696F6E0014
      005442584974656D4F4E5072696E745370616365730101000000BF0900000700
      43617074696F6E000C00506F7075705573657254423100000E00544258497465
      6D557365725462310101000000C1090000070043617074696F6E000C00506F70
      75705573657254423200000E005442584974656D557365725442320101000000
      C2090000070043617074696F6E000C00506F7075705573657254423300000E00
      5442584974656D557365725442330101000000C3090000070043617074696F6E
      0018005442584974656D4374785061737465426B6D6B4C696E65730101000000
      C5090000070043617074696F6E0017005442584974656D437478506173746541
      73436F6C756D6E0101000000C6090000070043617074696F6E00120054425853
      6570617261746F724974656D3939000018005442584974656D4F4E5072696E74
      456F6C44657461696C730101000000C7090000070043617074696F6E00140065
      634E6F6E5072696E74456F6C44657461696C73000011005442584974656D4F48
      6964654974656D730102000000CA090000070043617074696F6ECE0900000400
      48696E74001300544258536570617261746F724974656D313030000012005442
      584974656D4F4564697453796E496E690102000000DB09000007004361707469
      6F6EDC090000040048696E7400110061634F70656E427953656C656374696F6E
      00000E00496D6167654C697374557365723100000E00496D6167654C69737455
      7365723200000E00496D6167654C697374557365723300000C00544258446F63
      6B4C6566743100000D00544258446F636B52696768743100000E00544258446F
      636B426F74746F6D3100000C0053706C69747465724C65667400000D0053706C
      6974746572526967687400000E0053706C6974746572426F74746F6D00000F00
      5374617475734974656D4C657865720101000000F3090000040048696E74000E
      005374617475734974656D456E64730101000000F2090000040048696E74000D
      005374617475734974656D456E630101000000F1090000040048696E74000F00
      5374617475734974656D4361726574000013005370544258536570617261746F
      724974656D31000013005370544258536570617261746F724974656D32000013
      005370544258536570617261746F724974656D33000013005370544258536570
      617261746F724974656D3400000E005374617475734974656D43686172010100
      0000F4090000040048696E740013005370544258536570617261746F72497465
      6D3500000C005374617475734974656D524F0101000000F5090000040048696E
      740013005370544258536570617261746F724974656D3600000E005374617475
      734974656D577261700101000000F6090000040048696E740013005370544258
      536570617261746F724974656D37000011005374617475734974656D53656C4D
      6F64650101000000F7090000040048696E740013005370544258536570617261
      746F724974656D3800000E005374617475734974656D5A6F6F6D0102000000F0
      090000070043617074696F6EF9090000040048696E7400140053705442585365
      70617261746F724974656D3130000014005370544258536570617261746F7249
      74656D313100000E005374617475734974656D48696E74000016005442584D52
      554C6973744974656D46526563656E7473000013005442584D52554C69737449
      74656D5F53657373000014005370544258536570617261746F724974656D3132
      000014005370544258536570617261746F724974656D31330000140053705442
      58536570617261746F724974656D3134000012005442584D52554C6973744974
      656D464E657700000F005442584974656D42617250436C69700102000000430A
      0000070043617074696F6E480A0000040048696E740011005442585375626D65
      6E754D61726B6572730101000000510A0000070043617074696F6E000F005442
      585375626D656E75426B4F70730101000000520A0000070043617074696F6E00
      14005442585375626D656E75426B506F727461626C650101000000530A000007
      0043617074696F6E0014005370544258536570617261746F724974656D313600
      0014005370544258536570617261746F724974656D313900000E00506F707570
      466F6C644C6576656C000014005370544258536570617261746F724974656D32
      33000010005442584974656D556E666F6C64416C6C0101000000590A00000700
      43617074696F6E000E005442584974656D466F6C64416C6C01010000005A0A00
      00070043617074696F6E001200544258536570617261746F724974656D383700
      0011005442584974656D556E666F6C644C696E6501010000005B0A0000070043
      617074696F6E0017005442584974656D466F6C644E656172657374426C6F636B
      01010000005C0A0000070043617074696F6E0013005442584974656D466F6C64
      53656C426C6F636B01010000005D0A0000070043617074696F6E001200544258
      536570617261746F724974656D3839000016005442584974656D466F6C645261
      6E676573496E53656C01010000005E0A0000070043617074696F6E0018005442
      584974656D556E666F6C6452616E676573496E53656C01010000005F0A000007
      0043617074696F6E001200544258536570617261746F724974656D3838000011
      005442584974656D466F6C64506172656E740101000000600A00000700436170
      74696F6E0015005442584974656D466F6C64576974684E657374656401010000
      00610A0000070043617074696F6E0013005442585375626D656E75466F6C644C
      6576656C0101000000620A0000070043617074696F6E0011005442584974656D
      466F6C644C6576656C320101000000630A0000070043617074696F6E00110054
      42584974656D466F6C644C6576656C330101000000640A000007004361707469
      6F6E0011005442584974656D466F6C644C6576656C340101000000650A000007
      0043617074696F6E0011005442584974656D466F6C644C6576656C3501010000
      00660A0000070043617074696F6E0011005442584974656D466F6C644C657665
      6C360101000000670A0000070043617074696F6E0011005442584974656D466F
      6C644C6576656C370101000000680A0000070043617074696F6E001100544258
      4974656D466F6C644C6576656C380101000000690A0000070043617074696F6E
      0011005442584974656D466F6C644C6576656C3901010000006A0A0000070043
      617074696F6E0010005462784974656D54616252656C6F616401010000006B0A
      0000070043617074696F6E000C0054696D65724D696E696D6170000014005370
      544258536570617261746F724974656D3138000013005442585375626D656E75
      4974656D5072696E740101000000740A0000070043617074696F6E000D005462
      784974656D4D656E75585801020000007F0A0000070043617074696F6E800A00
      00040048696E74000C005462784974656D4D656E75580102000000810A000007
      0043617074696F6E820A0000040048696E740016005442585375626D656E7549
      74656D50726F6A656374730101000000890A0000070043617074696F6E001200
      5442584974656D50726F6A41646446696C6501010000008B0A00000700436170
      74696F6E000F005442584974656D50726F6A4F70656E01010000008C0A000007
      0043617074696F6E0019005442585375626D656E754974656D50726F6A526563
      656E747301010000008D0A0000070043617074696F6E0017005442584D52554C
      6973744974656D5F50726F6A6563747300001400537054425853657061726174
      6F724974656D3234000016005442584974656D50726F6A526563656E74436C65
      617201010000008E0A0000070043617074696F6E000F005442584974656D5072
      6F6A476F746F01010000008F0A0000070043617074696F6E000E005442584974
      656D50726F6A4E65770101000000900A0000070043617074696F6E0010005462
      784974656D437478546F6F6C3136000010005462784974656D437478546F6F6C
      3135000010005462784974656D437478546F6F6C313400001000546278497465
      6D437478546F6F6C3133000016005442584974656D50726F6A416464416C6C46
      696C65730101000000B50A0000070043617074696F6E000F005462784974656D
      50726F6A536176650101000000BC0A0000070043617074696F6E000900706C43
      6F6E736F6C65000009006564436F6E736F6C65000014006563546F67676C6546
      6F637573436F6E736F6C65000011005442584974656D57696E436F6E736F6C65
      0101000000C20A0000070043617074696F6E001500507974686F6E475549496E
      7075744F75747075743100000D00507974686F6E456E67696E653100000B004D
      656D6F436F6E736F6C6500000C00507974686F6E4D6F64756C65000010005462
      784974656D48656C7050794469720102000000C60A0000070043617074696F6E
      C70A0000040048696E740012005462784974656D52756E536E69707065747301
      02000000C90A0000070043617074696F6ED00A0000040048696E740014005370
      544258536570617261746F724974656D3236000014005462784974656D52756E
      4E6577536E69707065740102000000CA0A0000070043617074696F6ECF0A0000
      040048696E74000B0053445F536E697070657473000011005374617475734974
      656D54616273697A650101000000D10A0000040048696E740011005462784974
      656D54726565536F727465640101000000D20A0000070043617074696F6E000F
      00506F70757050616E656C5469746C65000014005462784974656D50616E656C
      5469746C654261720101000000D30A0000070043617074696F6E001A00546278
      4974656D50616E656C5469746C6553686F7752696768740101000000D40A0000
      070043617074696F6E0018005462784974656D50616E656C5469746C6553686F
      774F75740101000000D50A0000070043617074696F6E0019005462784974656D
      50616E656C5469746C6553686F774C6566740101000000D60A00000700436170
      74696F6E0014005370544258536570617261746F724974656D32380000140053
      70544258536570617261746F724974656D3239000010005462784974656D5769
      6E53706C6974560101000000DA0A0000070043617074696F6E00100054627849
      74656D57696E53706C6974480101000000DB0A0000070043617074696F6E0011
      005462784974656D57696E50726F6A5072650101000000DE0A00000700436170
      74696F6E0013006563546F67676C6550726F6A50726576696577000014005462
      785375626D656E75437478506C7567696E730101000000E30A00000700436170
      74696F6E0013005462785375626D656E7550726F6A546F6F6C730101000000EC
      0A0000070043617074696F6E001200506F70757050726576696577456469746F
      72000010005462784974656D50726553656C65637400000E005462784974656D
      507265436F7079000014005370544258536570617261746F724974656D333000
      0013005462784974656D5072655A6F6F6D4F7468657200001100546278497465
      6D5072655A6F6F6D313030000010005462784974656D5072655A6F6F6D373500
      0010005462784974656D5072655A6F6F6D3530000010005462784974656D5072
      655A6F6F6D323500000E005462784974656D5072654564697400001400537054
      4258536570617261746F724974656D3331000010005442585375626D656E7547
      726F7570730101000000F50A0000040048696E74000E005462784974656D4772
      6F757032480101000000F60A0000070043617074696F6E000E00546278497465
      6D47726F757032560101000000F70A0000070043617074696F6E000F00546278
      4974656D47726F75704F6E650101000000F80A0000070043617074696F6E000E
      005462784974656D47726F757033480101000000F90A0000070043617074696F
      6E000E005462784974656D47726F757033560101000000FA0A00000700436170
      74696F6E0011005462784974656D47726F757036477269640101000000FB0A00
      00070043617074696F6E0011005462784974656D47726F757034477269640101
      000000FC0A0000070043617074696F6E000E005462784974656D47726F757034
      560101000000FD0A0000070043617074696F6E000E005462784974656D47726F
      757034480101000000FE0A0000070043617074696F6E0010005462784974656D
      47726F7570317032560101000000FF0A0000070043617074696F6E0015005442
      585375626D656E754974656D546F47726F75700101000000000B000007004361
      7074696F6E0012005462784974656D546F47726F757050726576010100000007
      0B0000070043617074696F6E0012005462784974656D546F47726F75704E6578
      740101000000080B0000070043617074696F6E000F005462784974656D546F47
      726F7570360101000000010B0000070043617074696F6E000F00546278497465
      6D546F47726F7570350101000000020B0000070043617074696F6E000F005462
      784974656D546F47726F7570340101000000030B0000070043617074696F6E00
      0F005462784974656D546F47726F7570330101000000040B0000070043617074
      696F6E000F005462784974656D546F47726F7570320101000000050B00000700
      43617074696F6E000F005462784974656D546F47726F7570310101000000060B
      0000070043617074696F6E0014005370544258536570617261746F724974656D
      323000001E005442584974656D546162436C6F73654F7468657273416C6C4772
      6F7570730101000000090B0000070043617074696F6E0016006163436C6F7365
      4F7468657273416C6C47726F75707300000D004C697374426F6F6B6D61726B73
      0103000000110B00001200436F6C756D6E735B305D2E43617074696F6E120B00
      001200436F6C756D6E735B315D2E43617074696F6E130B00001200436F6C756D
      6E735B325D2E43617074696F6E000E005462784974656D57696E426B6D6B0101
      000000140B0000070043617074696F6E0016006563546F67676C65466F637573
      426F6F6B6D61726B7300000E00496D6167654C69737449636F6E7300000D0054
      62784974656D57696E4674700101000000190B0000070043617074696F6E0012
      005462784974656D57696E4578706C6F72657201010000001A0B000007004361
      7074696F6E0016005442584974656D546162436C6F7365526967687465720101
      0000001F0B0000070043617074696F6E0015005442584974656D546162436C6F
      73654C65667465720101000000200B0000070043617074696F6E001200656352
      65706C616365496E50726F6A656374000014005462784974656D53526570496E
      50726F6A6563740102000000210B0000070043617074696F6E220B0000040048
      696E74001200656350726576696577416374696F6E4E657700000F0061635365
      7475704C657865724E6577000014006563506167655365747570416374696F6E
      4E6577000012005442584974656D454361736552616E646F6D0102000000320B
      0000070043617074696F6E330B0000040048696E740014005442584974656D42
      61724361736552616E646F6D0101000000340B0000070043617074696F6E0009
      00616352657374617274000016005442584974656D5472656546696E64507265
      7669657701010000003A0B0000070043617074696F6E0014005442584974656D
      454465647570416C6C4F72696701010000003B0B0000070043617074696F6E00
      110065634465647570416C6C416E644F72696700000D00656345787472616374
      556E6971000013005442584974656D4545787472616374556E69710101000000
      400B0000070043617074696F6E0016005442584974656D426172446564757041
      6E644F7269670101000000410B0000070043617074696F6E0010005462784974
      656D5461625361766541730101000000440B0000070043617074696F6E000E00
      5462784974656D546162536176650101000000450B0000070043617074696F6E
      0014005370544258536570617261746F724974656D3135000010005442585375
      626D656E754164646F6E730101000000480B0000070043617074696F6E001300
      5462784974656D4164646F6E735570646174650101000000490B000007004361
      7074696F6E0011005462784974656D4164646F6E735361766501010000004A0B
      0000070043617074696F6E0011005462784974656D4164646F6E734564697401
      010000004B0B0000070043617074696F6E0013005462784974656D4164646F6E
      7352656D6F766501010000004C0B0000070043617074696F6E00140054627849
      74656D4164646F6E73496E7374616C6C01010000004D0B000007004361707469
      6F6E0012005442585375626D656E75457874546F6F6C730101000000640B0000
      070043617074696F6E000D005462784974656D546F6F6C313600000D00546278
      4974656D546F6F6C313500000D005462784974656D546F6F6C313400000D0054
      62784974656D546F6F6C313300000D005462784974656D546F6F6C313200000D
      005462784974656D546F6F6C313100000D005462784974656D546F6F6C313000
      000C005462784974656D546F6F6C3900000C005462784974656D546F6F6C3800
      000C005462784974656D546F6F6C3700000C005462784974656D546F6F6C3600
      000C005462784974656D546F6F6C3500000C005462784974656D546F6F6C3400
      000C005462784974656D546F6F6C3300000C005462784974656D546F6F6C3200
      000C005462784974656D546F6F6C3100001500506F707570537461747573456E
      63436F6E76657274000013005462784974656D4164646F6E73436F6E66696701
      010000006B0B0000070043617074696F6E0014005442584974656D436C697044
      656C65746553656C01010000006C0B0000070043617074696F6E001400537054
      4258536570617261746F724974656D3137000010005442585375626D656E7553
      4D61726B730101000000710B0000070043617074696F6E000F00546278497465
      6D546162436F6C6F720101000000720B0000070043617074696F6E0010005462
      784974656D47726F7570317032480101000000730B0000070043617074696F6E
      00090054627853706C6974320000}
  end
  object TimerHint: TTimer
    Enabled = False
    Interval = 7000
    OnTimer = TimerHintTimer
    Left = 344
    Top = 360
  end
  object PopupTabContext: TSpTBXPopupMenu
    OnPopup = PopupTabContextPopup
    Left = 400
    Top = 304
    object TBXItemTabClose: TSpTBXItem
      Caption = 'Close tab'
      OnClick = TBXItemTabCloseClick
    end
    object TBXItemTabCloseOthers: TSpTBXItem
      Caption = 'Close others'
      OnClick = TBXItemTabCloseOthersClick
    end
    object TBXItemTabCloseOthersAllGroups: TSpTBXItem
      Caption = 'Close others (all groups)'
      OnClick = TBXItemTabCloseOthersAllGroupsClick
    end
    object TBXItemTabCloseLefter: TSpTBXItem
      Caption = 'Close left tabs'
      OnClick = TBXItemTabCloseLefterClick
    end
    object TBXItemTabCloseRighter: TSpTBXItem
      Caption = 'Close right tabs'
      OnClick = TBXItemTabCloseRighterClick
    end
    object SpTBXSeparatorItem15: TSpTBXSeparatorItem
    end
    object TbxItemTabSave: TSpTBXItem
      Caption = 'Save'
      OnClick = TbxItemTabSaveClick
    end
    object TbxItemTabSaveAs: TSpTBXItem
      Caption = 'Save as...'
      OnClick = TbxItemTabSaveAsClick
    end
    object TbxItemTabReload: TSpTBXItem
      Caption = 'Reopen tab'
      OnClick = TbxItemTabReloadClick
    end
    object TBXSeparatorItem42: TSpTBXSeparatorItem
    end
    object TBXItemTabToggleSplit: TSpTBXItem
      Caption = 'Split this tab'
      OnClick = TBXItemTabToggleSplitClick
    end
    object TBXItemTabMoveToWindow: TSpTBXItem
      Caption = 'Move to new window'
      OnClick = TBXItemTabMoveToWindowClick
    end
    object TBXItemTabOpenInWindow: TSpTBXItem
      Caption = 'Open in new window'
      OnClick = TBXItemTabOpenInWindowClick
    end
    object TBXSubmenuItemToGroup: TSpTBXSubmenuItem
      Caption = 'Move to group'
      OnPopup = TBXSubmenuItemToGroupPopup
      object TbxItemToGroup1: TSpTBXItem
        Tag = 1
        Caption = '1'
        OnClick = TbxItemToGroup1Click
      end
      object TbxItemToGroup2: TSpTBXItem
        Tag = 2
        Caption = '2'
        OnClick = TbxItemToGroup1Click
      end
      object TbxItemToGroup3: TSpTBXItem
        Tag = 3
        Caption = '3'
        OnClick = TbxItemToGroup1Click
      end
      object TbxItemToGroup4: TSpTBXItem
        Tag = 4
        Caption = '4'
        OnClick = TbxItemToGroup1Click
      end
      object TbxItemToGroup5: TSpTBXItem
        Tag = 5
        Caption = '5'
        OnClick = TbxItemToGroup1Click
      end
      object TbxItemToGroup6: TSpTBXItem
        Tag = 6
        Caption = '6'
        OnClick = TbxItemToGroup1Click
      end
      object SpTBXSeparatorItem20: TSpTBXSeparatorItem
      end
      object TbxItemToGroupNext: TSpTBXItem
        Tag = -1
        Caption = 'Next'
        OnClick = TbxItemToGroup1Click
      end
      object TbxItemToGroupPrev: TSpTBXItem
        Tag = -2
        Caption = 'Previous'
        OnClick = TbxItemToGroup1Click
      end
    end
    object TBXSeparatorItem41: TSpTBXSeparatorItem
    end
    object TBXItemTabCopyFN: TSpTBXItem
      Caption = 'Copy filename to clipboard'
      OnClick = TBXItemTabCopyFNClick
    end
    object TBXItemTabCopyFull: TSpTBXItem
      Caption = 'Copy full path to clipboard'
      OnClick = TBXItemTabCopyFullClick
    end
    object TBXItemTabCopyDir: TSpTBXItem
      Caption = 'Copy dir path to clipboard'
      OnClick = TBXItemTabCopyDirClick
    end
    object TBXSeparatorItem75: TSpTBXSeparatorItem
    end
    object TBXItemTabAddToProj: TSpTBXItem
      Caption = 'Add to project'
      OnClick = TBXItemTabAddToProjClick
    end
    object TbxItemTabColor: TSpTBXItem
      Caption = 'Set tab color...'
      OnClick = TBXItemTabColorMiscClick
    end
  end
  object ImageListCloseBtn: TImageList
    AllocBy = 5
    Height = 14
    Width = 14
    Left = 361
    Top = 193
    Bitmap = {
      494C01010400090004000E000E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000380000002A0000000100200000000000C024
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004080000040
      8000000000000000000000000000004080000040800000000000000000000000
      0000000000000000000000000000000000000040800000408000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000408000004080000040
      8000004080000040800000408000004080000040800000408000004080000000
      0000000000000000000000000000000000000000000000000000004080000040
      8000004080000000000000408000004080000040800000000000000000000000
      0000000000000000000000000000000000000040800000408000000000000000
      0000000000000000000000000000000000000000000000000000000000000040
      8000004080000000000000000000000000000040800000408000000000000000
      0000000000000000000000408000004080000040800000408000004080000040
      8000004080000040800000408000004080000040800000408000004080000000
      0000000000000000000000000000000000000000000000000000000000000040
      8000004080000040800000408000004080000000000000000000000000000000
      0000000000000000000000000000000000000040800000408000000000000000
      0000000000000000000000000000000000000000000000000000000000000040
      8000004080000040800000000000004080000040800000408000000000000000
      0000000000000000000000408000004080000000000000000000000000000000
      0000000000000000000000000000000000000000000000408000004080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000004080000040800000408000000000000000000000000000000000000000
      0000000000000040800000000000000000000040800000408000000000000000
      0000004080000000000000000000000000000000000000000000000000000000
      0000004080000040800000408000004080000040800000000000000000000000
      0000000000000000000000408000004080000000000000000000000000000000
      0000000000000000000000000000000000000000000000408000004080000000
      0000000000000000000000408000004080000000000000000000000000000040
      8000004080000040800000408000004080000000000000000000000000000000
      0000004080000040800000000000000000000040800000408000000000000000
      0000004080000040800000000000000000000000000000000000000000000000
      0000000000000040800000408000004080000000000000000000000000000000
      0000000000000000000000408000004080000000000000000000000000000000
      0000000000000000000000000000000000000000000000408000004080000000
      0000000000000000000000408000004080000040800000000000004080000040
      8000004080000000000000408000004080000040800000000000000000000040
      8000004080000040800000408000004080000040800000408000004080000040
      8000004080000040800000408000000000000000000000000000000000000000
      0000004080000040800000408000004080000040800000000000000000000000
      0000000000000000000000408000004080000000000000000000000000000000
      0000000000000000000000000000000000000000000000408000004080000000
      0000000000000000000000000000004080000040800000408000004080000040
      8000000000000000000000000000004080000040800000000000000000000000
      0000004080000040800000000000000000000040800000408000000000000000
      0000004080000040800000000000000000000000000000000000000000000040
      8000004080000040800000000000004080000040800000408000000000000000
      0000000000000000000000408000004080000000000000000000000000000000
      0000000000000000000000000000000000000000000000408000004080000000
      0000000000000000000000000000000000000040800000408000004080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000040800000000000000000000040800000408000000000000000
      0000004080000000000000000000000000000000000000000000000000000040
      8000004080000000000000000000000000000040800000408000000000000000
      0000000000000000000000408000004080000000000000000000000000000000
      0000000000000000000000000000000000000000000000408000004080000000
      0000000000000000000000000000004080000040800000408000004080000040
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000040800000408000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000408000004080000040
      8000004080000040800000408000004080000040800000408000004080000000
      0000000000000000000000408000004080000040800000000000004080000040
      8000004080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000040800000408000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000408000004080000040800000408000004080000040
      8000004080000040800000408000004080000040800000408000004080000000
      0000000000000000000000408000004080000000000000000000000000000040
      8000004080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000040800000408000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000380000002A0000000100010000000000500100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFF00FFFFFFFFCE7F3F00
      FFFC001FC47F3F00E73C001FE0FF3F00E23CFF9FF1FB3700F07CFF9CE0F33300
      F8FCFF9C44600100F07CFF9E0E733300E23CFF9F1FFB3700E73CFF9E0FFF3F00
      FFFC001C47FF3F00FFFC001CE7FF3F00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00
      00000000000000000000000000000000000000000000}
  end
  object OD_Session: TTntOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 585
    Top = 333
  end
  object SD_Session: TTntSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 609
    Top = 333
  end
  object TimerLoad: TTimer
    Interval = 1100
    OnTimer = TimerLoadTimer
    Left = 368
    Top = 360
  end
  object TimerSel: TTimer
    Enabled = False
    Interval = 60
    OnTimer = TimerSelTimer
    Left = 392
    Top = 360
  end
  object PopupOut: TSpTBXPopupMenu
    OnPopup = PopupOutPopup
    Left = 424
    Top = 304
    object TBXItemOutNav: TSpTBXItem
      Caption = 'Navigate'
      OnClick = TBXItemOutNavClick
    end
    object TBXSeparatorItem18: TSpTBXSeparatorItem
    end
    object TBXItemOutCopySel: TSpTBXItem
      Caption = 'Copy selected'
      OnClick = TBXItemOutCopySelClick
    end
    object TBXItemOutCopyAll: TSpTBXItem
      Caption = 'Copy all'
      OnClick = TBXItemOutCopyAllClick
    end
    object TBXSeparatorItem32: TSpTBXSeparatorItem
    end
    object TBXItemOutDelSel: TSpTBXItem
      Caption = 'Delete selected'
      OnClick = TBXItemOutDelSelClick
    end
    object TBXItemOutDelNonparsed: TSpTBXItem
      Caption = 'Delete non-parsable'
      OnClick = TBXItemOutDelNonparsedClick
    end
    object TBXItemOutClear: TSpTBXItem
      Caption = 'Clear'
      OnClick = TBXItemOutClearClick
    end
    object TBXSeparatorItem67: TSpTBXSeparatorItem
    end
    object TBXItemOutFind: TSpTBXItem
      Caption = 'Find...'
      OnClick = TBXItemOutFindClick
    end
  end
  object ImageListStatus: TImageList
    AllocBy = 15
    Left = 336
    Top = 192
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080000000800000008000000080000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031587E001948
      7300295C860034719B00327FAA002682B1001946700019467000194670001946
      7100194671003A61860000000000000000000000000000000000AEAEAE009D9D
      9D00ADADAD00BABABA00C0C0C000BEBEBE009B9B9B009B9B9B009B9B9B009B9B
      9B009B9B9B00B6B6B60000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000089520E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010436C00A9ED
      FF00A4E7FC009CDFF80094D6F4008BCFF00066BCDE0066C2E40066CAEC0066D2
      F40066DAFC0010436C00000000000000000000000000000000009F9F9F00F2F2
      F200EFEFEF00ECECEC00E7E7E700E4E4E400D9D9D900DCDCDC00E0E0E000E4E4
      E400E7E7E7009F9F9F0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000844E0D009A641C00915E
      1A009A7F5D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000023638D005599
      B900579BBD005B9FC1005DA0C200599DBF00448CAE00448FB1004494B900449A
      C20049A7CD0021618C0000000000000000000000000000000000B4B4B400C6C6
      C600C8C8C800CACACA00CACACA00C9C9C900BFBFBF00C0C0C000C4C4C400C7C7
      C700CECECE00B3B3B30000000000000000000000000080000000800000008000
      00008000000080000000800000000000000085500E00BEA57000B2813400B281
      3400A06D2700814E100000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000000000000000
      00000000000000000000000000000000000000000000000000002A7EAE00A5E9
      FF009CDFFA0094D7F4008CCEEE0083C7E8005EB4D7005EBADE005EC2E8005ECA
      F20062D6FB00277BAA0000000000000000000000000000000000B5B5B500F1F1
      F100ECECEC00E8E8E800E4E4E400E0E0E000D5D5D500D8D8D800DCDCDC00E0E0
      E000E6E6E600B4B4B40000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000844E0D00AC783200C19C
      6400AC783200956220009A7F5D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002890C4005599
      B900579BBD005B9FC1005DA0C200599DBF00448CAE00448FB1004494B900449A
      C20049A7CD00238BBF0000000000000000000000000000000000B5B5B500C6C6
      C600C8C8C800CACACA00CACACA00C9C9C900BFBFBF00C0C0C000C4C4C400C7C7
      C700CECECE00B4B4B40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000875211000000
      000000000000C5AE7E0087521100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002793C800A5E9
      FF009CDFFA0094D7F4008CCEEE0083C7E8005EB4D7005EBADE005EC2E8005ECA
      F20062D6FB00228EC30000000000000000000000000000000000B4B4B400F1F1
      F100ECECEC00E8E8E800E4E4E400E0E0E000D5D5D500D8D8D800DCDCDC00E0E0
      E000E6E6E600B3B3B30000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000087521100000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      00000000000000000000000000000000000000000000000000002793C8005599
      B900579BBD005B9FC1005DA0C200599DBF00448CAE00448FB1004494B900449A
      C20049A7CD00228EC30000000000000000000000000000000000B4B4B400C6C6
      C600C8C8C800CACACA00CACACA00C9C9C900BFBFBF00C0C0C000C4C4C400C7C7
      C700CECECE00B3B3B30000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000089520E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002793C800A5E9
      FF009CDFFA0094D7F4008CCEEE0083C7E8005EB4D7005EBADE005EC2E8005ECA
      F20062D6FB00228EC30000000000000000000000000000000000B5B5B500F1F1
      F100ECECEC00E8E8E800E4E4E400E0E0E000D5D5D500D8D8D800DCDCDC00E0E0
      E000E6E6E600B4B4B40000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000844E0D009A641C00915E
      1A009A7F5D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000049A4D000238D
      C200085E8900157DB10003679900076D9E00005783000367990001649600085E
      89001681B600459FCC0000000000000000000000000000000000C8C8C800A9A9
      A900A9A9A900BDBDBD00ADADAD00B1B1B100A3A3A300ADADAD00AAAAAA00A9A9
      A900A9A9A900BFBFBF0000000000000000000000000080000000800000008000
      00008000000080000000800000000000000085500E00BEA57000B2813400B281
      3400A06D2700814E100000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D68950076BADB000164940000000000000000000164940078BCDD000D68
      9500000000000000000000000000000000000000000000000000000000000000
      0000B0B0B000D9D9D900AAAAAA000000000000000000AAAAAA00DADADA00B0B0
      B000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000844E0D00AC783200C19C
      6400AC783200956220009A7F5D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A77A60084C9E6000665940000000000000000000665940084C9E6001A77
      A600000000000000000000000000000000000000000000000000000000000000
      0000BBBBBB00E0E0E000AAAAAA000000000000000000AAAAAA00E0E0E000BBBB
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000875211000000
      000000000000C5AE7E0087521100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000378FBC007CC8E700388AB2001F6E96001F6E9600388AB2007CC8E700378F
      BC00000000000000000000000000000000000000000000000000000000000000
      0000BBBBBB00DFDFDF00BEBEBE00B8B8B800B8B8B800BEBEBE00DFDFDF00BBBB
      BB00000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000087521100000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      00007CB9D8002F95C7007ECDEB006AB5D1006AB5D1007ECDEB002F95C7007CB9
      D800000000000000000000000000000000000000000000000000000000000000
      000000000000BBBBBB00E2E2E200D5D5D500D5D5D500E2E2E200BBBBBB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007EBEDD00409ECE002993C8002993C800409ECE007EBEDD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BEBEBE00BBBBBB00BBBBBB00BEBEBE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFC03FFFFFC0038003FFFFF81FFFFFC007
      C003FFFFC003E00FFFFFF81FFFFFF01FC003FFFFC003F83FFFFFF81FFFFFFC7F
      F803FFFFC003FEFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003C003FFDFFFFF
      C003C003FF87FFFFC003C0038103803FC003C003FF81FFFFC003C003FFD9FFFF
      C003C003807D800FC003C003FFDFFFFFC003C003FF87FFFFC003C0038103803F
      F18FF18FFF81FFFFF18FF18FFFD9FFFFF00FF00F807D800FF00FF81FFFFFFFFF
      F81FFC3FFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupFind: TSpTBXPopupMenu
    OnPopup = PopupFindPopup
    Left = 368
    Top = 332
    object TBXItemTreeFindNav: TSpTBXItem
      Caption = 'Navigate'
      OnClick = TBXItemTreeFindNavClick
    end
    object TBXItemTreeFindPreview: TSpTBXItem
      Caption = 'Preview'
      OnClick = TBXItemTreeFindPreviewClick
    end
    object TBXSeparatorItem69: TSpTBXSeparatorItem
    end
    object TBXItemTreeFindExpand: TSpTBXItem
      Caption = 'Expand all'
      OnClick = TBXItemTreeFindExpandClick
    end
    object TBXItemTreeFindExpandCur: TSpTBXItem
      Caption = 'Expand current node'
      OnClick = TBXItemTreeFindExpandCurClick
    end
    object TBXItemTreeFindCollapse: TSpTBXItem
      Caption = 'Collapse all'
      OnClick = TBXItemTreeFindCollapseClick
    end
    object TBXSeparatorItem36: TSpTBXSeparatorItem
    end
    object TBXItemTreeFindCopyToClipNode: TSpTBXItem
      Caption = 'Copy selected node'
      OnClick = TBXItemTreeFindCopyToClipNodeClick
    end
    object TBXItemTreeFindCopyToClip: TSpTBXItem
      Caption = 'Copy selected search'
      OnClick = TBXItemTreeFindCopyToClipClick
    end
    object TBXItemTreeFindCopyToTab: TSpTBXItem
      Caption = 'Copy selected search to tab'
      OnClick = TBXItemTreeFindCopyToTabClick
    end
    object TBXSeparatorItem37: TSpTBXSeparatorItem
    end
    object TBXItemTreeFindClear: TSpTBXItem
      Caption = 'Clear'
      OnClick = TBXItemTreeFindClearClick
    end
    object TBXSeparatorItem65: TSpTBXSeparatorItem
    end
    object TBXItemTreeFindFind: TSpTBXItem
      Caption = 'Find...'
      OnClick = TBXItemTreeFindFindClick
    end
  end
  object PopupZoom: TSpTBXPopupMenu
    Left = 344
    Top = 332
    object TBXItemZSet25: TSpTBXItem
      Tag = 25
      Caption = '25%'
      OnClick = TBXItemZSet25Click
    end
    object TBXItemZSet50: TSpTBXItem
      Tag = 50
      Caption = '50%'
      OnClick = TBXItemZSet25Click
    end
    object TBXItemZSet75: TSpTBXItem
      Tag = 75
      Caption = '75%'
      OnClick = TBXItemZSet25Click
    end
    object TBXItemZSet100: TSpTBXItem
      Tag = 100
      Caption = '100%'
      OnClick = TBXItemZSet25Click
    end
    object TBXItemZSet150: TSpTBXItem
      Tag = 150
      Caption = '150%'
      OnClick = TBXItemZSet25Click
    end
    object TBXItemZSet200: TSpTBXItem
      Tag = 200
      Caption = '200%'
      OnClick = TBXItemZSet25Click
    end
    object TBXItemZSet300: TSpTBXItem
      Tag = 300
      Caption = '300%'
      OnClick = TBXItemZSet25Click
    end
    object TBXItemZOther: TSpTBXItem
      Caption = 'Custom zoom...'
      OnClick = TBXItemZOtherClick
    end
  end
  object PopupClip: TSpTBXPopupMenu
    OnPopup = PopupClipPopup
    Left = 320
    Top = 332
    object TBXItemClipCopyToEd: TSpTBXItem
      Caption = 'Copy to editor'
      OnClick = TBXItemClipCopyToEdClick
    end
    object TBXItemClipCopyToClip: TSpTBXItem
      Caption = 'Copy to clipboard'
      OnClick = TBXItemClipCopyToClipClick
    end
    object TBXSeparatorItem72: TSpTBXSeparatorItem
    end
    object TBXItemClipDeleteSel: TSpTBXItem
      Caption = 'Delete selected'
      OnClick = TBXItemClipDeleteSelClick
    end
    object TBXItemClipDeleteAll: TSpTBXItem
      Caption = 'Delete all'
      OnClick = TBXItemClipDeleteAllClick
    end
    object TBXSeparatorItem64: TSpTBXSeparatorItem
    end
    object TBXItemClipFind: TSpTBXItem
      Caption = 'Find...'
      OnClick = TBXItemClipFindClick
    end
  end
  object TimerBrackets: TTimer
    Enabled = False
    Interval = 60
    OnTimer = TimerBracketsTimer
    Left = 416
    Top = 360
  end
  object ecMacroRec: TecMacroRecorder
    Left = 545
    Top = 262
  end
  object PropsManagerKeys: TPropsManager
    Template = TemplateEditor
    IniSection = 'Template'
    UseRegistry = False
    Properties.Strings = (
      'SyntKeyMapping.AsString'
      '')
    Left = 392
    Top = 276
  end
  object PopupValidate: TSpTBXPopupMenu
    OnPopup = PopupValidatePopup
    Left = 392
    Top = 332
    object TBXItemValNav: TSpTBXItem
      Caption = 'Navigate'
      OnClick = TBXItemValNavClick
    end
    object TBXSeparatorItem56: TSpTBXSeparatorItem
    end
    object TBXItemValCopySel: TSpTBXItem
      Caption = 'Copy selected'
      OnClick = TBXItemValCopySelClick
    end
    object TBXItemValCopyAll: TSpTBXItem
      Caption = 'Copy all'
      OnClick = TBXItemValCopyAllClick
    end
    object TBXSeparatorItem57: TSpTBXSeparatorItem
    end
    object TBXItemValClear: TSpTBXItem
      Caption = 'Clear'
      OnClick = TBXItemValClearClick
    end
    object TBXSeparatorItem66: TSpTBXSeparatorItem
    end
    object TBXItemValFind: TSpTBXItem
      Caption = 'Find...'
      OnClick = TBXItemValFindClick
    end
  end
  object PopupTree: TSpTBXPopupMenu
    OnPopup = PopupTreePopup
    Left = 417
    Top = 330
    object TBXItemTreeExpand: TSpTBXItem
      Caption = 'Expand'
      OnClick = TBXItemTreeExpandClick
    end
    object TBXItemTreeExpandAll: TSpTBXItem
      Caption = 'Expand all'
      OnClick = TBXItemTreeExpandAllClick
    end
    object TBXItemTreeCollapse: TSpTBXItem
      Caption = 'Collapse'
      OnClick = TBXItemTreeCollapseClick
    end
    object TBXItemTreeCollapseAll: TSpTBXItem
      Caption = 'Collapse all'
      OnClick = TBXItemTreeCollapseAllClick
    end
    object TBXSubmenuTreeLevel: TSpTBXSubmenuItem
      Caption = 'Collapse level'
      object TBXItemTreeLevel2: TSpTBXItem
        Caption = '2'
        OnClick = TBXItemTreeLevel2Click
      end
      object TBXItemTreeLevel3: TSpTBXItem
        Caption = '3'
        OnClick = TBXItemTreeLevel3Click
      end
      object TBXItemTreeLevel4: TSpTBXItem
        Caption = '4'
        OnClick = TBXItemTreeLevel4Click
      end
      object TBXItemTreeLevel5: TSpTBXItem
        Caption = '5'
        OnClick = TBXItemTreeLevel5Click
      end
      object TBXItemTreeLevel6: TSpTBXItem
        Caption = '6'
        OnClick = TBXItemTreeLevel6Click
      end
      object TBXItemTreeLevel7: TSpTBXItem
        Caption = '7'
        OnClick = TBXItemTreeLevel7Click
      end
      object TBXItemTreeLevel8: TSpTBXItem
        Caption = '8'
        OnClick = TBXItemTreeLevel8Click
      end
      object TBXItemTreeLevel9: TSpTBXItem
        Caption = '9'
        OnClick = TBXItemTreeLevel9Click
      end
    end
    object TBXSeparatorItem96: TSpTBXSeparatorItem
    end
    object TBXItemTreeFind: TSpTBXItem
      Caption = 'Find...'
      OnClick = TBXItemTreeFindClick
    end
    object TbxItemTreeSorted: TSpTBXItem
      Caption = 'Sorted'
      OnClick = TbxItemTreeSortedClick
    end
  end
  object TimerAutoSave: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = TimerAutoSaveTimer
    Left = 441
    Top = 362
  end
  object ImageListColorRecent: TImageList
    AllocBy = 10
    Height = 14
    Width = 40
    Left = 385
    Top = 194
    Bitmap = {
      494C010101000400040028000E00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000A00000000E00000001002000000000000023
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080E0E00080E0E00080E0
      E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0E00080E0
      E00080E0E0008080000080800000808000008080000080800000808000008080
      0000808000008080000080800000808000008080000080800000F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CAA600F0CA
      A600F0CAA600F0CAA600F0CAA600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000A00000000E0000000100010000000000180100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
  end
  object PopupClips: TSpTBXPopupMenu
    Left = 448
    Top = 304
    object TBXItemClipsAddText: TSpTBXItem
      Caption = 'Add clip...'
      OnClick = TBXItemClipsAddTextClick
    end
    object TBXItemClipsEdit: TSpTBXItem
      Caption = 'Edit this file'
      OnClick = TBXItemClipsEditClick
    end
    object TBXSeparatorItem76: TSpTBXSeparatorItem
    end
    object TBXItemClipsDir: TSpTBXItem
      Caption = 'Browse folder'
      OnClick = TBXItemClipsDirClick
    end
  end
  object OD_Swatch: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 585
    Top = 358
  end
  object SD_Swatch: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 609
    Top = 358
  end
  object ImageListFtp: TImageList
    Height = 10
    Width = 10
    Left = 409
    Top = 194
    Bitmap = {
      494C01010100040004000A000A00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000280000000A00000001002000000000004006
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C040
      4000C0404000C040400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0404000C040
      4000C0404000C0404000C0404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0404000C040
      4000C0404000C0404000C0404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0404000C040
      4000C0404000C0404000C0404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C040
      4000C0404000C040400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000280000000A0000000100010000000000500000000000000000000000
      000000000000000000000000FFFFFF00FFC0000000000000FFC0000000000000
      E3C0000000000000C1C0000000000000C1C0000000000000C1C0000000000000
      E3C0000000000000FFC0000000000000FFC0000000000000FFC0000000000000
      00000000000000000000000000000000000000000000}
  end
  object PopupPluginsLog: TSpTBXPopupMenu
    OnPopup = PopupPluginsLogPopup
    Left = 440
    Top = 332
    object TBXItemPLogCopySel: TSpTBXItem
      Caption = 'Copy selected'
      OnClick = TBXItemPLogCopySelClick
    end
    object TBXItemPLogCopyAll: TSpTBXItem
      Caption = 'Copy all'
      OnClick = TBXItemPLogCopyAllClick
    end
    object TBXSeparatorItem81: TSpTBXSeparatorItem
    end
    object TBXItemPLogDelete: TSpTBXItem
      Caption = 'Delete selected'
      OnClick = TBXItemPLogDeleteClick
    end
    object TBXItemPLogClear: TSpTBXItem
      Caption = 'Clear'
      OnClick = TBXItemPLogClearClick
    end
    object TBXSeparatorItem82: TSpTBXSeparatorItem
    end
    object TBXItemPLogFind: TSpTBXItem
      Caption = 'Find...'
      OnClick = TBXItemPLogFindClick
    end
    object TBXItemPLogSaveAs: TSpTBXItem
      Caption = 'Save as...'
      OnClick = TBXItemPLogSaveAsClick
    end
  end
  object PluginACP: TAutoCompletePopup
    ShowWhenNone = True
    Images = ImgListTree
    Delay = 200
    Styles = SyntStyles
    FixedItemHeight = True
    ColumnSpace = 4
    Options = [aoFormatted]
    OnAfterComplete = PluginACPAfterComplete
    OnDefineStartPos = PluginAcpDefineStartPos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    DropDownCount = 10
    IntegralHeight = True
    ItemHeight = 15
    AutoSelect = False
    BgColor = clWindow
    CommandID = 650
    Width = 400
    Height = 200
    ToolHint.Left = 0
    ToolHint.Top = 0
    ToolHint.Width = 150
    ToolHint.Height = 0
    ToolHint.Active = True
    ToolHint.Styles = SyntStyles
    ToolHint.Formatted = True
    Controls = <>
    OnShow = PluginACPShow
    Left = 456
    Top = 232
  end
  object PropsManagerPrint: TPropsManager
    Template = TemplateEditor
    IniSection = 'Template'
    UseRegistry = False
    Properties.Strings = (
      'ecSyntPrinter.ColorMode'
      'ecSyntPrinter.Copies'
      'ecSyntPrinter.Footer'
      'ecSyntPrinter.Header'
      'ecSyntPrinter.MarginLeft'
      'ecSyntPrinter.MarginTop'
      'ecSyntPrinter.MarginRight'
      'ecSyntPrinter.MarginBottom'
      'ecSyntPrinter.Options'
      'ecSyntPrinter.Orientation'
      'ecSyntPrinter.LineNumbersPos'
      'ecSyntPrinter.PrintSelection'
      'ecSyntPrinter.Units'
      '')
    Left = 416
    Top = 276
  end
  object TimerTree: TTimer
    Enabled = False
    OnTimer = TimerTreeTimer
    Left = 465
    Top = 362
  end
  object PopupUserTB1: TSpTBXPopupMenu
    Left = 393
    Top = 386
    object TBXItemUserTb1: TSpTBXItem
      Caption = 'Customize toolbar...'
      OnClick = TBXItemOToolbar1Click
    end
  end
  object PopupUserTB2: TSpTBXPopupMenu
    Left = 417
    Top = 386
    object TBXItemUserTB2: TSpTBXItem
      Caption = 'Customize toolbar...'
      OnClick = TBXItemOToolbar2Click
    end
  end
  object PopupUserTB3: TSpTBXPopupMenu
    Left = 441
    Top = 386
    object TBXItemUserTB3: TSpTBXItem
      Caption = 'Customize toolbar...'
      OnClick = TBXItemOToolbar3Click
    end
  end
  object ImageListUser1: TPngImageList
    AllocBy = 40
    PngImages = <>
    Left = 358
    Top = 98
  end
  object ImageListUser2: TPngImageList
    AllocBy = 40
    PngImages = <>
    Left = 382
    Top = 98
  end
  object ImageListUser3: TPngImageList
    AllocBy = 40
    PngImages = <>
    Left = 406
    Top = 98
  end
  object PopupFoldLevel: TSpTBXPopupMenu
    Left = 470
    Top = 304
    object TBXItemUnfoldAll: TSpTBXItem
      Caption = 'Expand all'
      OnClick = TBXItemUnfoldAllClick
    end
    object TBXItemFoldAll: TSpTBXItem
      Caption = 'Collapse all'
      OnClick = TBXItemFoldAllClick
    end
    object TBXSeparatorItem87: TSpTBXSeparatorItem
    end
    object TBXItemUnfoldLine: TSpTBXItem
      Caption = 'Expand current block'
      OnClick = TBXItemUnfoldLineClick
    end
    object TBXItemFoldNearestBlock: TSpTBXItem
      Caption = 'Collapse/expand nearest block'
      OnClick = TBXItemFoldNearestBlockClick
    end
    object TBXItemFoldSelBlock: TSpTBXItem
      Caption = 'Collapse selection'
      OnClick = TBXItemFoldSelBlockClick
    end
    object TBXSeparatorItem89: TSpTBXSeparatorItem
    end
    object TBXItemFoldRangesInSel: TSpTBXItem
      Caption = 'Collapse ranges in selection'
      OnClick = TBXItemFoldRangesInSelClick
    end
    object TBXItemUnfoldRangesInSel: TSpTBXItem
      Caption = 'Expand ranges in selection'
      OnClick = TBXItemUnfoldRangesInSelClick
    end
    object TBXSeparatorItem88: TSpTBXSeparatorItem
    end
    object TBXItemFoldParent: TSpTBXItem
      Caption = 'Collapse parent block'
      Visible = False
      OnClick = TBXItemFoldParentClick
    end
    object TBXItemFoldWithNested: TSpTBXItem
      Caption = 'Collapse/expand current and nested blocks'
      Visible = False
      OnClick = TBXItemFoldWithNestedClick
    end
    object SpTBXSeparatorItem23: TSpTBXSeparatorItem
    end
    object TBXSubmenuFoldLevel: TSpTBXSubmenuItem
      Caption = 'Fold level'
      object TBXItemFoldLevel2: TSpTBXItem
        Caption = '2'
        OnClick = TBXItemFoldLevel2Click
      end
      object TBXItemFoldLevel3: TSpTBXItem
        Caption = '3'
        OnClick = TBXItemFoldLevel3Click
      end
      object TBXItemFoldLevel4: TSpTBXItem
        Caption = '4'
        OnClick = TBXItemFoldLevel4Click
      end
      object TBXItemFoldLevel5: TSpTBXItem
        Caption = '5'
        OnClick = TBXItemFoldLevel5Click
      end
      object TBXItemFoldLevel6: TSpTBXItem
        Caption = '6'
        OnClick = TBXItemFoldLevel6Click
      end
      object TBXItemFoldLevel7: TSpTBXItem
        Caption = '7'
        OnClick = TBXItemFoldLevel7Click
      end
      object TBXItemFoldLevel8: TSpTBXItem
        Caption = '8'
        OnClick = TBXItemFoldLevel8Click
      end
      object TBXItemFoldLevel9: TSpTBXItem
        Caption = '9'
        OnClick = TBXItemFoldLevel9Click
      end
    end
  end
  object TimerMinimap: TTimer
    Enabled = False
    OnTimer = TimerMinimapTimer
    Left = 489
    Top = 362
  end
  object PythonGUIInputOutput1: TPythonGUIInputOutput
    OnSendUniData = PythonGUIInputOutput1SendUniData
    OnReceiveUniData = PythonGUIInputOutput1ReceiveUniData
    UnicodeIO = True
    RawOutput = False
    Output = MemoConsole
    Left = 487
    Top = 200
  end
  object PythonEngine1: TPythonEngine
    DllName = 'python33.dll'
    APIVersion = 1013
    RegVersion = '3.3'
    FatalAbort = False
    FatalMsgDlg = False
    UseLastKnownVersion = False
    OnBeforeLoad = PythonEngine1BeforeLoad
    IO = PythonGUIInputOutput1
    PyFlags = [pfUnicode, pfIgnoreEnvironmentFlag]
    OnAfterInit = PythonEngine1AfterInit
    Left = 463
    Top = 200
  end
  object PythonModule: TPythonModule
    Engine = PythonEngine1
    OnInitialization = PythonModuleInitialization
    ModuleName = 'sw_api'
    Errors = <>
    Left = 511
    Top = 200
  end
  object SD_Snippets: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 609
    Top = 382
  end
  object PopupPanelTitle: TSpTBXPopupMenu
    OnPopup = PopupPanelTitlePopup
    Left = 465
    Top = 386
    object TbxItemPanelTitleBar: TSpTBXItem
      Caption = 'Show title bar (docked)'
      OnClick = TbxItemPanelTitleBarClick
    end
    object SpTBXSeparatorItem28: TSpTBXSeparatorItem
    end
    object TbxItemPanelTitleShowLeft: TSpTBXItem
      Caption = 'Show structure/project panel'
      Action = ecShowTree
    end
    object TbxItemPanelTitleShowOut: TSpTBXItem
      Caption = 'Show output panel'
      Action = ecShowOut
    end
    object TbxItemPanelTitleShowRight: TSpTBXItem
      Caption = 'Show clipboard/minimap panel'
      Action = ecShowClip
    end
  end
  object PopupPreviewEditor: TSpTBXPopupMenu
    OnPopup = PopupPreviewEditorPopup
    Left = 487
    Top = 389
    object TbxItemPreCopy: TSpTBXItem
      OnClick = TbxItemPreCopyClick
    end
    object TbxItemPreSelect: TSpTBXItem
      OnClick = TbxItemPreSelectClick
    end
    object SpTBXSeparatorItem30: TSpTBXSeparatorItem
    end
    object TbxItemPreZoom25: TSpTBXItem
      RadioItem = True
      OnClick = TbxItemPreZoom25Click
    end
    object TbxItemPreZoom50: TSpTBXItem
      RadioItem = True
      OnClick = TbxItemPreZoom50Click
    end
    object TbxItemPreZoom75: TSpTBXItem
      RadioItem = True
      OnClick = TbxItemPreZoom75Click
    end
    object TbxItemPreZoom100: TSpTBXItem
      RadioItem = True
      OnClick = TbxItemPreZoom100Click
    end
    object TbxItemPreZoomOther: TSpTBXItem
      RadioItem = True
      OnClick = TbxItemPreZoomOtherClick
    end
    object SpTBXSeparatorItem31: TSpTBXSeparatorItem
    end
    object TbxItemPreEdit: TSpTBXItem
      OnClick = TbxItemPreEditClick
    end
  end
  object ImageListIcons: TPngImageList
    AllocBy = 40
    Height = 8
    Width = 8
    PngImages = <>
    Left = 438
    Top = 98
  end
  object PopupStatusEncConvert: TSpTBXPopupMenu
    OnPopup = PopupStatusEncConvertPopup
    Left = 296
    Top = 336
  end
end
