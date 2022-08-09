#Region
#AutoIt3Wrapper_Outfile=向日葵登录器.exe
#AutoIt3Wrapper_Outfile_x64=向日葵登录器x64.exe
#AutoIt3Wrapper_UseX64=n
#EndRegion
#include <EditConstants.au3>
Global Const $BS_GROUPBOX = 0x00000007
Global Const $BS_BOTTOM = 0x00000800
Global Const $BS_CENTER = 0x00000300
Global Const $BS_DEFPUSHBUTTON = 0x00000001
Global Const $BS_LEFT = 0x00000100
Global Const $BS_MULTILINE = 0x00002000
Global Const $BS_PUSHBOX = 0x0000000A
Global Const $BS_PUSHLIKE = 0x00001000
Global Const $BS_RIGHT = 0x00000200
Global Const $BS_RIGHTBUTTON = 0x00000020
Global Const $BS_TOP = 0x00000400
Global Const $BS_VCENTER = 0x00000C00
Global Const $BS_FLAT = 0x00008000
Global Const $BS_ICON = 0x00000040
Global Const $BS_BITMAP = 0x00000080
Global Const $BS_NOTIFY = 0x00004000
Global Const $BS_SPLITBUTTON = 0x0000000C
Global Const $BS_DEFSPLITBUTTON = 0x0000000D
Global Const $BS_COMMANDLINK = 0x0000000E
Global Const $BS_DEFCOMMANDLINK = 0x0000000F
Global Const $BCSIF_GLYPH = 0x00000001
Global Const $BCSIF_IMAGE = 0x00000002
Global Const $BCSIF_STYLE = 0x00000004
Global Const $BCSIF_SIZE = 0x00000008
Global Const $BCSS_NOSPLIT = 0x00000001
Global Const $BCSS_STRETCH = 0x00000002
Global Const $BCSS_ALIGNLEFT = 0x00000004
Global Const $BCSS_IMAGE = 0x00000008
Global Const $BUTTON_IMAGELIST_ALIGN_LEFT = 0x00000000
Global Const $BUTTON_IMAGELIST_ALIGN_RIGHT = 0x00000001
Global Const $BUTTON_IMAGELIST_ALIGN_TOP = 0x00000002
Global Const $BUTTON_IMAGELIST_ALIGN_BOTTOM = 0x00000003
Global Const $BUTTON_IMAGELIST_ALIGN_CENTER = 0x00000004
Global Const $BS_3STATE = 0x00000005
Global Const $BS_AUTO3STATE = 0x00000006
Global Const $BS_AUTOCHECKBOX = 0x00000003
Global Const $BS_CHECKBOX = 0x00000002
Global Const $BS_RADIOBUTTON = 0x00000004
Global Const $BS_AUTORADIOBUTTON = 0x00000009
Global Const $BS_OWNERDRAW = 0x0000000B
Global Const $GUI_SS_DEFAULT_BUTTON = 0x00000000
Global Const $GUI_SS_DEFAULT_CHECKBOX = 0x00000000
Global Const $GUI_SS_DEFAULT_GROUP = 0x00000000
Global Const $GUI_SS_DEFAULT_RADIO = 0x00000000
Global Const $BCM_FIRST = 0x00001600
Global Const $BCM_GETIDEALSIZE = ($BCM_FIRST + 0x00000001)
Global Const $BCM_GETIMAGELIST = ($BCM_FIRST + 0x00000003)
Global Const $BCM_GETNOTE = ($BCM_FIRST + 0x0000000A)
Global Const $BCM_GETNOTELENGTH = ($BCM_FIRST + 0x0000000B)
Global Const $BCM_GETSPLITINFO = ($BCM_FIRST + 0x00000008)
Global Const $BCM_GETTEXTMARGIN = ($BCM_FIRST + 0x00000005)
Global Const $BCM_SETDROPDOWNSTATE = ($BCM_FIRST + 0x00000006)
Global Const $BCM_SETIMAGELIST = ($BCM_FIRST + 0x00000002)
Global Const $BCM_SETNOTE = ($BCM_FIRST + 0x00000009)
Global Const $BCM_SETSHIELD = ($BCM_FIRST + 0x0000000C)
Global Const $BCM_SETSPLITINFO = ($BCM_FIRST + 0x00000007)
Global Const $BCM_SETTEXTMARGIN = ($BCM_FIRST + 0x00000004)
Global Const $BM_CLICK = 0x000000F5
Global Const $BM_GETCHECK = 0x000000F0
Global Const $BM_GETIMAGE = 0x000000F6
Global Const $BM_GETSTATE = 0x000000F2
Global Const $BM_SETCHECK = 0x000000F1
Global Const $BM_SETDONTCLICK = 0x000000F8
Global Const $BM_SETIMAGE = 0x000000F7
Global Const $BM_SETSTATE = 0x000000F3
Global Const $BM_SETSTYLE = 0x000000F4
Global Const $BCN_FIRST = -0x000004E2
Global Const $BCN_DROPDOWN = ($BCN_FIRST + 0x00000002)
Global Const $BCN_HOTITEMCHANGE = ($BCN_FIRST + 0x00000001)
Global Const $BN_CLICKED = 0x00000000
Global Const $BN_PAINT = 0x00000001
Global Const $BN_HILITE = 0x00000002
Global Const $BN_UNHILITE = 0x00000003
Global Const $BN_DISABLE = 0x00000004
Global Const $BN_DOUBLECLICKED = 0x00000005
Global Const $BN_SETFOCUS = 0x00000006
Global Const $BN_KILLFOCUS = 0x00000007
Global Const $BN_PUSHED = $BN_HILITE
Global Const $BN_UNPUSHED = $BN_UNHILITE
Global Const $BN_DBLCLK = $BN_DOUBLECLICKED
Global Const $BST_CHECKED = 0x00000001
Global Const $BST_INDETERMINATE = 0x00000002
Global Const $BST_UNCHECKED = 0x00000000
Global Const $BST_FOCUS = 0x00000008
Global Const $BST_PUSHED = 0x00000004
Global Const $BST_DONTCLICK = 0x00000080
Global Const $GUI_EVENT_CLOSE = -0x00000003
Global Const $GUI_EVENT_MINIMIZE = -0x00000004
Global Const $GUI_EVENT_RESTORE = -0x00000005
Global Const $GUI_EVENT_MAXIMIZE = -0x00000006
Global Const $GUI_EVENT_PRIMARYDOWN = -0x00000007
Global Const $GUI_EVENT_PRIMARYUP = -0x00000008
Global Const $GUI_EVENT_SECONDARYDOWN = -0x00000009
Global Const $GUI_EVENT_SECONDARYUP = -0x0000000A
Global Const $GUI_EVENT_MOUSEMOVE = -0x0000000B
Global Const $GUI_EVENT_RESIZED = -0x0000000C
Global Const $GUI_EVENT_DROPPED = -0x0000000D
Global Const $GUI_RUNDEFMSG = "GUI_RUNDEFMSG"
Global Const $GUI_AVISTOP = 0x00000000
Global Const $GUI_AVISTART = 0x00000001
Global Const $GUI_AVICLOSE = 0x00000002
Global Const $GUI_CHECKED = 0x00000001
Global Const $GUI_INDETERMINATE = 0x00000002
Global Const $GUI_UNCHECKED = 0x00000004
Global Const $GUI_DROPACCEPTED = 0x00000008
Global Const $GUI_NODROPACCEPTED = 0x00001000
Global Const $GUI_ACCEPTFILES = $GUI_DROPACCEPTED
Global Const $GUI_SHOW = 0x00000010
Global Const $GUI_HIDE = 0x00000020
Global Const $GUI_ENABLE = 0x00000040
Global Const $GUI_DISABLE = 0x00000080
Global Const $GUI_FOCUS = 0x00000100
Global Const $GUI_NOFOCUS = 0x00002000
Global Const $GUI_DEFBUTTON = 0x00000200
Global Const $GUI_EXPAND = 0x00000400
Global Const $GUI_ONTOP = 0x00000800
Global Const $GUI_FONTITALIC = 0x00000002
Global Const $GUI_FONTUNDER = 0x00000004
Global Const $GUI_FONTSTRIKE = 0x00000008
Global Const $GUI_DOCKAUTO = 0x00000001
Global Const $GUI_DOCKLEFT = 0x00000002
Global Const $GUI_DOCKRIGHT = 0x00000004
Global Const $GUI_DOCKHCENTER = 0x00000008
Global Const $GUI_DOCKTOP = 0x00000020
Global Const $GUI_DOCKBOTTOM = 0x00000040
Global Const $GUI_DOCKVCENTER = 0x00000080
Global Const $GUI_DOCKWIDTH = 0x00000100
Global Const $GUI_DOCKHEIGHT = 0x00000200
Global Const $GUI_DOCKSIZE = 0x00000300
Global Const $GUI_DOCKMENUBAR = 0x00000220
Global Const $GUI_DOCKSTATEBAR = 0x00000240
Global Const $GUI_DOCKALL = 0x00000322
Global Const $GUI_DOCKBORDERS = 0x00000066
Global Const $GUI_GR_CLOSE = 0x00000001
Global Const $GUI_GR_LINE = 0x00000002
Global Const $GUI_GR_BEZIER = 0x00000004
Global Const $GUI_GR_MOVE = 0x00000006
Global Const $GUI_GR_COLOR = 0x00000008
Global Const $GUI_GR_RECT = 0x0000000A
Global Const $GUI_GR_ELLIPSE = 0x0000000C
Global Const $GUI_GR_PIE = 0x0000000E
Global Const $GUI_GR_DOT = 0x00000010
Global Const $GUI_GR_PIXEL = 0x00000012
Global Const $GUI_GR_HINT = 0x00000014
Global Const $GUI_GR_REFRESH = 0x00000016
Global Const $GUI_GR_PENSIZE = 0x00000018
Global Const $GUI_GR_NOBKCOLOR = -0x00000002
Global Const $GUI_BKCOLOR_DEFAULT = -0x00000001
Global Const $GUI_BKCOLOR_TRANSPARENT = -0x00000002
Global Const $GUI_BKCOLOR_LV_ALTERNATE = 0xFE000000
Global Const $GUI_WS_EX_PARENTDRAG = 0x00100000
Global Const $LBS_NOTIFY = 0x00000001
Global Const $LBS_SORT = 0x00000002
Global Const $LBS_NOREDRAW = 0x00000004
Global Const $LBS_MULTIPLESEL = 0x00000008
Global Const $LBS_OWNERDRAWFIXED = 0x00000010
Global Const $LBS_OWNERDRAWVARIABLE = 0x00000020
Global Const $LBS_HASSTRINGS = 0x00000040
Global Const $LBS_USETABSTOPS = 0x00000080
Global Const $LBS_NOINTEGRALHEIGHT = 0x00000100
Global Const $LBS_MULTICOLUMN = 0x00000200
Global Const $LBS_WANTKEYBOARDINPUT = 0x00000400
Global Const $LBS_EXTENDEDSEL = 0x00000800
Global Const $LBS_DISABLENOSCROLL = 0x00001000
Global Const $LBS_NODATA = 0x00002000
Global Const $LBS_NOSEL = 0x00004000
Global Const $LBS_COMBOBOX = 0x00008000
Global Const $LBS_STANDARD = 0x00000003
Global Const $LB_ERR = -0x00000001
Global Const $LB_ERRATTRIBUTE = -0x00000003
Global Const $LB_ERRREQUIRED = -0x00000004
Global Const $LB_ERRSPACE = -0x00000002
Global Const $LB_ADDSTRING = 0x00000180
Global Const $LB_INSERTSTRING = 0x00000181
Global Const $LB_DELETESTRING = 0x00000182
Global Const $LB_SELITEMRANGEEX = 0x00000183
Global Const $LB_RESETCONTENT = 0x00000184
Global Const $LB_SETSEL = 0x00000185
Global Const $LB_SETCURSEL = 0x00000186
Global Const $LB_GETSEL = 0x00000187
Global Const $LB_GETCURSEL = 0x00000188
Global Const $LB_GETTEXT = 0x00000189
Global Const $LB_GETTEXTLEN = 0x0000018A
Global Const $LB_GETCOUNT = 0x0000018B
Global Const $LB_SELECTSTRING = 0x0000018C
Global Const $LB_DIR = 0x0000018D
Global Const $LB_GETTOPINDEX = 0x0000018E
Global Const $LB_FINDSTRING = 0x0000018F
Global Const $LB_GETSELCOUNT = 0x00000190
Global Const $LB_GETSELITEMS = 0x00000191
Global Const $LB_SETTABSTOPS = 0x00000192
Global Const $LB_GETHORIZONTALEXTENT = 0x00000193
Global Const $LB_SETHORIZONTALEXTENT = 0x00000194
Global Const $LB_SETCOLUMNWIDTH = 0x00000195
Global Const $LB_ADDFILE = 0x00000196
Global Const $LB_SETTOPINDEX = 0x00000197
Global Const $LB_GETITEMRECT = 0x00000198
Global Const $LB_GETITEMDATA = 0x00000199
Global Const $LB_SETITEMDATA = 0x0000019A
Global Const $LB_SELITEMRANGE = 0x0000019B
Global Const $LB_SETANCHORINDEX = 0x0000019C
Global Const $LB_GETANCHORINDEX = 0x0000019D
Global Const $LB_SETCARETINDEX = 0x0000019E
Global Const $LB_GETCARETINDEX = 0x0000019F
Global Const $LB_SETITEMHEIGHT = 0x000001A0
Global Const $LB_GETITEMHEIGHT = 0x000001A1
Global Const $LB_FINDSTRINGEXACT = 0x000001A2
Global Const $LB_SETLOCALE = 0x000001A5
Global Const $LB_GETLOCALE = 0x000001A6
Global Const $LB_SETCOUNT = 0x000001A7
Global Const $LB_INITSTORAGE = 0x000001A8
Global Const $LB_ITEMFROMPOINT = 0x000001A9
Global Const $LB_MULTIPLEADDSTRING = 0x000001B1
Global Const $LB_GETLISTBOXINFO = 0x000001B2
Global Const $LBN_ERRSPACE = 0xFFFFFFFE
Global Const $LBN_SELCHANGE = 0x00000001
Global Const $LBN_DBLCLK = 0x00000002
Global Const $LBN_SELCANCEL = 0x00000003
Global Const $LBN_SETFOCUS = 0x00000004
Global Const $LBN_KILLFOCUS = 0x00000005
Global Const $__LISTBOXCONSTANT_WS_BORDER = 0x00800000
Global Const $__LISTBOXCONSTANT_WS_VSCROLL = 0x00200000
Global Const $GUI_SS_DEFAULT_LIST = BitOR($LBS_SORT, $__LISTBOXCONSTANT_WS_BORDER, $__LISTBOXCONSTANT_WS_VSCROLL, $LBS_NOTIFY)
Global Const $DDL_ARCHIVE = 0x00000020
Global Const $DDL_DIRECTORY = 0x00000010
Global Const $DDL_DRIVES = 0x00004000
Global Const $DDL_EXCLUSIVE = 0x00008000
Global Const $DDL_HIDDEN = 0x00000002
Global Const $DDL_READONLY = 0x00000001
Global Const $DDL_READWRITE = 0x00000000
Global Const $DDL_SYSTEM = 0x00000004
Global Const $GMEM_FIXED = 0x00000000
Global Const $GMEM_MOVEABLE = 0x00000002
Global Const $GMEM_NOCOMPACT = 0x00000010
Global Const $GMEM_NODISCARD = 0x00000020
Global Const $GMEM_ZEROINIT = 0x00000040
Global Const $GMEM_MODIFY = 0x00000080
Global Const $GMEM_DISCARDABLE = 0x00000100
Global Const $GMEM_NOT_BANKED = 0x00001000
Global Const $GMEM_SHARE = 0x00002000
Global Const $GMEM_DDESHARE = 0x00002000
Global Const $GMEM_NOTIFY = 0x00004000
Global Const $GMEM_LOWER = 0x00001000
Global Const $GMEM_VALID_FLAGS = 0x00007F72
Global Const $GMEM_INVALID_HANDLE = 0x00008000
Global Const $GPTR = $GMEM_FIXED + $GMEM_ZEROINIT
Global Const $GHND = $GMEM_MOVEABLE + $GMEM_ZEROINIT
Global Const $MEM_COMMIT = 0x00001000
Global Const $MEM_RESERVE = 0x00002000
Global Const $MEM_TOP_DOWN = 0x00100000
Global Const $MEM_SHARED = 0x08000000
Global Const $PAGE_NOACCESS = 0x00000001
Global Const $PAGE_READONLY = 0x00000002
Global Const $PAGE_READWRITE = 0x00000004
Global Const $PAGE_EXECUTE = 0x00000010
Global Const $PAGE_EXECUTE_READ = 0x00000020
Global Const $PAGE_EXECUTE_READWRITE = 0x00000040
Global Const $PAGE_GUARD = 0x00000100
Global Const $PAGE_NOCACHE = 0x00000200
Global Const $MEM_DECOMMIT = 0x00004000
Global Const $MEM_RELEASE = 0x00008000
Global Const $TAGPOINT = "struct;long X;long Y;endstruct"
Global Const $TAGRECT = "struct;long Left;long Top;long Right;long Bottom;endstruct"
Global Const $TAGSIZE = "struct;long X;long Y;endstruct"
Global Const $TAGMARGINS = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $TAGFILETIME = "struct;dword Lo;dword Hi;endstruct"
Global Const $TAGSYSTEMTIME = "struct;word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds;endstruct"
Global Const $TAGTIME_ZONE_INFORMATION = "struct;long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias;endstruct"
Global Const $TAGNMHDR = "struct;hwnd hWndFrom;uint_ptr IDFrom;INT Code;endstruct"
Global Const $TAGCOMBOBOXEXITEM = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" & "int Indent;lparam Param"
Global Const $TAGNMCBEDRAGBEGIN = $TAGNMHDR & ";int ItemID;wchar szText[260]"
Global Const $TAGNMCBEENDEDIT = $TAGNMHDR & ";bool fChanged;int NewSelection;wchar szText[260];int Why"
Global Const $TAGNMCOMBOBOXEX = $TAGNMHDR & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" & "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $TAGDTPRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" & "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" & "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $TAGNMDATETIMECHANGE = $TAGNMHDR & ";dword Flag;" & $TAGSYSTEMTIME
Global Const $TAGNMDATETIMEFORMAT = $TAGNMHDR & ";ptr Format;" & $TAGSYSTEMTIME & ";ptr pDisplay;wchar Display[64]"
Global Const $TAGNMDATETIMEFORMATQUERY = $TAGNMHDR & ";ptr Format;struct;long SizeX;long SizeY;endstruct"
Global Const $TAGNMDATETIMEKEYDOWN = $TAGNMHDR & ";int VirtKey;ptr Format;" & $TAGSYSTEMTIME
Global Const $TAGNMDATETIMESTRING = $TAGNMHDR & ";ptr UserString;" & $TAGSYSTEMTIME & ";dword Flags"
Global Const $TAGEVENTLOGRECORD = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" & "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" & "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $TAGGDIPBITMAPDATA = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $TAGGDIPENCODERPARAM = "byte GUID[16];ulong Count;ulong Type;ptr Values"
Global Const $TAGGDIPENCODERPARAMS = "uint Count;byte Params[1]"
Global Const $TAGGDIPRECTF = "float X;float Y;float Width;float Height"
Global Const $TAGGDIPSTARTUPINPUT = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $TAGGDIPSTARTUPOUTPUT = "ptr HookProc;ptr UnhookProc"
Global Const $TAGGDIPIMAGECODECINFO = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" & "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $TAGGDIPPENCODERPARAMS = "uint Count;byte Params[1]"
Global Const $TAGHDITEM = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $TAGNMHDDISPINFO = $TAGNMHDR & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $TAGNMHDFILTERBTNCLICK = $TAGNMHDR & ";int Item;" & $TAGRECT
Global Const $TAGNMHEADER = $TAGNMHDR & ";int Item;int Button;ptr pItem"
Global Const $TAGGETIPADDRESS = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $TAGNMIPADDRESS = $TAGNMHDR & ";int Field;int Value"
Global Const $TAGLVFINDINFO = "struct;uint Flags;ptr Text;lparam Param;" & $TAGPOINT & ";uint Direction;endstruct"
Global Const $TAGLVHITTESTINFO = $TAGPOINT & ";uint Flags;int Item;int SubItem;int iGroup"
Global Const $TAGLVITEM = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" & "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
Global Const $TAGNMLISTVIEW = $TAGNMHDR & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" & "struct;long ActionX;long ActionY;endstruct;lparam Param"
Global Const $TAGNMLVCUSTOMDRAW = "struct;" & $TAGNMHDR & ";dword dwDrawStage;handle hdc;" & $TAGRECT & ";dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam;endstruct" & ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" & "int iIconPhase;int iPartId;int iStateId;struct;long TextLeft;long TextTop;long TextRight;long TextBottom;endstruct;uint uAlign"
Global Const $TAGNMLVDISPINFO = $TAGNMHDR & ";" & $TAGLVITEM
Global Const $TAGNMLVFINDITEM = $TAGNMHDR & ";int Start;" & $TAGLVFINDINFO
Global Const $TAGNMLVGETINFOTIP = $TAGNMHDR & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $TAGNMITEMACTIVATE = $TAGNMHDR & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" & $TAGPOINT & ";lparam lParam;uint KeyFlags"
Global Const $TAGNMLVKEYDOWN = "align 1;" & $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGNMLVSCROLL = $TAGNMHDR & ";int DX;int DY"
Global Const $TAGMCHITTESTINFO = "uint Size;" & $TAGPOINT & ";uint Hit;" & $TAGSYSTEMTIME & ";" & $TAGRECT & ";int iOffset;int iRow;int iCol"
Global Const $TAGMCMONTHRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short Span"
Global Const $TAGMCRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $TAGMCSELRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds"
Global Const $TAGNMDAYSTATE = $TAGNMHDR & ";" & $TAGSYSTEMTIME & ";int DayState;ptr pDayState"
Global Const $TAGNMSELCHANGE = $TAGNMHDR & ";struct;word BegYear;word BegMonth;word BegDOW;word BegDay;word BegHour;word BegMinute;word BegSecond;word BegMSeconds;endstruct;" & "struct;word EndYear;word EndMonth;word EndDOW;word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds;endstruct"
Global Const $TAGNMOBJECTNOTIFY = $TAGNMHDR & ";int Item;ptr piid;ptr pObject;long Result;dword dwFlags"
Global Const $TAGNMTCKEYDOWN = "align 1;" & $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGTVITEM = "struct;uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" & "int Children;lparam Param;endstruct"
Global Const $TAGTVITEMEX = "struct;" & $TAGTVITEM & ";int Integral;uint uStateEx;hwnd hwnd;int iExpandedImage;int iReserved;endstruct"
Global Const $TAGNMTREEVIEW = $TAGNMHDR & ";uint Action;" & "struct;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" & "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;endstruct;" & "struct;uint NewMask;handle NewhItem;uint NewState;uint NewStateMask;" & "ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;lparam NewParam;endstruct;" & "struct;long PointX;long PointY;endstruct"
Global Const $TAGNMTVCUSTOMDRAW = "struct;" & $TAGNMHDR & ";dword DrawStage;handle HDC;" & $TAGRECT & ";dword_ptr ItemSpec;uint ItemState;lparam ItemParam;endstruct" & ";dword ClrText;dword ClrTextBk;int Level"
Global Const $TAGNMTVDISPINFO = $TAGNMHDR & ";" & $TAGTVITEM
Global Const $TAGNMTVGETINFOTIP = $TAGNMHDR & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $TAGTVHITTESTINFO = $TAGPOINT & ";uint Flags;handle Item"
Global Const $TAGNMTVKEYDOWN = "align 1;" & $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGNMMOUSE = $TAGNMHDR & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $TAGPOINT & ";lparam HitInfo"
Global Const $TAGTOKEN_PRIVILEGES = "dword Count;align 4;int64 LUID;dword Attributes"
Global Const $TAGIMAGEINFO = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $TAGRECT
Global Const $TAGMENUINFO = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $TAGMENUITEMINFO = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" & "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $TAGREBARBANDINFO = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" & "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" & "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader;" & $TAGRECT & ";uint uChevronState"
Global Const $TAGNMREBARAUTOBREAK = $TAGNMHDR & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $TAGNMRBAUTOSIZE = $TAGNMHDR & ";bool fChanged;" & "struct;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;endstruct;" & "struct;long ActualLeft;long ActualTop;long ActualRight;long ActualBottom;endstruct"
Global Const $TAGNMREBAR = $TAGNMHDR & ";dword dwMask;uint uBand;uint fStyle;uint wID;lparam lParam"
Global Const $TAGNMREBARCHEVRON = $TAGNMHDR & ";uint uBand;uint wID;lparam lParam;" & $TAGRECT & ";lparam lParamNM"
Global Const $TAGNMREBARCHILDSIZE = $TAGNMHDR & ";uint uBand;uint wID;" & "struct;long CLeft;long CTop;long CRight;long CBottom;endstruct;" & "struct;long BLeft;long BTop;long BRight;long BBottom;endstruct"
Global Const $TAGCOLORSCHEME = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $TAGNMTOOLBAR = $TAGNMHDR & ";int iItem;" & "struct;int iBitmap;int idCommand;byte fsState;byte fsStyle;dword_ptr dwData;int_ptr iString;endstruct" & ";int cchText;ptr pszText;" & $TAGRECT
Global Const $TAGNMTBHOTITEM = $TAGNMHDR & ";int idOld;int idNew;dword dwFlags"
Global Const $TAGTBBUTTON = "int Bitmap;int Command;byte State;byte Style;align;dword_ptr Param;int_ptr String"
Global Const $TAGTBBUTTONINFO = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $TAGNETRESOURCE = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $TAGOVERLAPPED = "ulong_ptr Internal;ulong_ptr InternalHigh;struct;dword Offset;dword OffsetHigh;endstruct;handle hEvent"
Global Const $TAGOPENFILENAME = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" & "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" & "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $TAGBITMAPINFO = "struct;dword Size;long Width;long Height;word Planes;word BitCount;dword Compression;dword SizeImage;" & "long XPelsPerMeter;long YPelsPerMeter;dword ClrUsed;dword ClrImportant;endstruct;dword RGBQuad"
Global Const $TAGBLENDFUNCTION = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $TAGGUID = "ulong Data1;ushort Data2;ushort Data3;byte Data4[8]"
Global Const $TAGWINDOWPLACEMENT = "uint length;uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $TAGWINDOWPOS = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $TAGSCROLLINFO = "uint cbSize;uint fMask;int nMin;int nMax;uint nPage;int nPos;int nTrackPos"
Global Const $TAGSCROLLBARINFO = "dword cbSize;" & $TAGRECT & ";int dxyLineButton;int xyThumbTop;" & "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $TAGLOGFONT = "long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" & "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32]"
Global Const $TAGKBDLLHOOKSTRUCT = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $TAGPROCESS_INFORMATION = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $TAGSTARTUPINFO = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" & "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" & "handle StdOutput;handle StdError"
Global Const $TAGSECURITY_ATTRIBUTES = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $TAGWIN32_FIND_DATA = "dword dwFileAttributes;dword ftCreationTime[2];dword ftLastAccessTime[2];dword ftLastWriteTime[2];dword nFileSizeHigh;dword nFileSizeLow;dword dwReserved0;dword dwReserved1;wchar cFileName[260];wchar cAlternateFileName[14]"
Global Const $TAGTEXTMETRIC = "long tmHeight;long tmAscent;long tmDescent;long tmInternalLeading;long tmExternalLeading;" & "long tmAveCharWidth;long tmMaxCharWidth;long tmWeight;long tmOverhang;long tmDigitizedAspectX;long tmDigitizedAspectY;" & "wchar tmFirstChar;wchar tmLastChar;wchar tmDefaultChar;wchar tmBreakChar;byte tmItalic;byte tmUnderlined;byte tmStruckOut;" & "byte tmPitchAndFamily;byte tmCharSet"
Global Const $PROCESS_TERMINATE = 0x00000001
Global Const $PROCESS_CREATE_THREAD = 0x00000002
Global Const $PROCESS_SET_SESSIONID = 0x00000004
Global Const $PROCESS_VM_OPERATION = 0x00000008
Global Const $PROCESS_VM_READ = 0x00000010
Global Const $PROCESS_VM_WRITE = 0x00000020
Global Const $PROCESS_DUP_HANDLE = 0x00000040
Global Const $PROCESS_CREATE_PROCESS = 0x00000080
Global Const $PROCESS_SET_QUOTA = 0x00000100
Global Const $PROCESS_SET_INFORMATION = 0x00000200
Global Const $PROCESS_QUERY_INFORMATION = 0x00000400
Global Const $PROCESS_SUSPEND_RESUME = 0x00000800
Global Const $PROCESS_ALL_ACCESS = 0x001F0FFF
Global Const $ERROR_NO_TOKEN = 0x000003F0
Global Const $SE_ASSIGNPRIMARYTOKEN_NAME = "SeAssignPrimaryTokenPrivilege"
Global Const $SE_AUDIT_NAME = "SeAuditPrivilege"
Global Const $SE_BACKUP_NAME = "SeBackupPrivilege"
Global Const $SE_CHANGE_NOTIFY_NAME = "SeChangeNotifyPrivilege"
Global Const $SE_CREATE_GLOBAL_NAME = "SeCreateGlobalPrivilege"
Global Const $SE_CREATE_PAGEFILE_NAME = "SeCreatePagefilePrivilege"
Global Const $SE_CREATE_PERMANENT_NAME = "SeCreatePermanentPrivilege"
Global Const $SE_CREATE_TOKEN_NAME = "SeCreateTokenPrivilege"
Global Const $SE_DEBUG_NAME = "SeDebugPrivilege"
Global Const $SE_ENABLE_DELEGATION_NAME = "SeEnableDelegationPrivilege"
Global Const $SE_IMPERSONATE_NAME = "SeImpersonatePrivilege"
Global Const $SE_INC_BASE_PRIORITY_NAME = "SeIncreaseBasePriorityPrivilege"
Global Const $SE_INCREASE_QUOTA_NAME = "SeIncreaseQuotaPrivilege"
Global Const $SE_LOAD_DRIVER_NAME = "SeLoadDriverPrivilege"
Global Const $SE_LOCK_MEMORY_NAME = "SeLockMemoryPrivilege"
Global Const $SE_MACHINE_ACCOUNT_NAME = "SeMachineAccountPrivilege"
Global Const $SE_MANAGE_VOLUME_NAME = "SeManageVolumePrivilege"
Global Const $SE_PROF_SINGLE_PROCESS_NAME = "SeProfileSingleProcessPrivilege"
Global Const $SE_REMOTE_SHUTDOWN_NAME = "SeRemoteShutdownPrivilege"
Global Const $SE_RESTORE_NAME = "SeRestorePrivilege"
Global Const $SE_SECURITY_NAME = "SeSecurityPrivilege"
Global Const $SE_SHUTDOWN_NAME = "SeShutdownPrivilege"
Global Const $SE_SYNC_AGENT_NAME = "SeSyncAgentPrivilege"
Global Const $SE_SYSTEM_ENVIRONMENT_NAME = "SeSystemEnvironmentPrivilege"
Global Const $SE_SYSTEM_PROFILE_NAME = "SeSystemProfilePrivilege"
Global Const $SE_SYSTEMTIME_NAME = "SeSystemtimePrivilege"
Global Const $SE_TAKE_OWNERSHIP_NAME = "SeTakeOwnershipPrivilege"
Global Const $SE_TCB_NAME = "SeTcbPrivilege"
Global Const $SE_UNSOLICITED_INPUT_NAME = "SeUnsolicitedInputPrivilege"
Global Const $SE_UNDOCK_NAME = "SeUndockPrivilege"
Global Const $SE_PRIVILEGE_ENABLED_BY_DEFAULT = 0x00000001
Global Const $SE_PRIVILEGE_ENABLED = 0x00000002
Global Const $SE_PRIVILEGE_REMOVED = 0x00000004
Global Const $SE_PRIVILEGE_USED_FOR_ACCESS = 0x80000000
Global Const $TOKENUSER = 0x00000001
Global Const $TOKENGROUPS = 0x00000002
Global Const $TOKENPRIVILEGES = 0x00000003
Global Const $TOKENOWNER = 0x00000004
Global Const $TOKENPRIMARYGROUP = 0x00000005
Global Const $TOKENDEFAULTDACL = 0x00000006
Global Const $TOKENSOURCE = 0x00000007
Global Const $TOKENTYPE = 0x00000008
Global Const $TOKENIMPERSONATIONLEVEL = 0x00000009
Global Const $TOKENSTATISTICS = 0x0000000A
Global Const $TOKENRESTRICTEDSIDS = 0x0000000B
Global Const $TOKENSESSIONID = 0x0000000C
Global Const $TOKENGROUPSANDPRIVILEGES = 0x0000000D
Global Const $TOKENSESSIONREFERENCE = 0x0000000E
Global Const $TOKENSANDBOXINERT = 0x0000000F
Global Const $TOKENAUDITPOLICY = 0x00000010
Global Const $TOKENORIGIN = 0x00000011
Global Const $TOKENELEVATIONTYPE = 0x00000012
Global Const $TOKENLINKEDTOKEN = 0x00000013
Global Const $TOKENELEVATION = 0x00000014
Global Const $TOKENHASRESTRICTIONS = 0x00000015
Global Const $TOKENACCESSINFORMATION = 0x00000016
Global Const $TOKENVIRTUALIZATIONALLOWED = 0x00000017
Global Const $TOKENVIRTUALIZATIONENABLED = 0x00000018
Global Const $TOKENINTEGRITYLEVEL = 0x00000019
Global Const $TOKENUIACCESS = 0x0000001A
Global Const $TOKENMANDATORYPOLICY = 0x0000001B
Global Const $TOKENLOGONSID = 0x0000001C
Global Const $TOKEN_ASSIGN_PRIMARY = 0x00000001
Global Const $TOKEN_DUPLICATE = 0x00000002
Global Const $TOKEN_IMPERSONATE = 0x00000004
Global Const $TOKEN_QUERY = 0x00000008
Global Const $TOKEN_QUERY_SOURCE = 0x00000010
Global Const $TOKEN_ADJUST_PRIVILEGES = 0x00000020
Global Const $TOKEN_ADJUST_GROUPS = 0x00000040
Global Const $TOKEN_ADJUST_DEFAULT = 0x00000080
Global Const $TOKEN_ADJUST_SESSIONID = 0x00000100
Func _WinAPI_GetLastError($CURERR = @error, $CUREXT = @extended)
	Local $ARESULT = DllCall("kernel32.dll", "dword", "GetLastError")
	Return SetError($CURERR, $CUREXT, $ARESULT[0x00000000])
EndFunc   ;==>_WinAPI_GetLastError
Func _WinAPI_SetLastError($IERRCODE, $CURERR = @error, $CUREXT = @extended)
	DllCall("kernel32.dll", "none", "SetLastError", "dword", $IERRCODE)
	Return SetError($CURERR, $CUREXT)
EndFunc   ;==>_WinAPI_SetLastError
Func _Security__AdjustTokenPrivileges($HTOKEN, $FDISABLEALL, $PNEWSTATE, $IBUFFERLEN, $PPREVSTATE = 0x00000000, $PREQUIRED = 0x00000000)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "AdjustTokenPrivileges", "handle", $HTOKEN, "bool", $FDISABLEALL, "ptr", $PNEWSTATE, "dword", $IBUFFERLEN, "ptr", $PPREVSTATE, "ptr", $PREQUIRED)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_Security__AdjustTokenPrivileges
Func _Security__GetAccountSid($SACCOUNT, $SSYSTEM = "")
	Local $AACCT = _Security__LookupAccountName($SACCOUNT, $SSYSTEM)
	If @error Then Return SetError(@error, 0x00000000, 0x00000000)
	If IsArray($AACCT) Then Return _Security__StringSidToSid($AACCT[0x00000000])
	Return ""
EndFunc   ;==>_Security__GetAccountSid
Func _Security__GetLengthSid($PSID)
	If Not _Security__IsValidSid($PSID) Then Return SetError(-0x00000001, 0x00000000, 0x00000000)
	Local $ARESULT = DllCall("advapi32.dll", "dword", "GetLengthSid", "ptr", $PSID)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_Security__GetLengthSid
Func _Security__GetTokenInformation($HTOKEN, $ICLASS)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $HTOKEN, "int", $ICLASS, "ptr", 0x00000000, "dword", 0x00000000, "dword*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If Not $ARESULT[0x00000005] Then Return 0x00000000
	Local $TBUFFER = DllStructCreate("byte[" & $ARESULT[0x00000005] & "]")
	Local $PBUFFER = DllStructGetPtr($TBUFFER)
	$ARESULT = DllCall("advapi32.dll", "bool", "GetTokenInformation", "handle", $HTOKEN, "int", $ICLASS, "ptr", $PBUFFER, "dword", $ARESULT[0x00000005], "dword*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If Not $ARESULT[0x00000000] Then Return 0x00000000
	Return $TBUFFER
EndFunc   ;==>_Security__GetTokenInformation
Func _Security__ImpersonateSelf($ILEVEL = 0x00000002)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "ImpersonateSelf", "int", $ILEVEL)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_Security__ImpersonateSelf
Func _Security__IsValidSid($PSID)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "IsValidSid", "ptr", $PSID)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_Security__IsValidSid
Func _Security__LookupAccountName($SACCOUNT, $SSYSTEM = "")
	Local $TDATA = DllStructCreate("byte SID[256]")
	Local $PSID = DllStructGetPtr($TDATA, "SID")
	Local $ARESULT = DllCall("advapi32.dll", "bool", "LookupAccountNameW", "wstr", $SSYSTEM, "wstr", $SACCOUNT, "ptr", $PSID, "dword*", 0x00000100, "wstr", "", "dword*", 0x00000100, "int*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If Not $ARESULT[0x00000000] Then Return 0x00000000
	Local $AACCT[0x00000003]
	$AACCT[0x00000000] = _Security__SidToStringSid($PSID)
	$AACCT[0x00000001] = $ARESULT[0x00000005]
	$AACCT[0x00000002] = $ARESULT[0x00000007]
	Return $AACCT
EndFunc   ;==>_Security__LookupAccountName
Func _Security__LookupAccountSid($VSID, $SSYSTEM = "")
	Local $PSID, $AACCT[0x00000003]
	If IsString($VSID) Then
		Local $TSID = _Security__StringSidToSid($VSID)
		$PSID = DllStructGetPtr($TSID)
	Else
		$PSID = $VSID
	EndIf
	If Not _Security__IsValidSid($PSID) Then Return SetError(-0x00000001, 0x00000000, 0x00000000)
	Local $TYPESYSTEM = "ptr"
	If $SSYSTEM <> "" Then $TYPESYSTEM = "wstr"
	Local $ARESULT = DllCall("advapi32.dll", "bool", "LookupAccountSidW", $TYPESYSTEM, $SSYSTEM, "ptr", $PSID, "wstr", "", "dword*", 0x00000100, "wstr", "", "dword*", 0x00000100, "int*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If Not $ARESULT[0x00000000] Then Return 0x00000000
	Local $AACCT[0x00000003]
	$AACCT[0x00000000] = $ARESULT[0x00000003]
	$AACCT[0x00000001] = $ARESULT[0x00000005]
	$AACCT[0x00000002] = $ARESULT[0x00000007]
	Return $AACCT
EndFunc   ;==>_Security__LookupAccountSid
Func _Security__LookupPrivilegeValue($SSYSTEM, $SNAME)
	Local $ARESULT = DllCall("advapi32.dll", "int", "LookupPrivilegeValueW", "wstr", $SSYSTEM, "wstr", $SNAME, "int64*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return SetError(0x00000000, $ARESULT[0x00000000], $ARESULT[0x00000003])
EndFunc   ;==>_Security__LookupPrivilegeValue
Func _Security__OpenProcessToken($HPROCESS, $IACCESS)
	Local $ARESULT = DllCall("advapi32.dll", "int", "OpenProcessToken", "handle", $HPROCESS, "dword", $IACCESS, "ptr*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return SetError(0x00000000, $ARESULT[0x00000000], $ARESULT[0x00000003])
EndFunc   ;==>_Security__OpenProcessToken
Func _Security__OpenThreadToken($IACCESS, $HTHREAD = 0x00000000, $FOPENASSELF = False)
	If $HTHREAD = 0x00000000 Then $HTHREAD = DllCall("kernel32.dll", "handle", "GetCurrentThread")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "OpenThreadToken", "handle", $HTHREAD[0x00000000], "dword", $IACCESS, "int", $FOPENASSELF, "ptr*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return SetError(0x00000000, $ARESULT[0x00000000], $ARESULT[0x00000004])
EndFunc   ;==>_Security__OpenThreadToken
Func _Security__OpenThreadTokenEx($IACCESS, $HTHREAD = 0x00000000, $FOPENASSELF = False)
	Local $HTOKEN = _Security__OpenThreadToken($IACCESS, $HTHREAD, $FOPENASSELF)
	If $HTOKEN = 0x00000000 Then
		If _WinAPI_GetLastError() <> $ERROR_NO_TOKEN Then Return SetError(-0x00000003, _WinAPI_GetLastError(), 0x00000000)
		If Not _Security__ImpersonateSelf() Then Return SetError(-0x00000001, _WinAPI_GetLastError(), 0x00000000)
		$HTOKEN = _Security__OpenThreadToken($IACCESS, $HTHREAD, $FOPENASSELF)
		If $HTOKEN = 0x00000000 Then Return SetError(-0x00000002, _WinAPI_GetLastError(), 0x00000000)
	EndIf
	Return $HTOKEN
EndFunc   ;==>_Security__OpenThreadTokenEx
Func _Security__SetPrivilege($HTOKEN, $SPRIVILEGE, $FENABLE)
	Local $ILUID = _Security__LookupPrivilegeValue("", $SPRIVILEGE)
	If $ILUID = 0x00000000 Then Return SetError(-0x00000001, 0x00000000, False)
	Local $TCURRSTATE = DllStructCreate($TAGTOKEN_PRIVILEGES)
	Local $PCURRSTATE = DllStructGetPtr($TCURRSTATE)
	Local $ICURRSTATE = DllStructGetSize($TCURRSTATE)
	Local $TPREVSTATE = DllStructCreate($TAGTOKEN_PRIVILEGES)
	Local $PPREVSTATE = DllStructGetPtr($TPREVSTATE)
	Local $IPREVSTATE = DllStructGetSize($TPREVSTATE)
	Local $TREQUIRED = DllStructCreate("int Data")
	Local $PREQUIRED = DllStructGetPtr($TREQUIRED)
	DllStructSetData($TCURRSTATE, "Count", 0x00000001)
	DllStructSetData($TCURRSTATE, "LUID", $ILUID)
	If Not _Security__AdjustTokenPrivileges($HTOKEN, False, $PCURRSTATE, $ICURRSTATE, $PPREVSTATE, $PREQUIRED) Then Return SetError(-0x00000002, @error, False)
	DllStructSetData($TPREVSTATE, "Count", 0x00000001)
	DllStructSetData($TPREVSTATE, "LUID", $ILUID)
	Local $IATTRIBUTES = DllStructGetData($TPREVSTATE, "Attributes")
	If $FENABLE Then
		$IATTRIBUTES = BitOR($IATTRIBUTES, $SE_PRIVILEGE_ENABLED)
	Else
		$IATTRIBUTES = BitAND($IATTRIBUTES, BitNOT($SE_PRIVILEGE_ENABLED))
	EndIf
	DllStructSetData($TPREVSTATE, "Attributes", $IATTRIBUTES)
	If Not _Security__AdjustTokenPrivileges($HTOKEN, False, $PPREVSTATE, $IPREVSTATE, $PCURRSTATE, $PREQUIRED) Then Return SetError(-0x00000003, @error, False)
	Return True
EndFunc   ;==>_Security__SetPrivilege
Func _Security__SidToStringSid($PSID)
	If Not _Security__IsValidSid($PSID) Then Return SetError(-0x00000001, 0x00000000, "")
	Local $ARESULT = DllCall("advapi32.dll", "int", "ConvertSidToStringSidW", "ptr", $PSID, "ptr*", 0x00000000)
	If @error Then Return SetError(@error, @extended, "")
	If Not $ARESULT[0x00000000] Then Return ""
	Local $TBUFFER = DllStructCreate("wchar Text[256]", $ARESULT[0x00000002])
	Local $SSID = DllStructGetData($TBUFFER, "Text")
	DllCall("Kernel32.dll", "ptr", "LocalFree", "ptr", $ARESULT[0x00000002])
	Return $SSID
EndFunc   ;==>_Security__SidToStringSid
Func _Security__SidTypeStr($ITYPE)
	Switch $ITYPE
		Case 0x00000001
			Return "User"
		Case 0x00000002
			Return "Group"
		Case 0x00000003
			Return "Domain"
		Case 0x00000004
			Return "Alias"
		Case 0x00000005
			Return "Well Known Group"
		Case 0x00000006
			Return "Deleted Account"
		Case 0x00000007
			Return "Invalid"
		Case 0x00000008
			Return "Invalid"
		Case 0x00000009
			Return "Computer"
		Case Else
			Return "Unknown SID Type"
	EndSwitch
EndFunc   ;==>_Security__SidTypeStr
Func _Security__StringSidToSid($SSID)
	Local $ARESULT = DllCall("advapi32.dll", "bool", "ConvertStringSidToSidW", "wstr", $SSID, "ptr*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If Not $ARESULT[0x00000000] Then Return 0x00000000
	Local $ISIZE = _Security__GetLengthSid($ARESULT[0x00000002])
	Local $TBUFFER = DllStructCreate("byte Data[" & $ISIZE & "]", $ARESULT[0x00000002])
	Local $TSID = DllStructCreate("byte Data[" & $ISIZE & "]")
	DllStructSetData($TSID, "Data", DllStructGetData($TBUFFER, "Data"))
	DllCall("kernel32.dll", "ptr", "LocalFree", "ptr", $ARESULT[0x00000002])
	Return $TSID
EndFunc   ;==>_Security__StringSidToSid
Global Const $TAGMEMMAP = "handle hProc;ulong_ptr Size;ptr Mem"
Func _MEMFREE(ByRef $TMEMMAP)
	Local $PMEMORY = DllStructGetData($TMEMMAP, "Mem")
	Local $HPROCESS = DllStructGetData($TMEMMAP, "hProc")
	Local $BRESULT = _MemVirtualFreeEx($HPROCESS, $PMEMORY, 0x00000000, $MEM_RELEASE)
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $HPROCESS)
	If @error Then Return SetError(@error, @extended, False)
	Return $BRESULT
EndFunc   ;==>_MEMFREE
Func _MemGlobalAlloc($IBYTES, $IFLAGS = 0x00000000)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $IFLAGS, "ulong_ptr", $IBYTES)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MemGlobalAlloc
Func _MemGlobalFree($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MemGlobalFree
Func _MemGlobalLock($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MemGlobalLock
Func _MemGlobalSize($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "ulong_ptr", "GlobalSize", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MemGlobalSize
Func _MemGlobalUnlock($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MemGlobalUnlock
Func _MEMINIT($HWND, $ISIZE, ByRef $TMEMMAP)
	Local $ARESULT = DllCall("User32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $HWND, "dword*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Local $IPROCESSID = $ARESULT[0x00000002]
	If $IPROCESSID = 0x00000000 Then Return SetError(0x00000001, 0x00000000, 0x00000000)
	Local $IACCESS = BitOR($PROCESS_VM_OPERATION, $PROCESS_VM_READ, $PROCESS_VM_WRITE)
	Local $HPROCESS = __MEM_OPENPROCESS($IACCESS, False, $IPROCESSID, True)
	Local $IALLOC = BitOR($MEM_RESERVE, $MEM_COMMIT)
	Local $PMEMORY = _MemVirtualAllocEx($HPROCESS, 0x00000000, $ISIZE, $IALLOC, $PAGE_READWRITE)
	If $PMEMORY = 0x00000000 Then Return SetError(0x00000002, 0x00000000, 0x00000000)
	$TMEMMAP = DllStructCreate($TAGMEMMAP)
	DllStructSetData($TMEMMAP, "hProc", $HPROCESS)
	DllStructSetData($TMEMMAP, "Size", $ISIZE)
	DllStructSetData($TMEMMAP, "Mem", $PMEMORY)
	Return $PMEMORY
EndFunc   ;==>_MEMINIT
Func _MemMoveMemory($PSOURCE, $PDEST, $ILENGTH)
	DllCall("kernel32.dll", "none", "RtlMoveMemory", "ptr", $PDEST, "ptr", $PSOURCE, "ulong_ptr", $ILENGTH)
	If @error Then Return SetError(@error, @extended)
EndFunc   ;==>_MemMoveMemory
Func _MEMREAD(ByRef $TMEMMAP, $PSRCE, $PDEST, $ISIZE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", DllStructGetData($TMEMMAP, "hProc"), "ptr", $PSRCE, "ptr", $PDEST, "ulong_ptr", $ISIZE, "ulong_ptr*", 0x00000000)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MEMREAD
Func _MEMWRITE(ByRef $TMEMMAP, $PSRCE, $PDEST = 0x00000000, $ISIZE = 0x00000000, $SSRCE = "ptr")
	If $PDEST = 0x00000000 Then $PDEST = DllStructGetData($TMEMMAP, "Mem")
	If $ISIZE = 0x00000000 Then $ISIZE = DllStructGetData($TMEMMAP, "Size")
	Local $ARESULT = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", DllStructGetData($TMEMMAP, "hProc"), "ptr", $PDEST, $SSRCE, $PSRCE, "ulong_ptr", $ISIZE, "ulong_ptr*", 0x00000000)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MEMWRITE
Func _MemVirtualAlloc($PADDRESS, $ISIZE, $IALLOCATION, $IPROTECT)
	Local $ARESULT = DllCall("kernel32.dll", "ptr", "VirtualAlloc", "ptr", $PADDRESS, "ulong_ptr", $ISIZE, "dword", $IALLOCATION, "dword", $IPROTECT)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MemVirtualAlloc
Func _MemVirtualAllocEx($HPROCESS, $PADDRESS, $ISIZE, $IALLOCATION, $IPROTECT)
	Local $ARESULT = DllCall("kernel32.dll", "ptr", "VirtualAllocEx", "handle", $HPROCESS, "ptr", $PADDRESS, "ulong_ptr", $ISIZE, "dword", $IALLOCATION, "dword", $IPROTECT)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MemVirtualAllocEx
Func _MemVirtualFree($PADDRESS, $ISIZE, $IFREETYPE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "VirtualFree", "ptr", $PADDRESS, "ulong_ptr", $ISIZE, "dword", $IFREETYPE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MemVirtualFree
Func _MemVirtualFreeEx($HPROCESS, $PADDRESS, $ISIZE, $IFREETYPE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "VirtualFreeEx", "handle", $HPROCESS, "ptr", $PADDRESS, "ulong_ptr", $ISIZE, "dword", $IFREETYPE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_MemVirtualFreeEx
Func __MEM_OPENPROCESS($IACCESS, $FINHERIT, $IPROCESSID, $FDEBUGPRIV = False)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $IACCESS, "bool", $FINHERIT, "dword", $IPROCESSID)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If $ARESULT[0x00000000] Then Return $ARESULT[0x00000000]
	If Not $FDEBUGPRIV Then Return 0x00000000
	Local $HTOKEN = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	_Security__SetPrivilege($HTOKEN, "SeDebugPrivilege", True)
	Local $IERROR = @error
	Local $ILASTERROR = @extended
	Local $IRET = 0x00000000
	If Not @error Then
		$ARESULT = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $IACCESS, "bool", $FINHERIT, "dword", $IPROCESSID)
		$IERROR = @error
		$ILASTERROR = @extended
		If $ARESULT[0x00000000] Then $IRET = $ARESULT[0x00000000]
		_Security__SetPrivilege($HTOKEN, "SeDebugPrivilege", False)
		If @error Then
			$IERROR = @error
			$ILASTERROR = @extended
		EndIf
	EndIf
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $HTOKEN)
	Return SetError($IERROR, $ILASTERROR, $IRET)
EndFunc   ;==>__MEM_OPENPROCESS
Global Const $FC_NOOVERWRITE = 0x00000000
Global Const $FC_OVERWRITE = 0x00000001
Global Const $FT_MODIFIED = 0x00000000
Global Const $FT_CREATED = 0x00000001
Global Const $FT_ACCESSED = 0x00000002
Global Const $FO_READ = 0x00000000
Global Const $FO_APPEND = 0x00000001
Global Const $FO_OVERWRITE = 0x00000002
Global Const $FO_BINARY = 0x00000010
Global Const $FO_UNICODE = 0x00000020
Global Const $FO_UTF16_LE = 0x00000020
Global Const $FO_UTF16_BE = 0x00000040
Global Const $FO_UTF8 = 0x00000080
Global Const $FO_UTF8_NOBOM = 0x00000100
Global Const $EOF = -0x00000001
Global Const $FD_FILEMUSTEXIST = 0x00000001
Global Const $FD_PATHMUSTEXIST = 0x00000002
Global Const $FD_MULTISELECT = 0x00000004
Global Const $FD_PROMPTCREATENEW = 0x00000008
Global Const $FD_PROMPTOVERWRITE = 0x00000010
Global Const $CREATE_NEW = 0x00000001
Global Const $CREATE_ALWAYS = 0x00000002
Global Const $OPEN_EXISTING = 0x00000003
Global Const $OPEN_ALWAYS = 0x00000004
Global Const $TRUNCATE_EXISTING = 0x00000005
Global Const $INVALID_SET_FILE_POINTER = -0x00000001
Global Const $FILE_BEGIN = 0x00000000
Global Const $FILE_CURRENT = 0x00000001
Global Const $FILE_END = 0x00000002
Global Const $FILE_ATTRIBUTE_READONLY = 0x00000001
Global Const $FILE_ATTRIBUTE_HIDDEN = 0x00000002
Global Const $FILE_ATTRIBUTE_SYSTEM = 0x00000004
Global Const $FILE_ATTRIBUTE_DIRECTORY = 0x00000010
Global Const $FILE_ATTRIBUTE_ARCHIVE = 0x00000020
Global Const $FILE_ATTRIBUTE_DEVICE = 0x00000040
Global Const $FILE_ATTRIBUTE_NORMAL = 0x00000080
Global Const $FILE_ATTRIBUTE_TEMPORARY = 0x00000100
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400
Global Const $FILE_ATTRIBUTE_COMPRESSED = 0x00000800
Global Const $FILE_ATTRIBUTE_OFFLINE = 0x00001000
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 0x00004000
Global Const $FILE_SHARE_READ = 0x00000001
Global Const $FILE_SHARE_WRITE = 0x00000002
Global Const $FILE_SHARE_DELETE = 0x00000004
Global Const $GENERIC_ALL = 0x10000000
Global Const $GENERIC_EXECUTE = 0x20000000
Global Const $GENERIC_WRITE = 0x40000000
Global Const $GENERIC_READ = 0x80000000
Func _SendMessage($HWND, $IMSG, $WPARAM = 0x00000000, $LPARAM = 0x00000000, $IRETURN = 0x00000000, $WPARAMTYPE = "wparam", $LPARAMTYPE = "lparam", $SRETURNTYPE = "lresult")
	Local $ARESULT = DllCall("user32.dll", $SRETURNTYPE, "SendMessageW", "hwnd", $HWND, "uint", $IMSG, $WPARAMTYPE, $WPARAM, $LPARAMTYPE, $LPARAM)
	If @error Then Return SetError(@error, @extended, "")
	If $IRETURN >= 0x00000000 AND $IRETURN <= 0x00000004 Then Return $ARESULT[$IRETURN]
	Return $ARESULT
EndFunc   ;==>_SendMessage
Func _SendMessageA($HWND, $IMSG, $WPARAM = 0x00000000, $LPARAM = 0x00000000, $IRETURN = 0x00000000, $WPARAMTYPE = "wparam", $LPARAMTYPE = "lparam", $SRETURNTYPE = "lresult")
	Local $ARESULT = DllCall("user32.dll", $SRETURNTYPE, "SendMessageA", "hwnd", $HWND, "uint", $IMSG, $WPARAMTYPE, $WPARAM, $LPARAMTYPE, $LPARAM)
	If @error Then Return SetError(@error, @extended, "")
	If $IRETURN >= 0x00000000 AND $IRETURN <= 0x00000004 Then Return $ARESULT[$IRETURN]
	Return $ARESULT
EndFunc   ;==>_SendMessageA
Global $__GAINPROCESS_WINAPI[0x00000040][0x00000002] = [[0x00000000, 0x00000000]]
Global $__GAWINLIST_WINAPI[0x00000040][0x00000002] = [[0x00000000, 0x00000000]]
Global Const $__WINAPICONSTANT_WM_SETFONT = 0x00000030
Global Const $__WINAPICONSTANT_FW_NORMAL = 0x00000190
Global Const $__WINAPICONSTANT_DEFAULT_CHARSET = 0x00000001
Global Const $__WINAPICONSTANT_OUT_DEFAULT_PRECIS = 0x00000000
Global Const $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS = 0x00000000
Global Const $__WINAPICONSTANT_DEFAULT_QUALITY = 0x00000000
Global Const $__WINAPICONSTANT_FORMAT_MESSAGE_ALLOCATE_BUFFER = 0x00000100
Global Const $__WINAPICONSTANT_FORMAT_MESSAGE_FROM_SYSTEM = 0x00001000
Global Const $__WINAPICONSTANT_LOGPIXELSX = 0x00000058
Global Const $__WINAPICONSTANT_LOGPIXELSY = 0x0000005A
Global Const $HGDI_ERROR = Ptr(-0x00000001)
Global Const $INVALID_HANDLE_VALUE = Ptr(-0x00000001)
Global Const $CLR_INVALID = -0x00000001
Global Const $__WINAPICONSTANT_FLASHW_CAPTION = 0x00000001
Global Const $__WINAPICONSTANT_FLASHW_TRAY = 0x00000002
Global Const $__WINAPICONSTANT_FLASHW_TIMER = 0x00000004
Global Const $__WINAPICONSTANT_FLASHW_TIMERNOFG = 0x0000000C
Global Const $__WINAPICONSTANT_GW_HWNDNEXT = 0x00000002
Global Const $__WINAPICONSTANT_GW_CHILD = 0x00000005
Global Const $__WINAPICONSTANT_DI_MASK = 0x00000001
Global Const $__WINAPICONSTANT_DI_IMAGE = 0x00000002
Global Const $__WINAPICONSTANT_DI_NORMAL = 0x00000003
Global Const $__WINAPICONSTANT_DI_COMPAT = 0x00000004
Global Const $__WINAPICONSTANT_DI_DEFAULTSIZE = 0x00000008
Global Const $__WINAPICONSTANT_DI_NOMIRROR = 0x00000010
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 0x00000001
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_PRIMARY_DEVICE = 0x00000004
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_MIRRORING_DRIVER = 0x00000008
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_VGA_COMPATIBLE = 0x00000010
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_REMOVABLE = 0x00000020
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_MODESPRUNED = 0x08000000
Global Const $NULL_BRUSH = 0x00000005
Global Const $NULL_PEN = 0x00000008
Global Const $BLACK_BRUSH = 0x00000004
Global Const $DKGRAY_BRUSH = 0x00000003
Global Const $DC_BRUSH = 0x00000012
Global Const $GRAY_BRUSH = 0x00000002
Global Const $HOLLOW_BRUSH = $NULL_BRUSH
Global Const $LTGRAY_BRUSH = 0x00000001
Global Const $WHITE_BRUSH = 0x00000000
Global Const $BLACK_PEN = 0x00000007
Global Const $DC_PEN = 0x00000013
Global Const $WHITE_PEN = 0x00000006
Global Const $ANSI_FIXED_FONT = 0x0000000B
Global Const $ANSI_VAR_FONT = 0x0000000C
Global Const $DEVICE_DEFAULT_FONT = 0x0000000E
Global Const $DEFAULT_GUI_FONT = 0x00000011
Global Const $OEM_FIXED_FONT = 0x0000000A
Global Const $SYSTEM_FONT = 0x0000000D
Global Const $SYSTEM_FIXED_FONT = 0x00000010
Global Const $DEFAULT_PALETTE = 0x0000000F
Global Const $MB_PRECOMPOSED = 0x00000001
Global Const $MB_COMPOSITE = 0x00000002
Global Const $MB_USEGLYPHCHARS = 0x00000004
Global Const $ULW_ALPHA = 0x00000002
Global Const $ULW_COLORKEY = 0x00000001
Global Const $ULW_OPAQUE = 0x00000004
Global Const $WH_CALLWNDPROC = 0x00000004
Global Const $WH_CALLWNDPROCRET = 0x0000000C
Global Const $WH_CBT = 0x00000005
Global Const $WH_DEBUG = 0x00000009
Global Const $WH_FOREGROUNDIDLE = 0x0000000B
Global Const $WH_GETMESSAGE = 0x00000003
Global Const $WH_JOURNALPLAYBACK = 0x00000001
Global Const $WH_JOURNALRECORD = 0x00000000
Global Const $WH_KEYBOARD = 0x00000002
Global Const $WH_KEYBOARD_LL = 0x0000000D
Global Const $WH_MOUSE = 0x00000007
Global Const $WH_MOUSE_LL = 0x0000000E
Global Const $WH_MSGFILTER = -0x00000001
Global Const $WH_SHELL = 0x0000000A
Global Const $WH_SYSMSGFILTER = 0x00000006
Global Const $WPF_ASYNCWINDOWPLACEMENT = 0x00000004
Global Const $WPF_RESTORETOMAXIMIZED = 0x00000002
Global Const $WPF_SETMINPOSITION = 0x00000001
Global Const $KF_EXTENDED = 0x00000100
Global Const $KF_ALTDOWN = 0x00002000
Global Const $KF_UP = 0x00008000
Global Const $LLKHF_EXTENDED = BitShift($KF_EXTENDED, 0x00000008)
Global Const $LLKHF_INJECTED = 0x00000010
Global Const $LLKHF_ALTDOWN = BitShift($KF_ALTDOWN, 0x00000008)
Global Const $LLKHF_UP = BitShift($KF_UP, 0x00000008)
Global Const $OFN_ALLOWMULTISELECT = 0x00000200
Global Const $OFN_CREATEPROMPT = 0x00002000
Global Const $OFN_DONTADDTORECENT = 0x02000000
Global Const $OFN_ENABLEHOOK = 0x00000020
Global Const $OFN_ENABLEINCLUDENOTIFY = 0x00400000
Global Const $OFN_ENABLESIZING = 0x00800000
Global Const $OFN_ENABLETEMPLATE = 0x00000040
Global Const $OFN_ENABLETEMPLATEHANDLE = 0x00000080
Global Const $OFN_EXPLORER = 0x00080000
Global Const $OFN_EXTENSIONDIFFERENT = 0x00000400
Global Const $OFN_FILEMUSTEXIST = 0x00001000
Global Const $OFN_FORCESHOWHIDDEN = 0x10000000
Global Const $OFN_HIDEREADONLY = 0x00000004
Global Const $OFN_LONGNAMES = 0x00200000
Global Const $OFN_NOCHANGEDIR = 0x00000008
Global Const $OFN_NODEREFERENCELINKS = 0x00100000
Global Const $OFN_NOLONGNAMES = 0x00040000
Global Const $OFN_NONETWORKBUTTON = 0x00020000
Global Const $OFN_NOREADONLYRETURN = 0x00008000
Global Const $OFN_NOTESTFILECREATE = 0x00010000
Global Const $OFN_NOVALIDATE = 0x00000100
Global Const $OFN_OVERWRITEPROMPT = 0x00000002
Global Const $OFN_PATHMUSTEXIST = 0x00000800
Global Const $OFN_READONLY = 0x00000001
Global Const $OFN_SHAREAWARE = 0x00004000
Global Const $OFN_SHOWHELP = 0x00000010
Global Const $OFN_EX_NOPLACESBAR = 0x00000001
Global Const $TAGCURSORINFO = "dword Size;dword Flags;handle hCursor;" & $TAGPOINT
Global Const $TAGDISPLAY_DEVICE = "dword Size;wchar Name[32];wchar String[128];dword Flags;wchar ID[128];wchar Key[128]"
Global Const $TAGFLASHWINFO = "uint Size;hwnd hWnd;dword Flags;uint Count;dword TimeOut"
Global Const $TAGICONINFO = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"
Global Const $TAGMEMORYSTATUSEX = "dword Length;dword MemoryLoad;" & "uint64 TotalPhys;uint64 AvailPhys;uint64 TotalPageFile;uint64 AvailPageFile;" & "uint64 TotalVirtual;uint64 AvailVirtual;uint64 AvailExtendedVirtual"
Func _WinAPI_AttachConsole($IPROCESSID = -0x00000001)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "AttachConsole", "dword", $IPROCESSID)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_AttachConsole
Func _WinAPI_AttachThreadInput($IATTACH, $IATTACHTO, $FATTACH)
	Local $ARESULT = DllCall("user32.dll", "bool", "AttachThreadInput", "dword", $IATTACH, "dword", $IATTACHTO, "bool", $FATTACH)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_AttachThreadInput
Func _WinAPI_Beep($IFREQ = 0x000001F4, $IDURATION = 0x000003E8)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "Beep", "dword", $IFREQ, "dword", $IDURATION)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_Beep
Func _WinAPI_BitBlt($HDESTDC, $IXDEST, $IYDEST, $IWIDTH, $IHEIGHT, $HSRCDC, $IXSRC, $IYSRC, $IROP)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "BitBlt", "handle", $HDESTDC, "int", $IXDEST, "int", $IYDEST, "int", $IWIDTH, "int", $IHEIGHT, "handle", $HSRCDC, "int", $IXSRC, "int", $IYSRC, "dword", $IROP)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_BitBlt
Func _WinAPI_CallNextHookEx($HHK, $ICODE, $WPARAM, $LPARAM)
	Local $ARESULT = DllCall("user32.dll", "lresult", "CallNextHookEx", "handle", $HHK, "int", $ICODE, "wparam", $WPARAM, "lparam", $LPARAM)
	If @error Then Return SetError(@error, @extended, -0x00000001)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CallNextHookEx
Func _WinAPI_CallWindowProc($LPPREVWNDFUNC, $HWND, $MSG, $WPARAM, $LPARAM)
	Local $ARESULT = DllCall("user32.dll", "lresult", "CallWindowProc", "ptr", $LPPREVWNDFUNC, "hwnd", $HWND, "uint", $MSG, "wparam", $WPARAM, "lparam", $LPARAM)
	If @error Then Return SetError(@error, @extended, -0x00000001)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CallWindowProc
Func _WinAPI_ClientToScreen($HWND, ByRef $TPOINT)
	Local $PPOINT = DllStructGetPtr($TPOINT)
	DllCall("user32.dll", "bool", "ClientToScreen", "hwnd", $HWND, "ptr", $PPOINT)
	Return SetError(@error, @extended, $TPOINT)
EndFunc   ;==>_WinAPI_ClientToScreen
Func _WinAPI_CloseHandle($HOBJECT)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $HOBJECT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CloseHandle
Func _WinAPI_CombineRgn($HRGNDEST, $HRGNSRC1, $HRGNSRC2, $ICOMBINEMODE)
	Local $ARESULT = DllCall("gdi32.dll", "int", "CombineRgn", "handle", $HRGNDEST, "handle", $HRGNSRC1, "handle", $HRGNSRC2, "int", $ICOMBINEMODE)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CombineRgn
Func _WinAPI_CommDlgExtendedError()
	Local Const $CDERR_DIALOGFAILURE = 0x0000FFFF
	Local Const $CDERR_FINDRESFAILURE = 0x00000006
	Local Const $CDERR_INITIALIZATION = 0x00000002
	Local Const $CDERR_LOADRESFAILURE = 0x00000007
	Local Const $CDERR_LOADSTRFAILURE = 0x00000005
	Local Const $CDERR_LOCKRESFAILURE = 0x00000008
	Local Const $CDERR_MEMALLOCFAILURE = 0x00000009
	Local Const $CDERR_MEMLOCKFAILURE = 0x0000000A
	Local Const $CDERR_NOHINSTANCE = 0x00000004
	Local Const $CDERR_NOHOOK = 0x0000000B
	Local Const $CDERR_NOTEMPLATE = 0x00000003
	Local Const $CDERR_REGISTERMSGFAIL = 0x0000000C
	Local Const $CDERR_STRUCTSIZE = 0x00000001
	Local Const $FNERR_BUFFERTOOSMALL = 0x00003003
	Local Const $FNERR_INVALIDFILENAME = 0x00003002
	Local Const $FNERR_SUBCLASSFAILURE = 0x00003001
	Local $ARESULT = DllCall("comdlg32.dll", "dword", "CommDlgExtendedError")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Switch $ARESULT[0x00000000]
		Case $CDERR_DIALOGFAILURE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The dialog box could not be created." & @LF & "The common dialog box function's call to the DialogBox function failed." & @LF & "For example, this error occurs if the common dialog box call specifies an invalid window handle.")
		Case $CDERR_FINDRESFAILURE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The common dialog box function failed to find a specified resource.")
		Case $CDERR_INITIALIZATION
			Return SetError($ARESULT[0x00000000], 0x00000000, "The common dialog box function failed during initialization." & @LF & "This error often occurs when sufficient memory is not available.")
		Case $CDERR_LOADRESFAILURE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The common dialog box function failed to load a specified resource.")
		Case $CDERR_LOADSTRFAILURE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The common dialog box function failed to load a specified string.")
		Case $CDERR_LOCKRESFAILURE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The common dialog box function failed to lock a specified resource.")
		Case $CDERR_MEMALLOCFAILURE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The common dialog box function was unable to allocate memory for internal structures.")
		Case $CDERR_MEMLOCKFAILURE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The common dialog box function was unable to lock the memory associated with a handle.")
		Case $CDERR_NOHINSTANCE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding instance handle.")
		Case $CDERR_NOHOOK
			Return SetError($ARESULT[0x00000000], 0x00000000, "The ENABLEHOOK flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a pointer to a corresponding hook procedure.")
		Case $CDERR_NOTEMPLATE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding template.")
		Case $CDERR_REGISTERMSGFAIL
			Return SetError($ARESULT[0x00000000], 0x00000000, "The RegisterWindowMessage function returned an error code when it was called by the common dialog box function.")
		Case $CDERR_STRUCTSIZE
			Return SetError($ARESULT[0x00000000], 0x00000000, "The lStructSize member of the initialization structure for the corresponding common dialog box is invalid")
		Case $FNERR_BUFFERTOOSMALL
			Return SetError($ARESULT[0x00000000], 0x00000000, "The buffer pointed to by the lpstrFile member of the OPENFILENAME structure is too small for the file name specified by the user." & @LF & "The first two bytes of the lpstrFile buffer contain an integer value specifying the size, in TCHARs, required to receive the full name.")
		Case $FNERR_INVALIDFILENAME
			Return SetError($ARESULT[0x00000000], 0x00000000, "A file name is invalid.")
		Case $FNERR_SUBCLASSFAILURE
			Return SetError($ARESULT[0x00000000], 0x00000000, "An attempt to subclass a list box failed because sufficient memory was not available.")
	EndSwitch
	Return Hex($ARESULT[0x00000000])
EndFunc   ;==>_WinAPI_CommDlgExtendedError
Func _WinAPI_CopyIcon($HICON)
	Local $ARESULT = DllCall("user32.dll", "handle", "CopyIcon", "handle", $HICON)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CopyIcon
Func _WinAPI_CreateBitmap($IWIDTH, $IHEIGHT, $IPLANES = 0x00000001, $IBITSPERPEL = 0x00000001, $PBITS = 0x00000000)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateBitmap", "int", $IWIDTH, "int", $IHEIGHT, "uint", $IPLANES, "uint", $IBITSPERPEL, "ptr", $PBITS)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateBitmap
Func _WinAPI_CreateCompatibleBitmap($HDC, $IWIDTH, $IHEIGHT)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateCompatibleBitmap", "handle", $HDC, "int", $IWIDTH, "int", $IHEIGHT)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateCompatibleBitmap
Func _WinAPI_CreateCompatibleDC($HDC)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateCompatibleDC", "handle", $HDC)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateCompatibleDC
Func _WinAPI_CreateEvent($PATTRIBUTES = 0x00000000, $FMANUALRESET = True, $FINITIALSTATE = True, $SNAME = "")
	Local $SNAMETYPE = "wstr"
	If $SNAME = "" Then
		$SNAME = 0x00000000
		$SNAMETYPE = "ptr"
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "handle", "CreateEventW", "ptr", $PATTRIBUTES, "bool", $FMANUALRESET, "bool", $FINITIALSTATE, $SNAMETYPE, $SNAME)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateEvent
Func _WinAPI_CreateFile($SFILENAME, $ICREATION, $IACCESS = 0x00000004, $ISHARE = 0x00000000, $IATTRIBUTES = 0x00000000, $PSECURITY = 0x00000000)
	Local $IDA = 0x00000000, $ISM = 0x00000000, $ICD = 0x00000000, $IFA = 0x00000000
	If BitAND($IACCESS, 0x00000001) <> 0x00000000 Then $IDA = BitOR($IDA, $GENERIC_EXECUTE)
	If BitAND($IACCESS, 0x00000002) <> 0x00000000 Then $IDA = BitOR($IDA, $GENERIC_READ)
	If BitAND($IACCESS, 0x00000004) <> 0x00000000 Then $IDA = BitOR($IDA, $GENERIC_WRITE)
	If BitAND($ISHARE, 0x00000001) <> 0x00000000 Then $ISM = BitOR($ISM, $FILE_SHARE_DELETE)
	If BitAND($ISHARE, 0x00000002) <> 0x00000000 Then $ISM = BitOR($ISM, $FILE_SHARE_READ)
	If BitAND($ISHARE, 0x00000004) <> 0x00000000 Then $ISM = BitOR($ISM, $FILE_SHARE_WRITE)
	Switch $ICREATION
		Case 0x00000000
			$ICD = $CREATE_NEW
		Case 0x00000001
			$ICD = $CREATE_ALWAYS
		Case 0x00000002
			$ICD = $OPEN_EXISTING
		Case 0x00000003
			$ICD = $OPEN_ALWAYS
		Case 0x00000004
			$ICD = $TRUNCATE_EXISTING
	EndSwitch
	If BitAND($IATTRIBUTES, 0x00000001) <> 0x00000000 Then $IFA = BitOR($IFA, $FILE_ATTRIBUTE_ARCHIVE)
	If BitAND($IATTRIBUTES, 0x00000002) <> 0x00000000 Then $IFA = BitOR($IFA, $FILE_ATTRIBUTE_HIDDEN)
	If BitAND($IATTRIBUTES, 0x00000004) <> 0x00000000 Then $IFA = BitOR($IFA, $FILE_ATTRIBUTE_READONLY)
	If BitAND($IATTRIBUTES, 0x00000008) <> 0x00000000 Then $IFA = BitOR($IFA, $FILE_ATTRIBUTE_SYSTEM)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "CreateFileW", "wstr", $SFILENAME, "dword", $IDA, "dword", $ISM, "ptr", $PSECURITY, "dword", $ICD, "dword", $IFA, "ptr", 0x00000000)
	If @error Or $ARESULT[0x00000000] = Ptr(-0x00000001) Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateFile
Func _WinAPI_CreateFont($NHEIGHT, $NWIDTH, $NESCAPE = 0x00000000, $NORIENTN = 0x00000000, $FNWEIGHT = $__WINAPICONSTANT_FW_NORMAL, $BITALIC = False, $BUNDERLINE = False, $BSTRIKEOUT = False, $NCHARSET = $__WINAPICONSTANT_DEFAULT_CHARSET, $NOUTPUTPREC = $__WINAPICONSTANT_OUT_DEFAULT_PRECIS, $NCLIPPREC = $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS, $NQUALITY = $__WINAPICONSTANT_DEFAULT_QUALITY, $NPITCH = 0x00000000, $SZFACE = "Arial")
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateFontW", "int", $NHEIGHT, "int", $NWIDTH, "int", $NESCAPE, "int", $NORIENTN, "int", $FNWEIGHT, "dword", $BITALIC, "dword", $BUNDERLINE, "dword", $BSTRIKEOUT, "dword", $NCHARSET, "dword", $NOUTPUTPREC, "dword", $NCLIPPREC, "dword", $NQUALITY, "dword", $NPITCH, "wstr", $SZFACE)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateFont
Func _WinAPI_CreateFontIndirect($TLOGFONT)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateFontIndirectW", "ptr", DllStructGetPtr($TLOGFONT))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateFontIndirect
Func _WinAPI_CreatePen($IPENSTYLE, $IWIDTH, $NCOLOR)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreatePen", "int", $IPENSTYLE, "int", $IWIDTH, "dword", $NCOLOR)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreatePen
Func _WinAPI_CreateProcess($SAPPNAME, $SCOMMAND, $PSECURITY, $PTHREAD, $FINHERIT, $IFLAGS, $PENVIRON, $SDIR, $PSTARTUPINFO, $PPROCESS)
	Local $PCOMMAND = 0x00000000
	Local $SAPPNAMETYPE = "wstr", $SDIRTYPE = "wstr"
	If $SAPPNAME = "" Then
		$SAPPNAMETYPE = "ptr"
		$SAPPNAME = 0x00000000
	EndIf
	If $SCOMMAND <> "" Then
		Local $TCOMMAND = DllStructCreate("wchar Text[" & 0x00000104 + 0x00000001 & "]")
		$PCOMMAND = DllStructGetPtr($TCOMMAND)
		DllStructSetData($TCOMMAND, "Text", $SCOMMAND)
	EndIf
	If $SDIR = "" Then
		$SDIRTYPE = "ptr"
		$SDIR = 0x00000000
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "bool", "CreateProcessW", $SAPPNAMETYPE, $SAPPNAME, "ptr", $PCOMMAND, "ptr", $PSECURITY, "ptr", $PTHREAD, "bool", $FINHERIT, "dword", $IFLAGS, "ptr", $PENVIRON, $SDIRTYPE, $SDIR, "ptr", $PSTARTUPINFO, "ptr", $PPROCESS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateProcess
Func _WinAPI_CreateRectRgn($ILEFTRECT, $ITOPRECT, $IRIGHTRECT, $IBOTTOMRECT)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateRectRgn", "int", $ILEFTRECT, "int", $ITOPRECT, "int", $IRIGHTRECT, "int", $IBOTTOMRECT)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateRectRgn
Func _WinAPI_CreateRoundRectRgn($ILEFTRECT, $ITOPRECT, $IRIGHTRECT, $IBOTTOMRECT, $IWIDTHELLIPSE, $IHEIGHTELLIPSE)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateRoundRectRgn", "int", $ILEFTRECT, "int", $ITOPRECT, "int", $IRIGHTRECT, "int", $IBOTTOMRECT, "int", $IWIDTHELLIPSE, "int", $IHEIGHTELLIPSE)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateRoundRectRgn
Func _WinAPI_CreateSolidBitmap($HWND, $ICOLOR, $IWIDTH, $IHEIGHT, $BRGB = 0x00000001)
	Local $HDC = _WinAPI_GetDC($HWND)
	Local $HDESTDC = _WinAPI_CreateCompatibleDC($HDC)
	Local $HBITMAP = _WinAPI_CreateCompatibleBitmap($HDC, $IWIDTH, $IHEIGHT)
	Local $HOLD = _WinAPI_SelectObject($HDESTDC, $HBITMAP)
	Local $TRECT = DllStructCreate($TAGRECT)
	DllStructSetData($TRECT, 0x00000001, 0x00000000)
	DllStructSetData($TRECT, 0x00000002, 0x00000000)
	DllStructSetData($TRECT, 0x00000003, $IWIDTH)
	DllStructSetData($TRECT, 0x00000004, $IHEIGHT)
	If $BRGB Then
		$ICOLOR = BitOR(BitAND($ICOLOR, 0x0000FF00), BitShift(BitAND($ICOLOR, 0x000000FF), -0x00000010), BitShift(BitAND($ICOLOR, 0x00FF0000), 0x00000010))
	EndIf
	Local $HBRUSH = _WinAPI_CreateSolidBrush($ICOLOR)
	_WinAPI_FillRect($HDESTDC, DllStructGetPtr($TRECT), $HBRUSH)
	If @error Then
		_WinAPI_DeleteObject($HBITMAP)
		$HBITMAP = 0x00000000
	EndIf
	_WinAPI_DeleteObject($HBRUSH)
	_WinAPI_ReleaseDC($HWND, $HDC)
	_WinAPI_SelectObject($HDESTDC, $HOLD)
	_WinAPI_DeleteDC($HDESTDC)
	If Not $HBITMAP Then Return SetError(0x00000001, 0x00000000, 0x00000000)
	Return $HBITMAP
EndFunc   ;==>_WinAPI_CreateSolidBitmap
Func _WinAPI_CreateSolidBrush($NCOLOR)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "CreateSolidBrush", "dword", $NCOLOR)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateSolidBrush
Func _WinAPI_CreateWindowEx($IEXSTYLE, $SCLASS, $SNAME, $ISTYLE, $IX, $IY, $IWIDTH, $IHEIGHT, $HPARENT, $HMENU = 0x00000000, $HINSTANCE = 0x00000000, $PPARAM = 0x00000000)
	If $HINSTANCE = 0x00000000 Then $HINSTANCE = _WinAPI_GetModuleHandle("")
	Local $ARESULT = DllCall("user32.dll", "hwnd", "CreateWindowExW", "dword", $IEXSTYLE, "wstr", $SCLASS, "wstr", $SNAME, "dword", $ISTYLE, "int", $IX, "int", $IY, "int", $IWIDTH, "int", $IHEIGHT, "hwnd", $HPARENT, "handle", $HMENU, "handle", $HINSTANCE, "ptr", $PPARAM)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_CreateWindowEx
Func _WinAPI_DefWindowProc($HWND, $IMSG, $IWPARAM, $ILPARAM)
	Local $ARESULT = DllCall("user32.dll", "lresult", "DefWindowProc", "hwnd", $HWND, "uint", $IMSG, "wparam", $IWPARAM, "lparam", $ILPARAM)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DefWindowProc
Func _WinAPI_DeleteDC($HDC)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "DeleteDC", "handle", $HDC)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DeleteDC
Func _WinAPI_DeleteObject($HOBJECT)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "DeleteObject", "handle", $HOBJECT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DeleteObject
Func _WinAPI_DestroyIcon($HICON)
	Local $ARESULT = DllCall("user32.dll", "bool", "DestroyIcon", "handle", $HICON)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DestroyIcon
Func _WinAPI_DestroyWindow($HWND)
	Local $ARESULT = DllCall("user32.dll", "bool", "DestroyWindow", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DestroyWindow
Func _WinAPI_DrawEdge($HDC, $PTRRECT, $NEDGETYPE, $GRFFLAGS)
	Local $ARESULT = DllCall("user32.dll", "bool", "DrawEdge", "handle", $HDC, "ptr", $PTRRECT, "uint", $NEDGETYPE, "uint", $GRFFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DrawEdge
Func _WinAPI_DrawFrameControl($HDC, $PTRRECT, $NTYPE, $NSTATE)
	Local $ARESULT = DllCall("user32.dll", "bool", "DrawFrameControl", "handle", $HDC, "ptr", $PTRRECT, "uint", $NTYPE, "uint", $NSTATE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DrawFrameControl
Func _WinAPI_DrawIcon($HDC, $IX, $IY, $HICON)
	Local $ARESULT = DllCall("user32.dll", "bool", "DrawIcon", "handle", $HDC, "int", $IX, "int", $IY, "handle", $HICON)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DrawIcon
Func _WinAPI_DrawIconEx($HDC, $IX, $IY, $HICON, $IWIDTH = 0x00000000, $IHEIGHT = 0x00000000, $ISTEP = 0x00000000, $HBRUSH = 0x00000000, $IFLAGS = 0x00000003)
	Local $IOPTIONS
	Switch $IFLAGS
		Case 0x00000001
			$IOPTIONS = $__WINAPICONSTANT_DI_MASK
		Case 0x00000002
			$IOPTIONS = $__WINAPICONSTANT_DI_IMAGE
		Case 0x00000003
			$IOPTIONS = $__WINAPICONSTANT_DI_NORMAL
		Case 0x00000004
			$IOPTIONS = $__WINAPICONSTANT_DI_COMPAT
		Case 0x00000005
			$IOPTIONS = $__WINAPICONSTANT_DI_DEFAULTSIZE
		Case Else
			$IOPTIONS = $__WINAPICONSTANT_DI_NOMIRROR
	EndSwitch
	Local $ARESULT = DllCall("user32.dll", "bool", "DrawIconEx", "handle", $HDC, "int", $IX, "int", $IY, "handle", $HICON, "int", $IWIDTH, "int", $IHEIGHT, "uint", $ISTEP, "handle", $HBRUSH, "uint", $IOPTIONS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DrawIconEx
Func _WinAPI_DrawLine($HDC, $IX1, $IY1, $IX2, $IY2)
	_WinAPI_MoveTo($HDC, $IX1, $IY1)
	If @error Then Return SetError(@error, @extended, False)
	_WinAPI_LineTo($HDC, $IX2, $IY2)
	If @error Then Return SetError(@error, @extended, False)
	Return True
EndFunc   ;==>_WinAPI_DrawLine
Func _WinAPI_DrawText($HDC, $STEXT, ByRef $TRECT, $IFLAGS)
	Local $ARESULT = DllCall("user32.dll", "int", "DrawTextW", "handle", $HDC, "wstr", $STEXT, "int", -0x00000001, "ptr", DllStructGetPtr($TRECT), "uint", $IFLAGS)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_DrawText
Func _WinAPI_EnableWindow($HWND, $FENABLE = True)
	Local $ARESULT = DllCall("user32.dll", "bool", "EnableWindow", "hwnd", $HWND, "bool", $FENABLE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_EnableWindow
Func _WinAPI_EnumDisplayDevices($SDEVICE, $IDEVNUM)
	Local $PNAME = 0x00000000, $IFLAGS = 0x00000000, $ADEVICE[0x00000005]
	If $SDEVICE <> "" Then
		Local $TNAME = DllStructCreate("wchar Text[" & StringLen($SDEVICE) + 0x00000001 & "]")
		$PNAME = DllStructGetPtr($TNAME)
		DllStructSetData($TNAME, "Text", $SDEVICE)
	EndIf
	Local $TDEVICE = DllStructCreate($TAGDISPLAY_DEVICE)
	Local $PDEVICE = DllStructGetPtr($TDEVICE)
	Local $IDEVICE = DllStructGetSize($TDEVICE)
	DllStructSetData($TDEVICE, "Size", $IDEVICE)
	DllCall("user32.dll", "bool", "EnumDisplayDevicesW", "ptr", $PNAME, "dword", $IDEVNUM, "ptr", $PDEVICE, "dword", 0x00000001)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Local $IN = DllStructGetData($TDEVICE, "Flags")
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_ATTACHED_TO_DESKTOP) <> 0x00000000 Then $IFLAGS = BitOR($IFLAGS, 0x00000001)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_PRIMARY_DEVICE) <> 0x00000000 Then $IFLAGS = BitOR($IFLAGS, 0x00000002)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_MIRRORING_DRIVER) <> 0x00000000 Then $IFLAGS = BitOR($IFLAGS, 0x00000004)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_VGA_COMPATIBLE) <> 0x00000000 Then $IFLAGS = BitOR($IFLAGS, 0x00000008)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_REMOVABLE) <> 0x00000000 Then $IFLAGS = BitOR($IFLAGS, 0x00000010)
	If BitAND($IN, $__WINAPICONSTANT_DISPLAY_DEVICE_MODESPRUNED) <> 0x00000000 Then $IFLAGS = BitOR($IFLAGS, 0x00000020)
	$ADEVICE[0x00000000] = True
	$ADEVICE[0x00000001] = DllStructGetData($TDEVICE, "Name")
	$ADEVICE[0x00000002] = DllStructGetData($TDEVICE, "String")
	$ADEVICE[0x00000003] = $IFLAGS
	$ADEVICE[0x00000004] = DllStructGetData($TDEVICE, "ID")
	Return $ADEVICE
EndFunc   ;==>_WinAPI_EnumDisplayDevices
Func _WinAPI_EnumWindows($FVISIBLE = True, $HWND = Default)
	__WINAPI_ENUMWINDOWSINIT()
	If $HWND = Default Then $HWND = _WinAPI_GetDesktopWindow()
	__WINAPI_ENUMWINDOWSCHILD($HWND, $FVISIBLE)
	Return $__GAWINLIST_WINAPI
EndFunc   ;==>_WinAPI_EnumWindows
Func __WINAPI_ENUMWINDOWSADD($HWND, $SCLASS = "")
	If $SCLASS = "" Then $SCLASS = _WinAPI_GetClassName($HWND)
	$__GAWINLIST_WINAPI[0x00000000][0x00000000] += 0x00000001
	Local $ICOUNT = $__GAWINLIST_WINAPI[0x00000000][0x00000000]
	If $ICOUNT >= $__GAWINLIST_WINAPI[0x00000000][0x00000001] Then
		ReDim $__GAWINLIST_WINAPI[$ICOUNT + 0x00000040][0x00000002]
		$__GAWINLIST_WINAPI[0x00000000][0x00000001] += 0x00000040
	EndIf
	$__GAWINLIST_WINAPI[$ICOUNT][0x00000000] = $HWND
	$__GAWINLIST_WINAPI[$ICOUNT][0x00000001] = $SCLASS
EndFunc   ;==>__WINAPI_ENUMWINDOWSADD
Func __WINAPI_ENUMWINDOWSCHILD($HWND, $FVISIBLE = True)
	$HWND = _WinAPI_GetWindow($HWND, $__WINAPICONSTANT_GW_CHILD)
	While $HWND <> 0x00000000
		If (Not $FVISIBLE) Or _WinAPI_IsWindowVisible($HWND) Then
			__WINAPI_ENUMWINDOWSCHILD($HWND, $FVISIBLE)
			__WINAPI_ENUMWINDOWSADD($HWND)
		EndIf
		$HWND = _WinAPI_GetWindow($HWND, $__WINAPICONSTANT_GW_HWNDNEXT)
	WEnd
EndFunc   ;==>__WINAPI_ENUMWINDOWSCHILD
Func __WINAPI_ENUMWINDOWSINIT()
	ReDim $__GAWINLIST_WINAPI[0x00000040][0x00000002]
	$__GAWINLIST_WINAPI[0x00000000][0x00000000] = 0x00000000
	$__GAWINLIST_WINAPI[0x00000000][0x00000001] = 0x00000040
EndFunc   ;==>__WINAPI_ENUMWINDOWSINIT
Func _WinAPI_EnumWindowsPopup()
	__WINAPI_ENUMWINDOWSINIT()
	Local $HWND = _WinAPI_GetWindow(_WinAPI_GetDesktopWindow(), $__WINAPICONSTANT_GW_CHILD)
	Local $SCLASS
	While $HWND <> 0x00000000
		If _WinAPI_IsWindowVisible($HWND) Then
			$SCLASS = _WinAPI_GetClassName($HWND)
			If $SCLASS = "#32768" Then
				__WINAPI_ENUMWINDOWSADD($HWND)
			ElseIf $SCLASS = "ToolbarWindow32" Then
				__WINAPI_ENUMWINDOWSADD($HWND)
			ElseIf $SCLASS = "ToolTips_Class32" Then
				__WINAPI_ENUMWINDOWSADD($HWND)
			ElseIf $SCLASS = "BaseBar" Then
				__WINAPI_ENUMWINDOWSCHILD($HWND)
			EndIf
		EndIf
		$HWND = _WinAPI_GetWindow($HWND, $__WINAPICONSTANT_GW_HWNDNEXT)
	WEnd
	Return $__GAWINLIST_WINAPI
EndFunc   ;==>_WinAPI_EnumWindowsPopup
Func _WinAPI_EnumWindowsTop()
	__WINAPI_ENUMWINDOWSINIT()
	Local $HWND = _WinAPI_GetWindow(_WinAPI_GetDesktopWindow(), $__WINAPICONSTANT_GW_CHILD)
	While $HWND <> 0x00000000
		If _WinAPI_IsWindowVisible($HWND) Then __WINAPI_ENUMWINDOWSADD($HWND)
		$HWND = _WinAPI_GetWindow($HWND, $__WINAPICONSTANT_GW_HWNDNEXT)
	WEnd
	Return $__GAWINLIST_WINAPI
EndFunc   ;==>_WinAPI_EnumWindowsTop
Func _WinAPI_ExpandEnvironmentStrings($SSTRING)
	Local $ARESULT = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $SSTRING, "wstr", "", "dword", 0x00001000)
	If @error Then Return SetError(@error, @extended, "")
	Return $ARESULT[0x00000002]
EndFunc   ;==>_WinAPI_ExpandEnvironmentStrings
Func _WinAPI_ExtractIconEx($SFILE, $IINDEX, $PLARGE, $PSMALL, $IICONS)
	Local $ARESULT = DllCall("shell32.dll", "uint", "ExtractIconExW", "wstr", $SFILE, "int", $IINDEX, "handle", $PLARGE, "handle", $PSMALL, "uint", $IICONS)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_ExtractIconEx
Func _WinAPI_FatalAppExit($SMESSAGE)
	DllCall("kernel32.dll", "none", "FatalAppExitW", "uint", 0x00000000, "wstr", $SMESSAGE)
	If @error Then Return SetError(@error, @extended)
EndFunc   ;==>_WinAPI_FatalAppExit
Func _WinAPI_FillRect($HDC, $PTRRECT, $HBRUSH)
	Local $ARESULT
	If IsPtr($HBRUSH) Then
		$ARESULT = DllCall("user32.dll", "int", "FillRect", "handle", $HDC, "ptr", $PTRRECT, "handle", $HBRUSH)
	Else
		$ARESULT = DllCall("user32.dll", "int", "FillRect", "handle", $HDC, "ptr", $PTRRECT, "dword_ptr", $HBRUSH)
	EndIf
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_FillRect
Func _WinAPI_FindExecutable($SFILENAME, $SDIRECTORY = "")
	Local $ARESULT = DllCall("shell32.dll", "INT", "FindExecutableW", "wstr", $SFILENAME, "wstr", $SDIRECTORY, "wstr", "")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return SetExtended($ARESULT[0x00000000], $ARESULT[0x00000003])
EndFunc   ;==>_WinAPI_FindExecutable
Func _WinAPI_FindWindow($SCLASSNAME, $SWINDOWNAME)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "FindWindowW", "wstr", $SCLASSNAME, "wstr", $SWINDOWNAME)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_FindWindow
Func _WinAPI_FlashWindow($HWND, $FINVERT = True)
	Local $ARESULT = DllCall("user32.dll", "bool", "FlashWindow", "hwnd", $HWND, "bool", $FINVERT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_FlashWindow
Func _WinAPI_FlashWindowEx($HWND, $IFLAGS = 0x00000003, $ICOUNT = 0x00000003, $ITIMEOUT = 0x00000000)
	Local $TFLASH = DllStructCreate($TAGFLASHWINFO)
	Local $PFLASH = DllStructGetPtr($TFLASH)
	Local $IFLASH = DllStructGetSize($TFLASH)
	Local $IMODE = 0x00000000
	If BitAND($IFLAGS, 0x00000001) <> 0x00000000 Then $IMODE = BitOR($IMODE, $__WINAPICONSTANT_FLASHW_CAPTION)
	If BitAND($IFLAGS, 0x00000002) <> 0x00000000 Then $IMODE = BitOR($IMODE, $__WINAPICONSTANT_FLASHW_TRAY)
	If BitAND($IFLAGS, 0x00000004) <> 0x00000000 Then $IMODE = BitOR($IMODE, $__WINAPICONSTANT_FLASHW_TIMER)
	If BitAND($IFLAGS, 0x00000008) <> 0x00000000 Then $IMODE = BitOR($IMODE, $__WINAPICONSTANT_FLASHW_TIMERNOFG)
	DllStructSetData($TFLASH, "Size", $IFLASH)
	DllStructSetData($TFLASH, "hWnd", $HWND)
	DllStructSetData($TFLASH, "Flags", $IMODE)
	DllStructSetData($TFLASH, "Count", $ICOUNT)
	DllStructSetData($TFLASH, "Timeout", $ITIMEOUT)
	Local $ARESULT = DllCall("user32.dll", "bool", "FlashWindowEx", "ptr", $PFLASH)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_FlashWindowEx
Func _WinAPI_FloatToInt($NFLOAT)
	Local $TFLOAT = DllStructCreate("float")
	Local $TINT = DllStructCreate("int", DllStructGetPtr($TFLOAT))
	DllStructSetData($TFLOAT, 0x00000001, $NFLOAT)
	Return DllStructGetData($TINT, 0x00000001)
EndFunc   ;==>_WinAPI_FloatToInt
Func _WinAPI_FlushFileBuffers($HFILE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "FlushFileBuffers", "handle", $HFILE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_FlushFileBuffers
Func _WinAPI_FormatMessage($IFLAGS, $PSOURCE, $IMESSAGEID, $ILANGUAGEID, ByRef $PBUFFER, $ISIZE, $VARGUMENTS)
	Local $SBUFFERTYPE = "ptr"
	If IsString($PBUFFER) Then $SBUFFERTYPE = "wstr"
	Local $ARESULT = DllCall("Kernel32.dll", "dword", "FormatMessageW", "dword", $IFLAGS, "ptr", $PSOURCE, "dword", $IMESSAGEID, "dword", $ILANGUAGEID, $SBUFFERTYPE, $PBUFFER, "dword", $ISIZE, "ptr", $VARGUMENTS)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If $SBUFFERTYPE = "wstr" Then $PBUFFER = $ARESULT[0x00000005]
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_FormatMessage
Func _WinAPI_FrameRect($HDC, $PTRRECT, $HBRUSH)
	Local $ARESULT = DllCall("user32.dll", "int", "FrameRect", "handle", $HDC, "ptr", $PTRRECT, "handle", $HBRUSH)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_FrameRect
Func _WinAPI_FreeLibrary($HMODULE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "FreeLibrary", "handle", $HMODULE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_FreeLibrary
Func _WinAPI_GetAncestor($HWND, $IFLAGS = 0x00000001)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetAncestor", "hwnd", $HWND, "uint", $IFLAGS)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetAncestor
Func _WinAPI_GetAsyncKeyState($IKEY)
	Local $ARESULT = DllCall("user32.dll", "short", "GetAsyncKeyState", "int", $IKEY)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetAsyncKeyState
Func _WinAPI_GetBkMode($HDC)
	Local $ARESULT = DllCall("gdi32.dll", "int", "GetBkMode", "handle", $HDC)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetBkMode
Func _WinAPI_GetClassName($HWND)
	If Not IsHWnd($HWND) Then $HWND = GUICtrlGetHandle($HWND)
	Local $ARESULT = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $HWND, "wstr", "", "int", 0x00001000)
	If @error Then Return SetError(@error, @extended, False)
	Return SetExtended($ARESULT[0x00000000], $ARESULT[0x00000002])
EndFunc   ;==>_WinAPI_GetClassName
Func _WinAPI_GetClientHeight($HWND)
	Local $TRECT = _WinAPI_GetClientRect($HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return DllStructGetData($TRECT, "Bottom") - DllStructGetData($TRECT, "Top")
EndFunc   ;==>_WinAPI_GetClientHeight
Func _WinAPI_GetClientWidth($HWND)
	Local $TRECT = _WinAPI_GetClientRect($HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return DllStructGetData($TRECT, "Right") - DllStructGetData($TRECT, "Left")
EndFunc   ;==>_WinAPI_GetClientWidth
Func _WinAPI_GetClientRect($HWND)
	Local $TRECT = DllStructCreate($TAGRECT)
	DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $HWND, "ptr", DllStructGetPtr($TRECT))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $TRECT
EndFunc   ;==>_WinAPI_GetClientRect
Func _WinAPI_GetCurrentProcess()
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetCurrentProcess
Func _WinAPI_GetCurrentProcessID()
	Local $ARESULT = DllCall("kernel32.dll", "dword", "GetCurrentProcessId")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetCurrentProcessID
Func _WinAPI_GetCurrentThread()
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GetCurrentThread")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetCurrentThread
Func _WinAPI_GetCurrentThreadId()
	Local $ARESULT = DllCall("kernel32.dll", "dword", "GetCurrentThreadId")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetCurrentThreadId
Func _WinAPI_GetCursorInfo()
	Local $TCURSOR = DllStructCreate($TAGCURSORINFO)
	Local $ICURSOR = DllStructGetSize($TCURSOR)
	DllStructSetData($TCURSOR, "Size", $ICURSOR)
	DllCall("user32.dll", "bool", "GetCursorInfo", "ptr", DllStructGetPtr($TCURSOR))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Local $ACURSOR[0x00000005]
	$ACURSOR[0x00000000] = True
	$ACURSOR[0x00000001] = DllStructGetData($TCURSOR, "Flags") <> 0x00000000
	$ACURSOR[0x00000002] = DllStructGetData($TCURSOR, "hCursor")
	$ACURSOR[0x00000003] = DllStructGetData($TCURSOR, "X")
	$ACURSOR[0x00000004] = DllStructGetData($TCURSOR, "Y")
	Return $ACURSOR
EndFunc   ;==>_WinAPI_GetCursorInfo
Func _WinAPI_GetDC($HWND)
	Local $ARESULT = DllCall("user32.dll", "handle", "GetDC", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetDC
Func _WinAPI_GetDesktopWindow()
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetDesktopWindow")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetDesktopWindow
Func _WinAPI_GetDeviceCaps($HDC, $IINDEX)
	Local $ARESULT = DllCall("gdi32.dll", "int", "GetDeviceCaps", "handle", $HDC, "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetDeviceCaps
Func _WinAPI_GetDIBits($HDC, $HBMP, $ISTARTSCAN, $ISCANLINES, $PBITS, $PBI, $IUSAGE)
	Local $ARESULT = DllCall("gdi32.dll", "int", "GetDIBits", "handle", $HDC, "handle", $HBMP, "uint", $ISTARTSCAN, "uint", $ISCANLINES, "ptr", $PBITS, "ptr", $PBI, "uint", $IUSAGE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetDIBits
Func _WinAPI_GetDlgCtrlID($HWND)
	Local $ARESULT = DllCall("user32.dll", "int", "GetDlgCtrlID", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetDlgCtrlID
Func _WinAPI_GetDlgItem($HWND, $IITEMID)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetDlgItem", "hwnd", $HWND, "int", $IITEMID)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetDlgItem
Func _WinAPI_GetFocus()
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetFocus")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetFocus
Func _WinAPI_GetForegroundWindow()
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetForegroundWindow")
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetForegroundWindow
Func _WinAPI_GetGuiResources($IFLAG = 0x00000000, $HPROCESS = -0x00000001)
	If $HPROCESS = -0x00000001 Then $HPROCESS = _WinAPI_GetCurrentProcess()
	Local $ARESULT = DllCall("user32.dll", "dword", "GetGuiResources", "handle", $HPROCESS, "dword", $IFLAG)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetGuiResources
Func _WinAPI_GetIconInfo($HICON)
	Local $TINFO = DllStructCreate($TAGICONINFO)
	DllCall("user32.dll", "bool", "GetIconInfo", "handle", $HICON, "ptr", DllStructGetPtr($TINFO))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Local $AICON[0x00000006]
	$AICON[0x00000000] = True
	$AICON[0x00000001] = DllStructGetData($TINFO, "Icon") <> 0x00000000
	$AICON[0x00000002] = DllStructGetData($TINFO, "XHotSpot")
	$AICON[0x00000003] = DllStructGetData($TINFO, "YHotSpot")
	$AICON[0x00000004] = DllStructGetData($TINFO, "hMask")
	$AICON[0x00000005] = DllStructGetData($TINFO, "hColor")
	Return $AICON
EndFunc   ;==>_WinAPI_GetIconInfo
Func _WinAPI_GetFileSizeEx($HFILE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GetFileSizeEx", "handle", $HFILE, "int64*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000002]
EndFunc   ;==>_WinAPI_GetFileSizeEx
Func _WinAPI_GetLastErrorMessage()
	Local $TBUFFERPTR = DllStructCreate("ptr")
	Local $PBUFFERPTR = DllStructGetPtr($TBUFFERPTR)
	Local $NCOUNT = _WinAPI_FormatMessage(BitOR($__WINAPICONSTANT_FORMAT_MESSAGE_ALLOCATE_BUFFER, $__WINAPICONSTANT_FORMAT_MESSAGE_FROM_SYSTEM), 0x00000000, _WinAPI_GetLastError(), 0x00000000, $PBUFFERPTR, 0x00000000, 0x00000000)
	If @error Then Return SetError(@error, 0x00000000, "")
	Local $STEXT = ""
	Local $PBUFFER = DllStructGetData($TBUFFERPTR, 0x00000001)
	If $PBUFFER Then
		If $NCOUNT > 0x00000000 Then
			Local $TBUFFER = DllStructCreate("wchar[" & ($NCOUNT + 0x00000001) & "]", $PBUFFER)
			$STEXT = DllStructGetData($TBUFFER, 0x00000001)
		EndIf
		_WinAPI_LocalFree($PBUFFER)
	EndIf
	Return $STEXT
EndFunc   ;==>_WinAPI_GetLastErrorMessage
Func _WinAPI_GetLayeredWindowAttributes($HWND, ByRef $I_TRANSCOLOR, ByRef $TRANSPARENCY, $ASCOLORREF = False)
	$I_TRANSCOLOR = -0x00000001
	$TRANSPARENCY = -0x00000001
	Local $ARESULT = DllCall("user32.dll", "bool", "GetLayeredWindowAttributes", "hwnd", $HWND, "dword*", $I_TRANSCOLOR, "byte*", $TRANSPARENCY, "dword*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If Not $ASCOLORREF Then
		$ARESULT[0x00000002] = Int(BinaryMid($ARESULT[0x00000002], 0x00000003, 0x00000001) & BinaryMid($ARESULT[0x00000002], 0x00000002, 0x00000001) & BinaryMid($ARESULT[0x00000002], 0x00000001, 0x00000001))
	EndIf
	$I_TRANSCOLOR = $ARESULT[0x00000002]
	$TRANSPARENCY = $ARESULT[0x00000003]
	Return $ARESULT[0x00000004]
EndFunc   ;==>_WinAPI_GetLayeredWindowAttributes
Func _WinAPI_GetModuleHandle($SMODULENAME)
	Local $SMODULENAMETYPE = "wstr"
	If $SMODULENAME = "" Then
		$SMODULENAME = 0x00000000
		$SMODULENAMETYPE = "ptr"
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GetModuleHandleW", $SMODULENAMETYPE, $SMODULENAME)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetModuleHandle
Func _WinAPI_GetMousePos($FTOCLIENT = False, $HWND = 0x00000000)
	Local $IMODE = Opt("MouseCoordMode", 0x00000001)
	Local $APOS = MouseGetPos()
	Opt("MouseCoordMode", $IMODE)
	Local $TPOINT = DllStructCreate($TAGPOINT)
	DllStructSetData($TPOINT, "X", $APOS[0x00000000])
	DllStructSetData($TPOINT, "Y", $APOS[0x00000001])
	If $FTOCLIENT Then
		_WinAPI_ScreenToClient($HWND, $TPOINT)
		If @error Then Return SetError(@error, @extended, 0x00000000)
	EndIf
	Return $TPOINT
EndFunc   ;==>_WinAPI_GetMousePos
Func _WinAPI_GetMousePosX($FTOCLIENT = False, $HWND = 0x00000000)
	Local $TPOINT = _WinAPI_GetMousePos($FTOCLIENT, $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return DllStructGetData($TPOINT, "X")
EndFunc   ;==>_WinAPI_GetMousePosX
Func _WinAPI_GetMousePosY($FTOCLIENT = False, $HWND = 0x00000000)
	Local $TPOINT = _WinAPI_GetMousePos($FTOCLIENT, $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return DllStructGetData($TPOINT, "Y")
EndFunc   ;==>_WinAPI_GetMousePosY
Func _WinAPI_GetObject($HOBJECT, $ISIZE, $POBJECT)
	Local $ARESULT = DllCall("gdi32.dll", "int", "GetObjectW", "handle", $HOBJECT, "int", $ISIZE, "ptr", $POBJECT)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetObject
Func _WinAPI_GetOpenFileName($STITLE = "", $SFILTER = "All files (*.*)", $SINITALDIR = ".", $SDEFAULTFILE = "", $SDEFAULTEXT = "", $IFILTERINDEX = 0x00000001, $IFLAGS = 0x00000000, $IFLAGSEX = 0x00000000, $HWNDOWNER = 0x00000000)
	Local $IPATHLEN = 0x00001000
	Local $INULLS = 0x00000000
	Local $TOFN = DllStructCreate($TAGOPENFILENAME)
	Local $AFILES[0x00000001] = [0x00000000]
	Local $IFLAG = $IFLAGS
	Local $ASFLINES = StringSplit($SFILTER, "|")
	Local $ASFILTER[$ASFLINES[0x00000000] * 0x00000002 + 0x00000001]
	Local $ISTART, $IFINAL, $STFILTER
	$ASFILTER[0x00000000] = $ASFLINES[0x00000000] * 0x00000002
	For $I = 0x00000001 To $ASFLINES[0x00000000]
		$ISTART = StringInStr($ASFLINES[$I], "(", 0x00000000, 0x00000001)
		$IFINAL = StringInStr($ASFLINES[$I], ")", 0x00000000, -0x00000001)
		$ASFILTER[$I * 0x00000002 - 0x00000001] = StringStripWS(StringLeft($ASFLINES[$I], $ISTART - 0x00000001), 0x00000003)
		$ASFILTER[$I * 0x00000002] = StringStripWS(StringTrimRight(StringTrimLeft($ASFLINES[$I], $ISTART), StringLen($ASFLINES[$I]) - $IFINAL + 0x00000001), 0x00000003)
		$STFILTER &= "wchar[" & StringLen($ASFILTER[$I * 0x00000002 - 0x00000001]) + 0x00000001 & "];wchar[" & StringLen($ASFILTER[$I * 0x00000002]) + 0x00000001 & "];"
	Next
	Local $TTITLE = DllStructCreate("wchar Title[" & StringLen($STITLE) + 0x00000001 & "]")
	Local $TINITIALDIR = DllStructCreate("wchar InitDir[" & StringLen($SINITALDIR) + 0x00000001 & "]")
	Local $TFILTER = DllStructCreate($STFILTER & "wchar")
	Local $TPATH = DllStructCreate("wchar Path[" & $IPATHLEN & "]")
	Local $TEXTN = DllStructCreate("wchar Extension[" & StringLen($SDEFAULTEXT) + 0x00000001 & "]")
	For $I = 0x00000001 To $ASFILTER[0x00000000]
		DllStructSetData($TFILTER, $I, $ASFILTER[$I])
	Next
	DllStructSetData($TTITLE, "Title", $STITLE)
	DllStructSetData($TINITIALDIR, "InitDir", $SINITALDIR)
	DllStructSetData($TPATH, "Path", $SDEFAULTFILE)
	DllStructSetData($TEXTN, "Extension", $SDEFAULTEXT)
	DllStructSetData($TOFN, "StructSize", DllStructGetSize($TOFN))
	DllStructSetData($TOFN, "hwndOwner", $HWNDOWNER)
	DllStructSetData($TOFN, "lpstrFilter", DllStructGetPtr($TFILTER))
	DllStructSetData($TOFN, "nFilterIndex", $IFILTERINDEX)
	DllStructSetData($TOFN, "lpstrFile", DllStructGetPtr($TPATH))
	DllStructSetData($TOFN, "nMaxFile", $IPATHLEN)
	DllStructSetData($TOFN, "lpstrInitialDir", DllStructGetPtr($TINITIALDIR))
	DllStructSetData($TOFN, "lpstrTitle", DllStructGetPtr($TTITLE))
	DllStructSetData($TOFN, "Flags", $IFLAG)
	DllStructSetData($TOFN, "lpstrDefExt", DllStructGetPtr($TEXTN))
	DllStructSetData($TOFN, "FlagsEx", $IFLAGSEX)
	DllCall("comdlg32.dll", "bool", "GetOpenFileNameW", "ptr", DllStructGetPtr($TOFN))
	If @error Then Return SetError(@error, @extended, $AFILES)
	If BitAND($IFLAGS, $OFN_ALLOWMULTISELECT) = $OFN_ALLOWMULTISELECT AND BitAND($IFLAGS, $OFN_EXPLORER) = $OFN_EXPLORER Then
		For $X = 0x00000001 To $IPATHLEN
			If DllStructGetData($TPATH, "Path", $X) = Chr(0x00000000) Then
				DllStructSetData($TPATH, "Path", "|", $X)
				$INULLS += 0x00000001
			Else
				$INULLS = 0x00000000
			EndIf
			If $INULLS = 0x00000002 Then ExitLoop
		Next
		DllStructSetData($TPATH, "Path", Chr(0x00000000), $X - 0x00000001)
		$AFILES = StringSplit(DllStructGetData($TPATH, "Path"), "|")
		If $AFILES[0x00000000] = 0x00000001 Then Return __WINAPI_PARSEFILEDIALOGPATH(DllStructGetData($TPATH, "Path"))
		Return StringSplit(DllStructGetData($TPATH, "Path"), "|")
	ElseIf BitAND($IFLAGS, $OFN_ALLOWMULTISELECT) = $OFN_ALLOWMULTISELECT Then
		$AFILES = StringSplit(DllStructGetData($TPATH, "Path"), " ")
		If $AFILES[0x00000000] = 0x00000001 Then Return __WINAPI_PARSEFILEDIALOGPATH(DllStructGetData($TPATH, "Path"))
		Return StringSplit(StringReplace(DllStructGetData($TPATH, "Path"), " ", "|"), "|")
	Else
		Return __WINAPI_PARSEFILEDIALOGPATH(DllStructGetData($TPATH, "Path"))
	EndIf
EndFunc   ;==>_WinAPI_GetOpenFileName
Func _WinAPI_GetOverlappedResult($HFILE, $POVERLAPPED, ByRef $IBYTES, $FWAIT = False)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GetOverlappedResult", "handle", $HFILE, "ptr", $POVERLAPPED, "dword*", 0x00000000, "bool", $FWAIT)
	If @error Then Return SetError(@error, @extended, False)
	$IBYTES = $ARESULT[0x00000003]
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetOverlappedResult
Func _WinAPI_GetParent($HWND)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetParent", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetParent
Func _WinAPI_GetProcessAffinityMask($HPROCESS)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "GetProcessAffinityMask", "handle", $HPROCESS, "dword_ptr*", 0x00000000, "dword_ptr*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Local $AMASK[0x00000003]
	$AMASK[0x00000000] = True
	$AMASK[0x00000001] = $ARESULT[0x00000002]
	$AMASK[0x00000002] = $ARESULT[0x00000003]
	Return $AMASK
EndFunc   ;==>_WinAPI_GetProcessAffinityMask
Func _WinAPI_GetSaveFileName($STITLE = "", $SFILTER = "All files (*.*)", $SINITALDIR = ".", $SDEFAULTFILE = "", $SDEFAULTEXT = "", $IFILTERINDEX = 0x00000001, $IFLAGS = 0x00000000, $IFLAGSEX = 0x00000000, $HWNDOWNER = 0x00000000)
	Local $IPATHLEN = 0x00001000
	Local $TOFN = DllStructCreate($TAGOPENFILENAME)
	Local $AFILES[0x00000001] = [0x00000000]
	Local $IFLAG = $IFLAGS
	Local $ASFLINES = StringSplit($SFILTER, "|")
	Local $ASFILTER[$ASFLINES[0x00000000] * 0x00000002 + 0x00000001]
	Local $ISTART, $IFINAL, $STFILTER
	$ASFILTER[0x00000000] = $ASFLINES[0x00000000] * 0x00000002
	For $I = 0x00000001 To $ASFLINES[0x00000000]
		$ISTART = StringInStr($ASFLINES[$I], "(", 0x00000000, 0x00000001)
		$IFINAL = StringInStr($ASFLINES[$I], ")", 0x00000000, -0x00000001)
		$ASFILTER[$I * 0x00000002 - 0x00000001] = StringStripWS(StringLeft($ASFLINES[$I], $ISTART - 0x00000001), 0x00000003)
		$ASFILTER[$I * 0x00000002] = StringStripWS(StringTrimRight(StringTrimLeft($ASFLINES[$I], $ISTART), StringLen($ASFLINES[$I]) - $IFINAL + 0x00000001), 0x00000003)
		$STFILTER &= "wchar[" & StringLen($ASFILTER[$I * 0x00000002 - 0x00000001]) + 0x00000001 & "];wchar[" & StringLen($ASFILTER[$I * 0x00000002]) + 0x00000001 & "];"
	Next
	Local $TTITLE = DllStructCreate("wchar Title[" & StringLen($STITLE) + 0x00000001 & "]")
	Local $TINITIALDIR = DllStructCreate("wchar InitDir[" & StringLen($SINITALDIR) + 0x00000001 & "]")
	Local $TFILTER = DllStructCreate($STFILTER & "wchar")
	Local $TPATH = DllStructCreate("wchar Path[" & $IPATHLEN & "]")
	Local $TEXTN = DllStructCreate("wchar Extension[" & StringLen($SDEFAULTEXT) + 0x00000001 & "]")
	For $I = 0x00000001 To $ASFILTER[0x00000000]
		DllStructSetData($TFILTER, $I, $ASFILTER[$I])
	Next
	DllStructSetData($TTITLE, "Title", $STITLE)
	DllStructSetData($TINITIALDIR, "InitDir", $SINITALDIR)
	DllStructSetData($TPATH, "Path", $SDEFAULTFILE)
	DllStructSetData($TEXTN, "Extension", $SDEFAULTEXT)
	DllStructSetData($TOFN, "StructSize", DllStructGetSize($TOFN))
	DllStructSetData($TOFN, "hwndOwner", $HWNDOWNER)
	DllStructSetData($TOFN, "lpstrFilter", DllStructGetPtr($TFILTER))
	DllStructSetData($TOFN, "nFilterIndex", $IFILTERINDEX)
	DllStructSetData($TOFN, "lpstrFile", DllStructGetPtr($TPATH))
	DllStructSetData($TOFN, "nMaxFile", $IPATHLEN)
	DllStructSetData($TOFN, "lpstrInitialDir", DllStructGetPtr($TINITIALDIR))
	DllStructSetData($TOFN, "lpstrTitle", DllStructGetPtr($TTITLE))
	DllStructSetData($TOFN, "Flags", $IFLAG)
	DllStructSetData($TOFN, "lpstrDefExt", DllStructGetPtr($TEXTN))
	DllStructSetData($TOFN, "FlagsEx", $IFLAGSEX)
	DllCall("comdlg32.dll", "bool", "GetSaveFileNameW", "ptr", DllStructGetPtr($TOFN))
	If @error Then Return SetError(@error, @extended, $AFILES)
	Return __WINAPI_PARSEFILEDIALOGPATH(DllStructGetData($TPATH, "Path"))
EndFunc   ;==>_WinAPI_GetSaveFileName
Func _WinAPI_GetStockObject($IOBJECT)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "GetStockObject", "int", $IOBJECT)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetStockObject
Func _WinAPI_GetStdHandle($ISTDHANDLE)
	If $ISTDHANDLE < 0x00000000 Or $ISTDHANDLE > 0x00000002 Then Return SetError(0x00000002, 0x00000000, -0x00000001)
	Local Const $AHANDLE[0x00000003] = [-0x0000000A, -0x0000000B, -0x0000000C]
	Local $ARESULT = DllCall("kernel32.dll", "handle", "GetStdHandle", "dword", $AHANDLE[$ISTDHANDLE])
	If @error Then Return SetError(@error, @extended, -0x00000001)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetStdHandle
Func _WinAPI_GetSysColor($IINDEX)
	Local $ARESULT = DllCall("user32.dll", "dword", "GetSysColor", "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetSysColor
Func _WinAPI_GetSysColorBrush($IINDEX)
	Local $ARESULT = DllCall("user32.dll", "handle", "GetSysColorBrush", "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetSysColorBrush
Func _WinAPI_GetSystemMetrics($IINDEX)
	Local $ARESULT = DllCall("user32.dll", "int", "GetSystemMetrics", "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetSystemMetrics
Func _WinAPI_GetTextExtentPoint32($HDC, $STEXT)
	Local $TSIZE = DllStructCreate($TAGSIZE)
	Local $ISIZE = StringLen($STEXT)
	DllCall("gdi32.dll", "bool", "GetTextExtentPoint32W", "handle", $HDC, "wstr", $STEXT, "int", $ISIZE, "ptr", DllStructGetPtr($TSIZE))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $TSIZE
EndFunc   ;==>_WinAPI_GetTextExtentPoint32
Func _WinAPI_GetTextMetrics($HDC)
	Local $TTEXTMETRIC = DllStructCreate($TAGTEXTMETRIC)
	Local $RET = DllCall("gdi32.dll", "bool", "GetTextMetricsW", "handle", $HDC, "ptr", DllStructGetPtr($TTEXTMETRIC))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If Not $RET[0x00000000] Then Return SetError(-0x00000001, 0x00000000, 0x00000000)
	Return $TTEXTMETRIC
EndFunc   ;==>_WinAPI_GetTextMetrics
Func _WinAPI_GetWindow($HWND, $ICMD)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "GetWindow", "hwnd", $HWND, "uint", $ICMD)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetWindow
Func _WinAPI_GetWindowDC($HWND)
	Local $ARESULT = DllCall("user32.dll", "handle", "GetWindowDC", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetWindowDC
Func _WinAPI_GetWindowHeight($HWND)
	Local $TRECT = _WinAPI_GetWindowRect($HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return DllStructGetData($TRECT, "Bottom") - DllStructGetData($TRECT, "Top")
EndFunc   ;==>_WinAPI_GetWindowHeight
Func _WinAPI_GetWindowLong($HWND, $IINDEX)
	Local $SFUNCNAME = "GetWindowLongW"
	If @AutoItX64 Then $SFUNCNAME = "GetWindowLongPtrW"
	Local $ARESULT = DllCall("user32.dll", "long_ptr", $SFUNCNAME, "hwnd", $HWND, "int", $IINDEX)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetWindowLong
Func _WinAPI_GetWindowPlacement($HWND)
	Local $TWINDOWPLACEMENT = DllStructCreate($TAGWINDOWPLACEMENT)
	DllStructSetData($TWINDOWPLACEMENT, "length", DllStructGetSize($TWINDOWPLACEMENT))
	Local $PWINDOWPLACEMENT = DllStructGetPtr($TWINDOWPLACEMENT)
	DllCall("user32.dll", "bool", "GetWindowPlacement", "hwnd", $HWND, "ptr", $PWINDOWPLACEMENT)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $TWINDOWPLACEMENT
EndFunc   ;==>_WinAPI_GetWindowPlacement
Func _WinAPI_GetWindowRect($HWND)
	Local $TRECT = DllStructCreate($TAGRECT)
	DllCall("user32.dll", "bool", "GetWindowRect", "hwnd", $HWND, "ptr", DllStructGetPtr($TRECT))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $TRECT
EndFunc   ;==>_WinAPI_GetWindowRect
Func _WinAPI_GetWindowRgn($HWND, $HRGN)
	Local $ARESULT = DllCall("user32.dll", "int", "GetWindowRgn", "hwnd", $HWND, "handle", $HRGN)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetWindowRgn
Func _WinAPI_GetWindowText($HWND)
	Local $ARESULT = DllCall("user32.dll", "int", "GetWindowTextW", "hwnd", $HWND, "wstr", "", "int", 0x00001000)
	If @error Then Return SetError(@error, @extended, "")
	Return SetExtended($ARESULT[0x00000000], $ARESULT[0x00000002])
EndFunc   ;==>_WinAPI_GetWindowText
Func _WinAPI_GetWindowThreadProcessId($HWND, ByRef $IPID)
	Local $ARESULT = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $HWND, "dword*", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	$IPID = $ARESULT[0x00000002]
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GetWindowThreadProcessId
Func _WinAPI_GetWindowWidth($HWND)
	Local $TRECT = _WinAPI_GetWindowRect($HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return DllStructGetData($TRECT, "Right") - DllStructGetData($TRECT, "Left")
EndFunc   ;==>_WinAPI_GetWindowWidth
Func _WinAPI_GetXYFromPoint(ByRef $TPOINT, ByRef $IX, ByRef $IY)
	$IX = DllStructGetData($TPOINT, "X")
	$IY = DllStructGetData($TPOINT, "Y")
EndFunc   ;==>_WinAPI_GetXYFromPoint
Func _WinAPI_GlobalMemoryStatus()
	Local $TMEM = DllStructCreate($TAGMEMORYSTATUSEX)
	Local $PMEM = DllStructGetPtr($TMEM)
	Local $IMEM = DllStructGetSize($TMEM)
	DllStructSetData($TMEM, 0x00000001, $IMEM)
	DllCall("kernel32.dll", "none", "GlobalMemoryStatusEx", "ptr", $PMEM)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Local $AMEM[0x00000007]
	$AMEM[0x00000000] = DllStructGetData($TMEM, 0x00000002)
	$AMEM[0x00000001] = DllStructGetData($TMEM, 0x00000003)
	$AMEM[0x00000002] = DllStructGetData($TMEM, 0x00000004)
	$AMEM[0x00000003] = DllStructGetData($TMEM, 0x00000005)
	$AMEM[0x00000004] = DllStructGetData($TMEM, 0x00000006)
	$AMEM[0x00000005] = DllStructGetData($TMEM, 0x00000007)
	$AMEM[0x00000006] = DllStructGetData($TMEM, 0x00000008)
	Return $AMEM
EndFunc   ;==>_WinAPI_GlobalMemoryStatus
Func _WinAPI_GUIDFromString($SGUID)
	Local $TGUID = DllStructCreate($TAGGUID)
	_WinAPI_GUIDFromStringEx($SGUID, DllStructGetPtr($TGUID))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $TGUID
EndFunc   ;==>_WinAPI_GUIDFromString
Func _WinAPI_GUIDFromStringEx($SGUID, $PGUID)
	Local $ARESULT = DllCall("ole32.dll", "long", "CLSIDFromString", "wstr", $SGUID, "ptr", $PGUID)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_GUIDFromStringEx
Func _WinAPI_HiWord($ILONG)
	Return BitShift($ILONG, 0x00000010)
EndFunc   ;==>_WinAPI_HiWord
Func _WinAPI_InProcess($HWND, ByRef $HLASTWND)
	If $HWND = $HLASTWND Then Return True
	For $II = $__GAINPROCESS_WINAPI[0x00000000][0x00000000] To 0x00000001 Step -0x00000001
		If $HWND = $__GAINPROCESS_WINAPI[$II][0x00000000] Then
			If $__GAINPROCESS_WINAPI[$II][0x00000001] Then
				$HLASTWND = $HWND
				Return True
			Else
				Return False
			EndIf
		EndIf
	Next
	Local $IPROCESSID
	_WinAPI_GetWindowThreadProcessId($HWND, $IPROCESSID)
	Local $ICOUNT = $__GAINPROCESS_WINAPI[0x00000000][0x00000000] + 0x00000001
	If $ICOUNT >= 0x00000040 Then $ICOUNT = 0x00000001
	$__GAINPROCESS_WINAPI[0x00000000][0x00000000] = $ICOUNT
	$__GAINPROCESS_WINAPI[$ICOUNT][0x00000000] = $HWND
	$__GAINPROCESS_WINAPI[$ICOUNT][0x00000001] = ($IPROCESSID = @AutoItPID)
	Return $__GAINPROCESS_WINAPI[$ICOUNT][0x00000001]
EndFunc   ;==>_WinAPI_InProcess
Func _WinAPI_IntToFloat($IINT)
	Local $TINT = DllStructCreate("int")
	Local $TFLOAT = DllStructCreate("float", DllStructGetPtr($TINT))
	DllStructSetData($TINT, 0x00000001, $IINT)
	Return DllStructGetData($TFLOAT, 0x00000001)
EndFunc   ;==>_WinAPI_IntToFloat
Func _WinAPI_IsClassName($HWND, $SCLASSNAME)
	Local $SSEPARATOR = Opt("GUIDataSeparatorChar")
	Local $ACLASSNAME = StringSplit($SCLASSNAME, $SSEPARATOR)
	If Not IsHWnd($HWND) Then $HWND = GUICtrlGetHandle($HWND)
	Local $SCLASSCHECK = _WinAPI_GetClassName($HWND)
	For $X = 0x00000001 To UBound($ACLASSNAME) - 0x00000001
		If StringUpper(StringMid($SCLASSCHECK, 0x00000001, StringLen($ACLASSNAME[$X]))) = StringUpper($ACLASSNAME[$X]) Then Return True
	Next
	Return False
EndFunc   ;==>_WinAPI_IsClassName
Func _WinAPI_IsWindow($HWND)
	Local $ARESULT = DllCall("user32.dll", "bool", "IsWindow", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_IsWindow
Func _WinAPI_IsWindowVisible($HWND)
	Local $ARESULT = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_IsWindowVisible
Func _WinAPI_InvalidateRect($HWND, $TRECT = 0x00000000, $FERASE = True)
	Local $PRECT = 0x00000000
	If IsDllStruct($TRECT) Then $PRECT = DllStructGetPtr($TRECT)
	Local $ARESULT = DllCall("user32.dll", "bool", "InvalidateRect", "hwnd", $HWND, "ptr", $PRECT, "bool", $FERASE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_InvalidateRect
Func _WinAPI_LineTo($HDC, $IX, $IY)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "LineTo", "handle", $HDC, "int", $IX, "int", $IY)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_LineTo
Func _WinAPI_LoadBitmap($HINSTANCE, $SBITMAP)
	Local $SBITMAPTYPE = "int"
	If IsString($SBITMAP) Then $SBITMAPTYPE = "wstr"
	Local $ARESULT = DllCall("user32.dll", "handle", "LoadBitmapW", "handle", $HINSTANCE, $SBITMAPTYPE, $SBITMAP)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_LoadBitmap
Func _WinAPI_LoadImage($HINSTANCE, $SIMAGE, $ITYPE, $IXDESIRED, $IYDESIRED, $ILOAD)
	Local $ARESULT, $SIMAGETYPE = "int"
	If IsString($SIMAGE) Then $SIMAGETYPE = "wstr"
	$ARESULT = DllCall("user32.dll", "handle", "LoadImageW", "handle", $HINSTANCE, $SIMAGETYPE, $SIMAGE, "uint", $ITYPE, "int", $IXDESIRED, "int", $IYDESIRED, "uint", $ILOAD)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_LoadImage
Func _WinAPI_LoadLibrary($SFILENAME)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $SFILENAME)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_LoadLibrary
Func _WinAPI_LoadLibraryEx($SFILENAME, $IFLAGS = 0x00000000)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "LoadLibraryExW", "wstr", $SFILENAME, "ptr", 0x00000000, "dword", $IFLAGS)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_LoadLibraryEx
Func _WinAPI_LoadShell32Icon($IICONID)
	Local $TICONS = DllStructCreate("ptr Data")
	Local $PICONS = DllStructGetPtr($TICONS)
	Local $IICONS = _WinAPI_ExtractIconEx("shell32.dll", $IICONID, 0x00000000, $PICONS, 0x00000001)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If $IICONS <= 0x00000000 Then Return SetError(0x00000001, 0x00000000, 0x00000000)
	Return DllStructGetData($TICONS, "Data")
EndFunc   ;==>_WinAPI_LoadShell32Icon
Func _WinAPI_LoadString($HINSTANCE, $ISTRINGID)
	Local $ARESULT = DllCall("user32.dll", "int", "LoadStringW", "handle", $HINSTANCE, "uint", $ISTRINGID, "wstr", "", "int", 0x00001000)
	If @error Then Return SetError(@error, @extended, "")
	Return SetExtended($ARESULT[0x00000000], $ARESULT[0x00000003])
EndFunc   ;==>_WinAPI_LoadString
Func _WinAPI_LocalFree($HMEM)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "LocalFree", "handle", $HMEM)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_LocalFree
Func _WinAPI_LoWord($ILONG)
	Return BitAND($ILONG, 0x0000FFFF)
EndFunc   ;==>_WinAPI_LoWord
Func _WinAPI_MAKELANGID($LGIDPRIMARY, $LGIDSUB)
	Return BitOR(BitShift($LGIDSUB, -0x0000000A), $LGIDPRIMARY)
EndFunc   ;==>_WinAPI_MAKELANGID
Func _WinAPI_MAKELCID($LGID, $SRTID)
	Return BitOR(BitShift($SRTID, -0x00000010), $LGID)
EndFunc   ;==>_WinAPI_MAKELCID
Func _WinAPI_MakeLong($ILO, $IHI)
	Return BitOR(BitShift($IHI, -0x00000010), BitAND($ILO, 0x0000FFFF))
EndFunc   ;==>_WinAPI_MakeLong
Func _WinAPI_MakeQWord($LODWORD, $HIDWORD)
	Local $TINT64 = DllStructCreate("uint64")
	Local $TDWORDS = DllStructCreate("dword;dword", DllStructGetPtr($TINT64))
	DllStructSetData($TDWORDS, 0x00000001, $LODWORD)
	DllStructSetData($TDWORDS, 0x00000002, $HIDWORD)
	Return DllStructGetData($TINT64, 0x00000001)
EndFunc   ;==>_WinAPI_MakeQWord
Func _WinAPI_MessageBeep($ITYPE = 0x00000001)
	Local $ISOUND
	Switch $ITYPE
		Case 0x00000001
			$ISOUND = 0x00000000
		Case 0x00000002
			$ISOUND = 0x00000010
		Case 0x00000003
			$ISOUND = 0x00000020
		Case 0x00000004
			$ISOUND = 0x00000030
		Case 0x00000005
			$ISOUND = 0x00000040
		Case Else
			$ISOUND = -0x00000001
	EndSwitch
	Local $ARESULT = DllCall("user32.dll", "bool", "MessageBeep", "uint", $ISOUND)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_MessageBeep
Func _WinAPI_MsgBox($IFLAGS, $STITLE, $STEXT)
	BlockInput(0x00000000)
	MsgBox($IFLAGS, $STITLE, $STEXT & "      ")
EndFunc   ;==>_WinAPI_MsgBox
Func _WinAPI_Mouse_Event($IFLAGS, $IX = 0x00000000, $IY = 0x00000000, $IDATA = 0x00000000, $IEXTRAINFO = 0x00000000)
	DllCall("user32.dll", "none", "mouse_event", "dword", $IFLAGS, "dword", $IX, "dword", $IY, "dword", $IDATA, "ulong_ptr", $IEXTRAINFO)
	If @error Then Return SetError(@error, @extended)
EndFunc   ;==>_WinAPI_Mouse_Event
Func _WinAPI_MoveTo($HDC, $IX, $IY)
	Local $ARESULT = DllCall("gdi32.dll", "bool", "MoveToEx", "handle", $HDC, "int", $IX, "int", $IY, "ptr", 0x00000000)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_MoveTo
Func _WinAPI_MoveWindow($HWND, $IX, $IY, $IWIDTH, $IHEIGHT, $FREPAINT = True)
	Local $ARESULT = DllCall("user32.dll", "bool", "MoveWindow", "hwnd", $HWND, "int", $IX, "int", $IY, "int", $IWIDTH, "int", $IHEIGHT, "bool", $FREPAINT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_MoveWindow
Func _WinAPI_MulDiv($INUMBER, $INUMERATOR, $IDENOMINATOR)
	Local $ARESULT = DllCall("kernel32.dll", "int", "MulDiv", "int", $INUMBER, "int", $INUMERATOR, "int", $IDENOMINATOR)
	If @error Then Return SetError(@error, @extended, -0x00000001)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_MulDiv
Func _WinAPI_MultiByteToWideChar($STEXT, $ICODEPAGE = 0x00000000, $IFLAGS = 0x00000000, $BRETSTRING = False)
	Local $STEXTTYPE = "ptr", $PTEXT = $STEXT
	If IsDllStruct($STEXT) Then
		$PTEXT = DllStructGetPtr($STEXT)
	Else
		If Not IsPtr($STEXT) Then $STEXTTYPE = "STR"
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $ICODEPAGE, "dword", $IFLAGS, $STEXTTYPE, $PTEXT, "int", -0x00000001, "ptr", 0x00000000, "int", 0x00000000)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Local $IOUT = $ARESULT[0x00000000]
	Local $TOUT = DllStructCreate("wchar[" & $IOUT & "]")
	Local $POUT = DllStructGetPtr($TOUT)
	$ARESULT = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $ICODEPAGE, "dword", $IFLAGS, $STEXTTYPE, $PTEXT, "int", -0x00000001, "ptr", $POUT, "int", $IOUT)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If $BRETSTRING Then Return DllStructGetData($TOUT, 0x00000001)
	Return $TOUT
EndFunc   ;==>_WinAPI_MultiByteToWideChar
Func _WinAPI_MultiByteToWideCharEx($STEXT, $PTEXT, $ICODEPAGE = 0x00000000, $IFLAGS = 0x00000000)
	Local $ARESULT = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", $ICODEPAGE, "dword", $IFLAGS, "STR", $STEXT, "int", -0x00000001, "ptr", $PTEXT, "int", (StringLen($STEXT) + 0x00000001) * 0x00000002)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_MultiByteToWideCharEx
Func _WinAPI_OpenProcess($IACCESS, $FINHERIT, $IPROCESSID, $FDEBUGPRIV = False)
	Local $ARESULT = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $IACCESS, "bool", $FINHERIT, "dword", $IPROCESSID)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If $ARESULT[0x00000000] Then Return $ARESULT[0x00000000]
	If Not $FDEBUGPRIV Then Return 0x00000000
	Local $HTOKEN = _Security__OpenThreadTokenEx(BitOR($TOKEN_ADJUST_PRIVILEGES, $TOKEN_QUERY))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	_Security__SetPrivilege($HTOKEN, "SeDebugPrivilege", True)
	Local $IERROR = @error
	Local $ILASTERROR = @extended
	Local $IRET = 0x00000000
	If Not @error Then
		$ARESULT = DllCall("kernel32.dll", "handle", "OpenProcess", "dword", $IACCESS, "bool", $FINHERIT, "dword", $IPROCESSID)
		$IERROR = @error
		$ILASTERROR = @extended
		If $ARESULT[0x00000000] Then $IRET = $ARESULT[0x00000000]
		_Security__SetPrivilege($HTOKEN, "SeDebugPrivilege", False)
		If @error Then
			$IERROR = @error
			$ILASTERROR = @extended
		EndIf
	EndIf
	_WinAPI_CloseHandle($HTOKEN)
	Return SetError($IERROR, $ILASTERROR, $IRET)
EndFunc   ;==>_WinAPI_OpenProcess
Func __WINAPI_PARSEFILEDIALOGPATH($SPATH)
	Local $AFILES[0x00000003]
	$AFILES[0x00000000] = 0x00000002
	Local $STEMP = StringMid($SPATH, 0x00000001, StringInStr($SPATH, "\", 0x00000000, -0x00000001) - 0x00000001)
	$AFILES[0x00000001] = $STEMP
	$AFILES[0x00000002] = StringMid($SPATH, StringInStr($SPATH, "\", 0x00000000, -0x00000001) + 0x00000001)
	Return $AFILES
EndFunc   ;==>__WINAPI_PARSEFILEDIALOGPATH
Func _WinAPI_PathFindOnPath(Const $SZFILE, $AEXTRAPATHS = "", Const $SZPATHDELIMITER = @LF)
	Local $IEXTRACOUNT = 0x00000000
	If IsString($AEXTRAPATHS) Then
		If StringLen($AEXTRAPATHS) Then
			$AEXTRAPATHS = StringSplit($AEXTRAPATHS, $SZPATHDELIMITER, 0x00000001 + 0x00000002)
			$IEXTRACOUNT = UBound($AEXTRAPATHS, 0x00000001)
		EndIf
	ElseIf IsArray($AEXTRAPATHS) Then
		$IEXTRACOUNT = UBound($AEXTRAPATHS)
	EndIf
	Local $TPATHS, $TPATHPTRS
	If $IEXTRACOUNT Then
		Local $SZSTRUCT = ""
		For $PATH In $AEXTRAPATHS
			$SZSTRUCT &= "wchar[" & StringLen($PATH) + 0x00000001 & "];"
		Next
		$TPATHS = DllStructCreate($SZSTRUCT)
		$TPATHPTRS = DllStructCreate("ptr[" & $IEXTRACOUNT + 0x00000001 & "]")
		For $I = 0x00000001 To $IEXTRACOUNT
			DllStructSetData($TPATHS, $I, $AEXTRAPATHS[$I - 0x00000001])
			DllStructSetData($TPATHPTRS, 0x00000001, DllStructGetPtr($TPATHS, $I), $I)
		Next
		DllStructSetData($TPATHPTRS, 0x00000001, Ptr(0x00000000), $IEXTRACOUNT + 0x00000001)
	EndIf
	Local $ARESULT = DllCall("shlwapi.dll", "bool", "PathFindOnPathW", "wstr", $SZFILE, "ptr", DllStructGetPtr($TPATHPTRS))
	If @error Then Return SetError(@error, @extended, False)
	If $ARESULT[0x00000000] = 0x00000000 Then Return SetError(0x00000001, 0x00000000, $SZFILE)
	Return $ARESULT[0x00000001]
EndFunc   ;==>_WinAPI_PathFindOnPath
Func _WinAPI_PointFromRect(ByRef $TRECT, $FCENTER = True)
	Local $IX1 = DllStructGetData($TRECT, "Left")
	Local $IY1 = DllStructGetData($TRECT, "Top")
	Local $IX2 = DllStructGetData($TRECT, "Right")
	Local $IY2 = DllStructGetData($TRECT, "Bottom")
	If $FCENTER Then
		$IX1 = $IX1 + (($IX2 - $IX1) / 0x00000002)
		$IY1 = $IY1 + (($IY2 - $IY1) / 0x00000002)
	EndIf
	Local $TPOINT = DllStructCreate($TAGPOINT)
	DllStructSetData($TPOINT, "X", $IX1)
	DllStructSetData($TPOINT, "Y", $IY1)
	Return $TPOINT
EndFunc   ;==>_WinAPI_PointFromRect
Func _WinAPI_PostMessage($HWND, $IMSG, $IWPARAM, $ILPARAM)
	Local $ARESULT = DllCall("user32.dll", "bool", "PostMessage", "hwnd", $HWND, "uint", $IMSG, "wparam", $IWPARAM, "lparam", $ILPARAM)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_PostMessage
Func _WinAPI_PrimaryLangId($LGID)
	Return BitAND($LGID, 0x000003FF)
EndFunc   ;==>_WinAPI_PrimaryLangId
Func _WinAPI_PtInRect(ByRef $TRECT, ByRef $TPOINT)
	Local $IX = DllStructGetData($TPOINT, "X")
	Local $IY = DllStructGetData($TPOINT, "Y")
	Local $ARESULT = DllCall("user32.dll", "bool", "PtInRect", "ptr", DllStructGetPtr($TRECT), "long", $IX, "long", $IY)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_PtInRect
Func _WinAPI_ReadFile($HFILE, $PBUFFER, $ITOREAD, ByRef $IREAD, $POVERLAPPED = 0x00000000)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "ReadFile", "handle", $HFILE, "ptr", $PBUFFER, "dword", $ITOREAD, "dword*", 0x00000000, "ptr", $POVERLAPPED)
	If @error Then Return SetError(@error, @extended, False)
	$IREAD = $ARESULT[0x00000004]
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_ReadFile
Func _WinAPI_ReadProcessMemory($HPROCESS, $PBASEADDRESS, $PBUFFER, $ISIZE, ByRef $IREAD)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "ReadProcessMemory", "handle", $HPROCESS, "ptr", $PBASEADDRESS, "ptr", $PBUFFER, "ulong_ptr", $ISIZE, "ulong_ptr*", 0x00000000)
	If @error Then Return SetError(@error, @extended, False)
	$IREAD = $ARESULT[0x00000005]
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_ReadProcessMemory
Func _WinAPI_RectIsEmpty(ByRef $TRECT)
	Return (DllStructGetData($TRECT, "Left") = 0x00000000) AND(DllStructGetData($TRECT, "Top") = 0x00000000) AND(DllStructGetData($TRECT, "Right") = 0x00000000) AND(DllStructGetData($TRECT, "Bottom") = 0x00000000)
EndFunc   ;==>_WinAPI_RectIsEmpty
Func _WinAPI_RedrawWindow($HWND, $TRECT = 0x00000000, $HREGION = 0x00000000, $IFLAGS = 0x00000005)
	Local $PRECT = 0x00000000
	If $TRECT <> 0x00000000 Then $PRECT = DllStructGetPtr($TRECT)
	Local $ARESULT = DllCall("user32.dll", "bool", "RedrawWindow", "hwnd", $HWND, "ptr", $PRECT, "handle", $HREGION, "uint", $IFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_RedrawWindow
Func _WinAPI_RegisterWindowMessage($SMESSAGE)
	Local $ARESULT = DllCall("user32.dll", "uint", "RegisterWindowMessageW", "wstr", $SMESSAGE)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_RegisterWindowMessage
Func _WinAPI_ReleaseCapture()
	Local $ARESULT = DllCall("user32.dll", "bool", "ReleaseCapture")
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_ReleaseCapture
Func _WinAPI_ReleaseDC($HWND, $HDC)
	Local $ARESULT = DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $HWND, "handle", $HDC)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_ReleaseDC
Func _WinAPI_ScreenToClient($HWND, ByRef $TPOINT)
	Local $ARESULT = DllCall("user32.dll", "bool", "ScreenToClient", "hwnd", $HWND, "ptr", DllStructGetPtr($TPOINT))
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_ScreenToClient
Func _WinAPI_SelectObject($HDC, $HGDIOBJ)
	Local $ARESULT = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $HDC, "handle", $HGDIOBJ)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SelectObject
Func _WinAPI_SetBkColor($HDC, $ICOLOR)
	Local $ARESULT = DllCall("gdi32.dll", "INT", "SetBkColor", "handle", $HDC, "dword", $ICOLOR)
	If @error Then Return SetError(@error, @extended, -0x00000001)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetBkColor
Func _WinAPI_SetBkMode($HDC, $IBKMODE)
	Local $ARESULT = DllCall("gdi32.dll", "int", "SetBkMode", "handle", $HDC, "int", $IBKMODE)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetBkMode
Func _WinAPI_SetCapture($HWND)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "SetCapture", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetCapture
Func _WinAPI_SetCursor($HCURSOR)
	Local $ARESULT = DllCall("user32.dll", "handle", "SetCursor", "handle", $HCURSOR)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetCursor
Func _WinAPI_SetDefaultPrinter($SPRINTER)
	Local $ARESULT = DllCall("winspool.drv", "bool", "SetDefaultPrinterW", "wstr", $SPRINTER)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetDefaultPrinter
Func _WinAPI_SetDIBits($HDC, $HBMP, $ISTARTSCAN, $ISCANLINES, $PBITS, $PBMI, $ICOLORUSE = 0x00000000)
	Local $ARESULT = DllCall("gdi32.dll", "int", "SetDIBits", "handle", $HDC, "handle", $HBMP, "uint", $ISTARTSCAN, "uint", $ISCANLINES, "ptr", $PBITS, "ptr", $PBMI, "uint", $ICOLORUSE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetDIBits
Func _WinAPI_SetEndOfFile($HFILE)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetEndOfFile", "handle", $HFILE)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetEndOfFile
Func _WinAPI_SetEvent($HEVENT)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetEvent", "handle", $HEVENT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetEvent
Func _WinAPI_SetFilePointer($HFILE, $IPOS, $IMETHOD = 0x00000000)
	Local $ARESULT = DllCall("kernel32.dll", "INT", "SetFilePointer", "handle", $HFILE, "long", $IPOS, "ptr", 0x00000000, "long", $IMETHOD)
	If @error Then Return SetError(@error, @extended, -0x00000001)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetFilePointer
Func _WinAPI_SetFocus($HWND)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "SetFocus", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetFocus
Func _WinAPI_SetFont($HWND, $HFONT, $FREDRAW = True)
	_SendMessage($HWND, $__WINAPICONSTANT_WM_SETFONT, $HFONT, $FREDRAW, 0x00000000, "hwnd")
EndFunc   ;==>_WinAPI_SetFont
Func _WinAPI_SetHandleInformation($HOBJECT, $IMASK, $IFLAGS)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetHandleInformation", "handle", $HOBJECT, "dword", $IMASK, "dword", $IFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetHandleInformation
Func _WinAPI_SetLayeredWindowAttributes($HWND, $I_TRANSCOLOR, $TRANSPARENCY = 0x000000FF, $DWFLAGS = 0x00000003, $ISCOLORREF = False)
	If $DWFLAGS = Default Or $DWFLAGS = "" Or $DWFLAGS < 0x00000000 Then $DWFLAGS = 0x00000003
	If Not $ISCOLORREF Then
		$I_TRANSCOLOR = Int(BinaryMid($I_TRANSCOLOR, 0x00000003, 0x00000001) & BinaryMid($I_TRANSCOLOR, 0x00000002, 0x00000001) & BinaryMid($I_TRANSCOLOR, 0x00000001, 0x00000001))
	EndIf
	Local $ARESULT = DllCall("user32.dll", "bool", "SetLayeredWindowAttributes", "hwnd", $HWND, "dword", $I_TRANSCOLOR, "byte", $TRANSPARENCY, "dword", $DWFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetLayeredWindowAttributes
Func _WinAPI_SetParent($HWNDCHILD, $HWNDPARENT)
	Local $ARESULT = DllCall("user32.dll", "hwnd", "SetParent", "hwnd", $HWNDCHILD, "hwnd", $HWNDPARENT)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetParent
Func _WinAPI_SetProcessAffinityMask($HPROCESS, $IMASK)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "SetProcessAffinityMask", "handle", $HPROCESS, "ulong_ptr", $IMASK)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetProcessAffinityMask
Func _WinAPI_SetSysColors($VELEMENTS, $VCOLORS)
	Local $ISEARRAY = IsArray($VELEMENTS), $ISCARRAY = IsArray($VCOLORS)
	Local $IELEMENTNUM
	If Not $ISCARRAY AND Not $ISEARRAY Then
		$IELEMENTNUM = 0x00000001
	ElseIf $ISCARRAY Or $ISEARRAY Then
		If Not $ISCARRAY Or Not $ISEARRAY Then Return SetError(-0x00000001, -0x00000001, False)
		If UBound($VELEMENTS) <> UBound($VCOLORS) Then Return SetError(-0x00000001, -0x00000001, False)
		$IELEMENTNUM = UBound($VELEMENTS)
	EndIf
	Local $TELEMENTS = DllStructCreate("int Element[" & $IELEMENTNUM & "]")
	Local $TCOLORS = DllStructCreate("dword NewColor[" & $IELEMENTNUM & "]")
	Local $PELEMENTS = DllStructGetPtr($TELEMENTS)
	Local $PCOLORS = DllStructGetPtr($TCOLORS)
	If Not $ISEARRAY Then
		DllStructSetData($TELEMENTS, "Element", $VELEMENTS, 0x00000001)
	Else
		For $X = 0x00000000 To $IELEMENTNUM - 0x00000001
			DllStructSetData($TELEMENTS, "Element", $VELEMENTS[$X], $X + 0x00000001)
		Next
	EndIf
	If Not $ISCARRAY Then
		DllStructSetData($TCOLORS, "NewColor", $VCOLORS, 0x00000001)
	Else
		For $X = 0x00000000 To $IELEMENTNUM - 0x00000001
			DllStructSetData($TCOLORS, "NewColor", $VCOLORS[$X], $X + 0x00000001)
		Next
	EndIf
	Local $ARESULT = DllCall("user32.dll", "bool", "SetSysColors", "int", $IELEMENTNUM, "ptr", $PELEMENTS, "ptr", $PCOLORS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetSysColors
Func _WinAPI_SetTextColor($HDC, $ICOLOR)
	Local $ARESULT = DllCall("gdi32.dll", "INT", "SetTextColor", "handle", $HDC, "dword", $ICOLOR)
	If @error Then Return SetError(@error, @extended, -0x00000001)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetTextColor
Func _WinAPI_SetWindowLong($HWND, $IINDEX, $IVALUE)
	_WinAPI_SetLastError(0x00000000)
	Local $SFUNCNAME = "SetWindowLongW"
	If @AutoItX64 Then $SFUNCNAME = "SetWindowLongPtrW"
	Local $ARESULT = DllCall("user32.dll", "long_ptr", $SFUNCNAME, "hwnd", $HWND, "int", $IINDEX, "long_ptr", $IVALUE)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetWindowLong
Func _WinAPI_SetWindowPlacement($HWND, $PWINDOWPLACEMENT)
	Local $ARESULT = DllCall("user32.dll", "bool", "SetWindowPlacement", "hwnd", $HWND, "ptr", $PWINDOWPLACEMENT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetWindowPlacement
Func _WinAPI_SetWindowPos($HWND, $HAFTER, $IX, $IY, $ICX, $ICY, $IFLAGS)
	Local $ARESULT = DllCall("user32.dll", "bool", "SetWindowPos", "hwnd", $HWND, "hwnd", $HAFTER, "int", $IX, "int", $IY, "int", $ICX, "int", $ICY, "uint", $IFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetWindowPos
Func _WinAPI_SetWindowRgn($HWND, $HRGN, $BREDRAW = True)
	Local $ARESULT = DllCall("user32.dll", "int", "SetWindowRgn", "hwnd", $HWND, "handle", $HRGN, "bool", $BREDRAW)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetWindowRgn
Func _WinAPI_SetWindowsHookEx($IDHOOK, $LPFN, $HMOD, $DWTHREADID = 0x00000000)
	Local $ARESULT = DllCall("user32.dll", "handle", "SetWindowsHookEx", "int", $IDHOOK, "ptr", $LPFN, "handle", $HMOD, "dword", $DWTHREADID)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetWindowsHookEx
Func _WinAPI_SetWindowText($HWND, $STEXT)
	Local $ARESULT = DllCall("user32.dll", "bool", "SetWindowTextW", "hwnd", $HWND, "wstr", $STEXT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SetWindowText
Func _WinAPI_ShowCursor($FSHOW)
	Local $ARESULT = DllCall("user32.dll", "int", "ShowCursor", "bool", $FSHOW)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_ShowCursor
Func _WinAPI_ShowError($STEXT, $FEXIT = True)
	_WinAPI_MsgBox(0x00041010, "Error", $STEXT)
	If $FEXIT Then Exit
EndFunc   ;==>_WinAPI_ShowError
Func _WinAPI_ShowMsg($STEXT)
	_WinAPI_MsgBox(0x00000040 + 0x00001000, "Information", $STEXT)
EndFunc   ;==>_WinAPI_ShowMsg
Func _WinAPI_ShowWindow($HWND, $ICMDSHOW = 0x00000005)
	Local $ARESULT = DllCall("user32.dll", "bool", "ShowWindow", "hwnd", $HWND, "int", $ICMDSHOW)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_ShowWindow
Func _WinAPI_StringFromGUID($PGUID)
	Local $ARESULT = DllCall("ole32.dll", "int", "StringFromGUID2", "ptr", $PGUID, "wstr", "", "int", 0x00000028)
	If @error Then Return SetError(@error, @extended, "")
	Return SetExtended($ARESULT[0x00000000], $ARESULT[0x00000002])
EndFunc   ;==>_WinAPI_StringFromGUID
Func _WinAPI_SubLangId($LGID)
	Return BitShift($LGID, 0x0000000A)
EndFunc   ;==>_WinAPI_SubLangId
Func _WinAPI_SystemParametersInfo($IACTION, $IPARAM = 0x00000000, $VPARAM = 0x00000000, $IWININI = 0x00000000)
	Local $ARESULT = DllCall("user32.dll", "bool", "SystemParametersInfoW", "uint", $IACTION, "uint", $IPARAM, "ptr", $VPARAM, "uint", $IWININI)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_SystemParametersInfo
Func _WinAPI_TwipsPerPixelX()
	Local $LNGDC, $TWIPSPERPIXELX
	$LNGDC = _WinAPI_GetDC(0x00000000)
	$TWIPSPERPIXELX = 0x000005A0 / _WinAPI_GetDeviceCaps($LNGDC, $__WINAPICONSTANT_LOGPIXELSX)
	_WinAPI_ReleaseDC(0x00000000, $LNGDC)
	Return $TWIPSPERPIXELX
EndFunc   ;==>_WinAPI_TwipsPerPixelX
Func _WinAPI_TwipsPerPixelY()
	Local $LNGDC, $TWIPSPERPIXELY
	$LNGDC = _WinAPI_GetDC(0x00000000)
	$TWIPSPERPIXELY = 0x000005A0 / _WinAPI_GetDeviceCaps($LNGDC, $__WINAPICONSTANT_LOGPIXELSY)
	_WinAPI_ReleaseDC(0x00000000, $LNGDC)
	Return $TWIPSPERPIXELY
EndFunc   ;==>_WinAPI_TwipsPerPixelY
Func _WinAPI_UnhookWindowsHookEx($HHK)
	Local $ARESULT = DllCall("user32.dll", "bool", "UnhookWindowsHookEx", "handle", $HHK)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_UnhookWindowsHookEx
Func _WinAPI_UpdateLayeredWindow($HWND, $HDCDEST, $PPTDEST, $PSIZE, $HDCSRCE, $PPTSRCE, $IRGB, $PBLEND, $IFLAGS)
	Local $ARESULT = DllCall("user32.dll", "bool", "UpdateLayeredWindow", "hwnd", $HWND, "handle", $HDCDEST, "ptr", $PPTDEST, "ptr", $PSIZE, "handle", $HDCSRCE, "ptr", $PPTSRCE, "dword", $IRGB, "ptr", $PBLEND, "dword", $IFLAGS)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_UpdateLayeredWindow
Func _WinAPI_UpdateWindow($HWND)
	Local $ARESULT = DllCall("user32.dll", "bool", "UpdateWindow", "hwnd", $HWND)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_UpdateWindow
Func _WinAPI_WaitForInputIdle($HPROCESS, $ITIMEOUT = -0x00000001)
	Local $ARESULT = DllCall("user32.dll", "dword", "WaitForInputIdle", "handle", $HPROCESS, "dword", $ITIMEOUT)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_WaitForInputIdle
Func _WinAPI_WaitForMultipleObjects($ICOUNT, $PHANDLES, $FWAITALL = False, $ITIMEOUT = -0x00000001)
	Local $ARESULT = DllCall("kernel32.dll", "INT", "WaitForMultipleObjects", "dword", $ICOUNT, "ptr", $PHANDLES, "bool", $FWAITALL, "dword", $ITIMEOUT)
	If @error Then Return SetError(@error, @extended, -0x00000001)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_WaitForMultipleObjects
Func _WinAPI_WaitForSingleObject($HHANDLE, $ITIMEOUT = -0x00000001)
	Local $ARESULT = DllCall("kernel32.dll", "INT", "WaitForSingleObject", "handle", $HHANDLE, "dword", $ITIMEOUT)
	If @error Then Return SetError(@error, @extended, -0x00000001)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_WaitForSingleObject
Func _WinAPI_WideCharToMultiByte($PUNICODE, $ICODEPAGE = 0x00000000, $BRETSTRING = True)
	Local $SUNICODETYPE = "ptr"
	If IsDllStruct($PUNICODE) Then
		$PUNICODE = DllStructGetPtr($PUNICODE)
	Else
		If Not IsPtr($PUNICODE) Then $SUNICODETYPE = "wstr"
	EndIf
	Local $ARESULT = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $ICODEPAGE, "dword", 0x00000000, $SUNICODETYPE, $PUNICODE, "int", -0x00000001, "ptr", 0x00000000, "int", 0x00000000, "ptr", 0x00000000, "ptr", 0x00000000)
	If @error Then Return SetError(@error, @extended, "")
	Local $TMULTIBYTE = DllStructCreate("char[" & $ARESULT[0x00000000] & "]")
	Local $PMULTIBYTE = DllStructGetPtr($TMULTIBYTE)
	$ARESULT = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", $ICODEPAGE, "dword", 0x00000000, $SUNICODETYPE, $PUNICODE, "int", -0x00000001, "ptr", $PMULTIBYTE, "int", $ARESULT[0x00000000], "ptr", 0x00000000, "ptr", 0x00000000)
	If @error Then Return SetError(@error, @extended, "")
	If $BRETSTRING Then Return DllStructGetData($TMULTIBYTE, 0x00000001)
	Return $TMULTIBYTE
EndFunc   ;==>_WinAPI_WideCharToMultiByte
Func _WinAPI_WindowFromPoint(ByRef $TPOINT)
	Local $TPOINTCAST = DllStructCreate("int64", DllStructGetPtr($TPOINT))
	Local $ARESULT = DllCall("user32.dll", "hwnd", "WindowFromPoint", "int64", DllStructGetData($TPOINTCAST, 0x00000001))
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_WindowFromPoint
Func _WinAPI_WriteConsole($HCONSOLE, $STEXT)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "WriteConsoleW", "handle", $HCONSOLE, "wstr", $STEXT, "dword", StringLen($STEXT), "dword*", 0x00000000, "ptr", 0x00000000)
	If @error Then Return SetError(@error, @extended, False)
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_WriteConsole
Func _WinAPI_WriteFile($HFILE, $PBUFFER, $ITOWRITE, ByRef $IWRITTEN, $POVERLAPPED = 0x00000000)
	Local $ARESULT = DllCall("kernel32.dll", "bool", "WriteFile", "handle", $HFILE, "ptr", $PBUFFER, "dword", $ITOWRITE, "dword*", 0x00000000, "ptr", $POVERLAPPED)
	If @error Then Return SetError(@error, @extended, False)
	$IWRITTEN = $ARESULT[0x00000004]
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_WriteFile
Func _WinAPI_WriteProcessMemory($HPROCESS, $PBASEADDRESS, $PBUFFER, $ISIZE, ByRef $IWRITTEN, $SBUFFER = "ptr")
	Local $ARESULT = DllCall("kernel32.dll", "bool", "WriteProcessMemory", "handle", $HPROCESS, "ptr", $PBASEADDRESS, $SBUFFER, $PBUFFER, "ulong_ptr", $ISIZE, "ulong_ptr*", 0x00000000)
	If @error Then Return SetError(@error, @extended, False)
	$IWRITTEN = $ARESULT[0x00000005]
	Return $ARESULT[0x00000000]
EndFunc   ;==>_WinAPI_WriteProcessMemory
Global Const $_UDF_GLOBALIDS_OFFSET = 0x00000002
Global Const $_UDF_GLOBALID_MAX_WIN = 0x00000010
Global Const $_UDF_STARTID = 0x00002710
Global Const $_UDF_GLOBALID_MAX_IDS = 0x0000D8EF
Global Const $__UDFGUICONSTANT_WS_VISIBLE = 0x10000000
Global Const $__UDFGUICONSTANT_WS_CHILD = 0x40000000
Global $_UDF_GLOBALIDS_USED[$_UDF_GLOBALID_MAX_WIN][$_UDF_GLOBALID_MAX_IDS + $_UDF_GLOBALIDS_OFFSET + 0x00000001]
Func __UDF_GETNEXTGLOBALID($HWND)
	Local $NCTRLID, $IUSEDINDEX = -0x00000001, $FALLUSED = True
	If Not WinExists($HWND) Then Return SetError(-0x00000001, -0x00000001, 0x00000000)
	For $IINDEX = 0x00000000 To $_UDF_GLOBALID_MAX_WIN - 0x00000001
		If $_UDF_GLOBALIDS_USED[$IINDEX][0x00000000] <> 0x00000000 Then
			If Not WinExists($_UDF_GLOBALIDS_USED[$IINDEX][0x00000000]) Then
				For $X = 0x00000000 To UBound($_UDF_GLOBALIDS_USED, 0x00000002) - 0x00000001
					$_UDF_GLOBALIDS_USED[$IINDEX][$X] = 0x00000000
				Next
				$_UDF_GLOBALIDS_USED[$IINDEX][0x00000001] = $_UDF_STARTID
				$FALLUSED = False
			EndIf
		EndIf
	Next
	For $IINDEX = 0x00000000 To $_UDF_GLOBALID_MAX_WIN - 0x00000001
		If $_UDF_GLOBALIDS_USED[$IINDEX][0x00000000] = $HWND Then
			$IUSEDINDEX = $IINDEX
			ExitLoop
		EndIf
	Next
	If $IUSEDINDEX = -0x00000001 Then
		For $IINDEX = 0x00000000 To $_UDF_GLOBALID_MAX_WIN - 0x00000001
			If $_UDF_GLOBALIDS_USED[$IINDEX][0x00000000] = 0x00000000 Then
				$_UDF_GLOBALIDS_USED[$IINDEX][0x00000000] = $HWND
				$_UDF_GLOBALIDS_USED[$IINDEX][0x00000001] = $_UDF_STARTID
				$FALLUSED = False
				$IUSEDINDEX = $IINDEX
				ExitLoop
			EndIf
		Next
	EndIf
	If $IUSEDINDEX = -0x00000001 AND $FALLUSED Then Return SetError(0x00000010, 0x00000000, 0x00000000)
	If $_UDF_GLOBALIDS_USED[$IUSEDINDEX][0x00000001] = $_UDF_STARTID + $_UDF_GLOBALID_MAX_IDS Then
		For $IIDINDEX = $_UDF_GLOBALIDS_OFFSET To UBound($_UDF_GLOBALIDS_USED, 0x00000002) - 0x00000001
			If $_UDF_GLOBALIDS_USED[$IUSEDINDEX][$IIDINDEX] = 0x00000000 Then
				$NCTRLID = ($IIDINDEX - $_UDF_GLOBALIDS_OFFSET) + 0x00002710
				$_UDF_GLOBALIDS_USED[$IUSEDINDEX][$IIDINDEX] = $NCTRLID
				Return $NCTRLID
			EndIf
		Next
		Return SetError(-0x00000001, $_UDF_GLOBALID_MAX_IDS, 0x00000000)
	EndIf
	$NCTRLID = $_UDF_GLOBALIDS_USED[$IUSEDINDEX][0x00000001]
	$_UDF_GLOBALIDS_USED[$IUSEDINDEX][0x00000001] += 0x00000001
	$_UDF_GLOBALIDS_USED[$IUSEDINDEX][($NCTRLID - 0x00002710) + $_UDF_GLOBALIDS_OFFSET] = $NCTRLID
	Return $NCTRLID
EndFunc   ;==>__UDF_GETNEXTGLOBALID
Func __UDF_FREEGLOBALID($HWND, $IGLOBALID)
	If $IGLOBALID - $_UDF_STARTID < 0x00000000 Or $IGLOBALID - $_UDF_STARTID > $_UDF_GLOBALID_MAX_IDS Then Return SetError(-0x00000001, 0x00000000, False)
	For $IINDEX = 0x00000000 To $_UDF_GLOBALID_MAX_WIN - 0x00000001
		If $_UDF_GLOBALIDS_USED[$IINDEX][0x00000000] = $HWND Then
			For $X = $_UDF_GLOBALIDS_OFFSET To UBound($_UDF_GLOBALIDS_USED, 0x00000002) - 0x00000001
				If $_UDF_GLOBALIDS_USED[$IINDEX][$X] = $IGLOBALID Then
					$_UDF_GLOBALIDS_USED[$IINDEX][$X] = 0x00000000
					Return True
				EndIf
			Next
			Return SetError(-0x00000003, 0x00000000, False)
		EndIf
	Next
	Return SetError(-0x00000002, 0x00000000, False)
EndFunc   ;==>__UDF_FREEGLOBALID
Func __UDF_DEBUGPRINT($STEXT, $ILINE = @ScriptLineNumber, $ERR = @error, $EXT = @extended)
	ConsoleWrite("!===========================================================" & @CRLF & "+======================================================" & @CRLF & "-->Line(" & StringFormat("%04d", $ILINE) & "):" & @TAB & $STEXT & @CRLF & "+======================================================" & @CRLF)
	Return SetError($ERR, $EXT, 0x00000001)
EndFunc   ;==>__UDF_DEBUGPRINT
Func __UDF_VALIDATECLASSNAME($HWND, $SCLASSNAMES)
	__UDF_DEBUGPRINT("This is for debugging only, set the debug variable to false before submitting")
	If _WinAPI_IsClassName($HWND, $SCLASSNAMES) Then Return True
	Local $SSEPARATOR = Opt("GUIDataSeparatorChar")
	$SCLASSNAMES = StringReplace($SCLASSNAMES, $SSEPARATOR, ",")
	__UDF_DEBUGPRINT("Invalid Class Type(s):" & @LF & @TAB & "Expecting Type(s): " & $SCLASSNAMES & @LF & @TAB & "Received Type : " & _WinAPI_GetClassName($HWND))
	Exit
EndFunc   ;==>__UDF_VALIDATECLASSNAME
Global $_LB_GHLASTWND
Global $DEBUG_LB = False
Global Const $__LISTBOXCONSTANT_CLASSNAME = "ListBox"
Global Const $__LISTBOXCONSTANT_CLASSNAMES = $__LISTBOXCONSTANT_CLASSNAME & "|TListbox"
Global Const $__LISTBOXCONSTANT_WS_TABSTOP = 0x00010000
Global Const $__LISTBOXCONSTANT_DEFAULT_GUI_FONT = 0x00000011
Global Const $__LISTBOXCONSTANT_WM_SETREDRAW = 0x0000000B
Global Const $__LISTBOXCONSTANT_WM_GETFONT = 0x00000031
Func _GUICtrlListBox_AddFile($HWND, $SFILE)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_ADDFILE, 0x00000000, $SFILE, 0x00000000, "wparam", "wstr")
	Else
		Return GUICtrlSendMsg($HWND, $LB_ADDFILE, 0x00000000, $SFILE)
	EndIf
EndFunc   ;==>_GUICtrlListBox_AddFile
Func _GUICtrlListBox_AddString($HWND, $STEXT)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_ADDSTRING, 0x00000000, $STEXT, 0x00000000, "wparam", "wstr")
	Else
		Return GUICtrlSendMsg($HWND, $LB_ADDSTRING, 0x00000000, $STEXT)
	EndIf
EndFunc   ;==>_GUICtrlListBox_AddString
Func _GUICtrlListBox_BeginUpdate($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If Not IsHWnd($HWND) Then $HWND = GUICtrlGetHandle($HWND)
	Return _SendMessage($HWND, $__LISTBOXCONSTANT_WM_SETREDRAW) = 0x00000000
EndFunc   ;==>_GUICtrlListBox_BeginUpdate
Func _GUICtrlListBox_ClickItem($HWND, $IINDEX, $SBUTTON = "left", $FMOVE = False, $ICLICKS = 0x00000001, $ISPEED = 0x00000000)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If Not IsHWnd($HWND) Then $HWND = GUICtrlGetHandle($HWND)
	Local $TRECT = _GUICtrlListBox_GetItemRectEx($HWND, $IINDEX)
	Local $TPOINT = _WinAPI_PointFromRect($TRECT)
	$TPOINT = _WinAPI_ClientToScreen($HWND, $TPOINT)
	Local $IX, $IY
	_WinAPI_GetXYFromPoint($TPOINT, $IX, $IY)
	Local $IMODE = Opt("MouseCoordMode", 0x00000001)
	If Not $FMOVE Then
		Local $APOS = MouseGetPos()
		_WinAPI_ShowCursor(False)
		MouseClick($SBUTTON, $IX, $IY, $ICLICKS, $ISPEED)
		MouseMove($APOS[0x00000000], $APOS[0x00000001], 0x00000000)
		_WinAPI_ShowCursor(True)
	Else
		MouseClick($SBUTTON, $IX, $IY, $ICLICKS, $ISPEED)
	EndIf
	Opt("MouseCoordMode", $IMODE)
EndFunc   ;==>_GUICtrlListBox_ClickItem
Func _GUICtrlListBox_Create($HWND, $STEXT, $IX, $IY, $IWIDTH = 0x00000064, $IHEIGHT = 0x000000C8, $ISTYLE = 0x00B00002, $IEXSTYLE = 0x00000200)
	If Not IsHWnd($HWND) Then
		Return SetError(0x00000001, 0x00000000, 0x00000000)
	EndIf
	If Not IsString($STEXT) Then
		Return SetError(0x00000002, 0x00000000, 0x00000000)
	EndIf
	If $IWIDTH = -0x00000001 Then $IWIDTH = 0x00000064
	If $IHEIGHT = -0x00000001 Then $IHEIGHT = 0x000000C8
	Local Const $WS_VSCROLL = 0x00200000, $WS_HSCROLL = 0x00100000, $WS_BORDER = 0x00800000
	If $ISTYLE = -0x00000001 Then $ISTYLE = BitOR($WS_BORDER, $WS_VSCROLL, $WS_HSCROLL, $LBS_SORT)
	If $IEXSTYLE = -0x00000001 Then $IEXSTYLE = 0x00000200
	$ISTYLE = BitOR($ISTYLE, $__UDFGUICONSTANT_WS_VISIBLE, $__LISTBOXCONSTANT_WS_TABSTOP, $__UDFGUICONSTANT_WS_CHILD, $LBS_NOTIFY)
	Local $NCTRLID = __UDF_GETNEXTGLOBALID($HWND)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	Local $HLIST = _WinAPI_CreateWindowEx($IEXSTYLE, $__LISTBOXCONSTANT_CLASSNAME, "", $ISTYLE, $IX, $IY, $IWIDTH, $IHEIGHT, $HWND, $NCTRLID)
	_WinAPI_SetFont($HLIST, _WinAPI_GetStockObject($__LISTBOXCONSTANT_DEFAULT_GUI_FONT))
	If StringLen($STEXT) Then _GUICtrlListBox_AddString($HLIST, $STEXT)
	Return $HLIST
EndFunc   ;==>_GUICtrlListBox_Create
Func _GUICtrlListBox_DeleteString($HWND, $IINDEX)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_DELETESTRING, $IINDEX)
	Else
		Return GUICtrlSendMsg($HWND, $LB_DELETESTRING, $IINDEX, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_DeleteString
Func _GUICtrlListBox_Destroy(ByRef $HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $DESTROYED = 0x00000000
	If IsHWnd($HWND) Then
		If _WinAPI_InProcess($HWND, $_LB_GHLASTWND) Then
			Local $NCTRLID = _WinAPI_GetDlgCtrlID($HWND)
			Local $HPARENT = _WinAPI_GetParent($HWND)
			$DESTROYED = _WinAPI_DestroyWindow($HWND)
			Local $IRET = __UDF_FREEGLOBALID($HPARENT, $NCTRLID)
			If Not $IRET Then
			EndIf
		Else
			Return SetError(0x00000001, 0x00000001, False)
		EndIf
	Else
		$DESTROYED = GUICtrlDelete($HWND)
	EndIf
	If $DESTROYED Then $HWND = 0x00000000
	Return $DESTROYED <> 0x00000000
EndFunc   ;==>_GUICtrlListBox_Destroy
Func _GUICtrlListBox_Dir($HWND, $SFILE, $IATTRIBUTES = 0x00000000, $FBRACKETS = True)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If BitAND($IATTRIBUTES, $DDL_DRIVES) = $DDL_DRIVES AND Not $FBRACKETS Then
		Local $STEXT
		Local $GUI_NO_BRACKETS = GUICreate("no brackets")
		Local $LIST_NO_BRACKETS = GUICtrlCreateList("", 0x000000F0, 0x00000028, 0x00000078, 0x00000078)
		Local $V_RET = GUICtrlSendMsg($LIST_NO_BRACKETS, $LB_DIR, $IATTRIBUTES, $SFILE)
		For $I = 0x00000000 To _GUICtrlListBox_GetCount($LIST_NO_BRACKETS) - 0x00000001
			$STEXT = _GUICtrlListBox_GetText($LIST_NO_BRACKETS, $I)
			$STEXT = StringReplace(StringReplace(StringReplace($STEXT, "[", ""), "]", ":"), "-", "")
			_GUICtrlListBox_InsertString($HWND, $STEXT)
		Next
		GUIDelete($GUI_NO_BRACKETS)
		Return $V_RET
	Else
		If IsHWnd($HWND) Then
			Return _SendMessage($HWND, $LB_DIR, $IATTRIBUTES, $SFILE, 0x00000000, "wparam", "wstr")
		Else
			Return GUICtrlSendMsg($HWND, $LB_DIR, $IATTRIBUTES, $SFILE)
		EndIf
	EndIf
EndFunc   ;==>_GUICtrlListBox_Dir
Func _GUICtrlListBox_EndUpdate($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If Not IsHWnd($HWND) Then $HWND = GUICtrlGetHandle($HWND)
	Return _SendMessage($HWND, $__LISTBOXCONSTANT_WM_SETREDRAW, 0x00000001, 0x00000000) = 0x00000000
EndFunc   ;==>_GUICtrlListBox_EndUpdate
Func _GUICtrlListBox_FindString($HWND, $STEXT, $FEXACT = False)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		If ($FEXACT) Then
			Return _SendMessage($HWND, $LB_FINDSTRINGEXACT, -0x00000001, $STEXT, 0x00000000, "wparam", "wstr")
		Else
			Return _SendMessage($HWND, $LB_FINDSTRING, -0x00000001, $STEXT, 0x00000000, "wparam", "wstr")
		EndIf
	Else
		If ($FEXACT) Then
			Return GUICtrlSendMsg($HWND, $LB_FINDSTRINGEXACT, -0x00000001, $STEXT)
		Else
			Return GUICtrlSendMsg($HWND, $LB_FINDSTRING, -0x00000001, $STEXT)
		EndIf
	EndIf
EndFunc   ;==>_GUICtrlListBox_FindString
Func _GUICtrlListBox_FindInText($HWND, $STEXT, $ISTART = -0x00000001, $FWRAPOK = True)
	Local $SLIST
	Local $ICOUNT = _GUICtrlListBox_GetCount($HWND)
	For $II = $ISTART + 0x00000001 To $ICOUNT - 0x00000001
		$SLIST = _GUICtrlListBox_GetText($HWND, $II)
		If StringInStr($SLIST, $STEXT) Then Return $II
	Next
	If ($ISTART = -0x00000001) Or Not $FWRAPOK Then Return -0x00000001
	For $II = 0x00000000 To $ISTART - 0x00000001
		$SLIST = _GUICtrlListBox_GetText($HWND, $II)
		If StringInStr($SLIST, $STEXT) Then Return $II
	Next
	Return -0x00000001
EndFunc   ;==>_GUICtrlListBox_FindInText
Func _GUICtrlListBox_GetAnchorIndex($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETANCHORINDEX)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETANCHORINDEX, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetAnchorIndex
Func _GUICtrlListBox_GetCaretIndex($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETCARETINDEX)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETCARETINDEX, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetCaretIndex
Func _GUICtrlListBox_GetCount($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETCOUNT)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETCOUNT, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetCount
Func _GUICtrlListBox_GetCurSel($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETCURSEL)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETCURSEL, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetCurSel
Func _GUICtrlListBox_GetHorizontalExtent($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETHORIZONTALEXTENT)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETHORIZONTALEXTENT, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetHorizontalExtent
Func _GUICtrlListBox_GetItemData($HWND, $IINDEX)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETITEMDATA, $IINDEX)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETITEMDATA, $IINDEX, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetItemData
Func _GUICtrlListBox_GetItemHeight($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETITEMHEIGHT)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETITEMHEIGHT, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetItemHeight
Func _GUICtrlListBox_GetItemRect($HWND, $IINDEX)
	Local $ARECT[0x00000004]
	Local $TRECT = _GUICtrlListBox_GetItemRectEx($HWND, $IINDEX)
	$ARECT[0x00000000] = DllStructGetData($TRECT, "Left")
	$ARECT[0x00000001] = DllStructGetData($TRECT, "Top")
	$ARECT[0x00000002] = DllStructGetData($TRECT, "Right")
	$ARECT[0x00000003] = DllStructGetData($TRECT, "Bottom")
	Return $ARECT
EndFunc   ;==>_GUICtrlListBox_GetItemRect
Func _GUICtrlListBox_GetItemRectEx($HWND, $IINDEX)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $TRECT = DllStructCreate($TAGRECT)
	If IsHWnd($HWND) Then
		_SendMessage($HWND, $LB_GETITEMRECT, $IINDEX, DllStructGetPtr($TRECT), 0x00000000, "wparam", "ptr")
	Else
		GUICtrlSendMsg($HWND, $LB_GETITEMRECT, $IINDEX, DllStructGetPtr($TRECT))
	EndIf
	Return $TRECT
EndFunc   ;==>_GUICtrlListBox_GetItemRectEx
Func _GUICtrlListBox_GetListBoxInfo($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETLISTBOXINFO)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETLISTBOXINFO, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetListBoxInfo
Func _GUICtrlListBox_GetLocale($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETLOCALE)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETLOCALE, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetLocale
Func _GUICtrlListBox_GetLocaleCountry($HWND)
	Return _WinAPI_HiWord(_GUICtrlListBox_GetLocale($HWND))
EndFunc   ;==>_GUICtrlListBox_GetLocaleCountry
Func _GUICtrlListBox_GetLocaleLang($HWND)
	Return _WinAPI_LoWord(_GUICtrlListBox_GetLocale($HWND))
EndFunc   ;==>_GUICtrlListBox_GetLocaleLang
Func _GUICtrlListBox_GetLocalePrimLang($HWND)
	Return _WinAPI_PrimaryLangId(_GUICtrlListBox_GetLocaleLang($HWND))
EndFunc   ;==>_GUICtrlListBox_GetLocalePrimLang
Func _GUICtrlListBox_GetLocaleSubLang($HWND)
	Return _WinAPI_SubLangId(_GUICtrlListBox_GetLocaleLang($HWND))
EndFunc   ;==>_GUICtrlListBox_GetLocaleSubLang
Func _GUICtrlListBox_GetSel($HWND, $IINDEX)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETSEL, $IINDEX) <> 0x00000000
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETSEL, $IINDEX, 0x00000000) <> 0x00000000
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetSel
Func _GUICtrlListBox_GetSelCount($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETSELCOUNT)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETSELCOUNT, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetSelCount
Func _GUICtrlListBox_GetSelItems($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $AARRAY[0x00000001] = [0x00000000]
	Local $ICOUNT = _GUICtrlListBox_GetSelCount($HWND)
	If $ICOUNT > 0x00000000 Then
		ReDim $AARRAY[$ICOUNT + 0x00000001]
		Local $TARRAY = DllStructCreate("int[" & $ICOUNT & "]")
		If IsHWnd($HWND) Then
			_SendMessage($HWND, $LB_GETSELITEMS, $ICOUNT, DllStructGetPtr($TARRAY), 0x00000000, "wparam", "ptr")
		Else
			GUICtrlSendMsg($HWND, $LB_GETSELITEMS, $ICOUNT, DllStructGetPtr($TARRAY))
		EndIf
		$AARRAY[0x00000000] = $ICOUNT
		For $II = 0x00000001 To $ICOUNT
			$AARRAY[$II] = DllStructGetData($TARRAY, 0x00000001, $II)
		Next
	EndIf
	Return $AARRAY
EndFunc   ;==>_GUICtrlListBox_GetSelItems
Func _GUICtrlListBox_GetSelItemsText($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $ATEXT[0x00000001] = [0x00000000], $ICOUNT = _GUICtrlListBox_GetSelCount($HWND)
	If $ICOUNT > 0x00000000 Then
		Local $AINDICES = _GUICtrlListBox_GetSelItems($HWND)
		ReDim $ATEXT[UBound($AINDICES)]
		$ATEXT[0x00000000] = $AINDICES[0x00000000]
		For $I = 0x00000001 To $AINDICES[0x00000000]
			$ATEXT[$I] = _GUICtrlListBox_GetText($HWND, $AINDICES[$I])
		Next
	EndIf
	Return $ATEXT
EndFunc   ;==>_GUICtrlListBox_GetSelItemsText
Func _GUICtrlListBox_GetText($HWND, $IINDEX)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $TTEXT = DllStructCreate("wchar Text[" & _GUICtrlListBox_GetTextLen($HWND, $IINDEX) + 0x00000001 & "]")
	If Not IsHWnd($HWND) Then $HWND = GUICtrlGetHandle($HWND)
	_SendMessage($HWND, $LB_GETTEXT, $IINDEX, DllStructGetPtr($TTEXT), 0x00000000, "wparam", "ptr")
	Return DllStructGetData($TTEXT, "Text")
EndFunc   ;==>_GUICtrlListBox_GetText
Func _GUICtrlListBox_GetTextLen($HWND, $IINDEX)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETTEXTLEN, $IINDEX)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETTEXTLEN, $IINDEX, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetTextLen
Func _GUICtrlListBox_GetTopIndex($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_GETTOPINDEX)
	Else
		Return GUICtrlSendMsg($HWND, $LB_GETTOPINDEX, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_GetTopIndex
Func _GUICtrlListBox_InitStorage($HWND, $IITEMS, $IBYTES)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_INITSTORAGE, $IITEMS, $IBYTES)
	Else
		Return GUICtrlSendMsg($HWND, $LB_INITSTORAGE, $IITEMS, $IBYTES)
	EndIf
EndFunc   ;==>_GUICtrlListBox_InitStorage
Func _GUICtrlListBox_InsertString($HWND, $STEXT, $IINDEX = -0x00000001)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_INSERTSTRING, $IINDEX, $STEXT, 0x00000000, "wparam", "wstr")
	Else
		Return GUICtrlSendMsg($HWND, $LB_INSERTSTRING, $IINDEX, $STEXT)
	EndIf
EndFunc   ;==>_GUICtrlListBox_InsertString
Func _GUICtrlListBox_ItemFromPoint($HWND, $IX, $IY)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $IRET
	If IsHWnd($HWND) Then
		$IRET = _SendMessage($HWND, $LB_ITEMFROMPOINT, 0x00000000, _WinAPI_MakeLong($IX, $IY))
	Else
		$IRET = GUICtrlSendMsg($HWND, $LB_ITEMFROMPOINT, 0x00000000, _WinAPI_MakeLong($IX, $IY))
	EndIf
	If _WinAPI_HiWord($IRET) <> 0x00000000 Then $IRET = -0x00000001
	Return $IRET
EndFunc   ;==>_GUICtrlListBox_ItemFromPoint
Func _GUICtrlListBox_ReplaceString($HWND, $IINDEX, $STEXT)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If (_GUICtrlListBox_DeleteString($HWND, $IINDEX) == $LB_ERR) Then Return SetError($LB_ERR, $LB_ERR, False)
	If (_GUICtrlListBox_InsertString($HWND, $STEXT, $IINDEX) == $LB_ERR) Then Return SetError($LB_ERR, $LB_ERR, False)
	Return True
EndFunc   ;==>_GUICtrlListBox_ReplaceString
Func _GUICtrlListBox_ResetContent($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		_SendMessage($HWND, $LB_RESETCONTENT)
	Else
		GUICtrlSendMsg($HWND, $LB_RESETCONTENT, 0x00000000, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_ResetContent
Func _GUICtrlListBox_SelectString($HWND, $STEXT, $IINDEX = -0x00000001)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SELECTSTRING, $IINDEX, $STEXT, 0x00000000, "wparam", "wstr")
	Else
		Return GUICtrlSendMsg($HWND, $LB_SELECTSTRING, $IINDEX, $STEXT)
	EndIf
EndFunc   ;==>_GUICtrlListBox_SelectString
Func _GUICtrlListBox_SelItemRange($HWND, $IFIRST, $ILAST, $FSELECT = True)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SELITEMRANGE, $FSELECT, _WinAPI_MakeLong($IFIRST, $ILAST)) = 0x00000000
	Else
		Return GUICtrlSendMsg($HWND, $LB_SELITEMRANGE, $FSELECT, _WinAPI_MakeLong($IFIRST, $ILAST)) = 0x00000000
	EndIf
EndFunc   ;==>_GUICtrlListBox_SelItemRange
Func _GUICtrlListBox_SelItemRangeEx($HWND, $IFIRST, $ILAST)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SELITEMRANGEEX, $IFIRST, $ILAST) = 0x00000000
	Else
		Return GUICtrlSendMsg($HWND, $LB_SELITEMRANGEEX, $IFIRST, $ILAST) = 0x00000000
	EndIf
EndFunc   ;==>_GUICtrlListBox_SelItemRangeEx
Func _GUICtrlListBox_SetAnchorIndex($HWND, $IINDEX)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SETANCHORINDEX, $IINDEX) = 0x00000000
	Else
		Return GUICtrlSendMsg($HWND, $LB_SETANCHORINDEX, $IINDEX, 0x00000000) = 0x00000000
	EndIf
EndFunc   ;==>_GUICtrlListBox_SetAnchorIndex
Func _GUICtrlListBox_SetCaretIndex($HWND, $IINDEX, $FPARTIAL = False)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SETCARETINDEX, $IINDEX, $FPARTIAL) = 0x00000000
	Else
		Return GUICtrlSendMsg($HWND, $LB_SETCARETINDEX, $IINDEX, $FPARTIAL) = 0x00000000
	EndIf
EndFunc   ;==>_GUICtrlListBox_SetCaretIndex
Func _GUICtrlListBox_SetColumnWidth($HWND, $IWIDTH)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		_SendMessage($HWND, $LB_SETCOLUMNWIDTH, $IWIDTH)
	Else
		GUICtrlSendMsg($HWND, $LB_SETCOLUMNWIDTH, $IWIDTH, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_SetColumnWidth
Func _GUICtrlListBox_SetCurSel($HWND, $IINDEX)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SETCURSEL, $IINDEX)
	Else
		Return GUICtrlSendMsg($HWND, $LB_SETCURSEL, $IINDEX, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_SetCurSel
Func _GUICtrlListBox_SetHorizontalExtent($HWND, $IWIDTH)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		_SendMessage($HWND, $LB_SETHORIZONTALEXTENT, $IWIDTH)
	Else
		GUICtrlSendMsg($HWND, $LB_SETHORIZONTALEXTENT, $IWIDTH, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_SetHorizontalExtent
Func _GUICtrlListBox_SetItemData($HWND, $IINDEX, $IVALUE)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SETITEMDATA, $IINDEX, $IVALUE) <> -0x00000001
	Else
		Return GUICtrlSendMsg($HWND, $LB_SETITEMDATA, $IINDEX, $IVALUE) <> -0x00000001
	EndIf
EndFunc   ;==>_GUICtrlListBox_SetItemData
Func _GUICtrlListBox_SetItemHeight($HWND, $IHEIGHT, $IINDEX = 0x00000000)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $IRET
	If IsHWnd($HWND) Then
		$IRET = _SendMessage($HWND, $LB_SETITEMHEIGHT, $IINDEX, $IHEIGHT)
		_WinAPI_InvalidateRect($HWND)
	Else
		$IRET = GUICtrlSendMsg($HWND, $LB_SETITEMHEIGHT, $IINDEX, $IHEIGHT)
		_WinAPI_InvalidateRect(GUICtrlGetHandle($HWND))
	EndIf
	Return $IRET <> -0x00000001
EndFunc   ;==>_GUICtrlListBox_SetItemHeight
Func _GUICtrlListBox_SetLocale($HWND, $ILOCAL)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SETLOCALE, $ILOCAL)
	Else
		Return GUICtrlSendMsg($HWND, $LB_SETLOCALE, $ILOCAL, 0x00000000)
	EndIf
EndFunc   ;==>_GUICtrlListBox_SetLocale
Func _GUICtrlListBox_SetSel($HWND, $IINDEX = -0x00000001, $FSELECT = -0x00000001)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $I_RET = True
	If IsHWnd($HWND) Then
		If $IINDEX == -0x00000001 Then
			For $IINDEX = 0x00000000 To _GUICtrlListBox_GetCount($HWND) - 0x00000001
				$I_RET = _GUICtrlListBox_GetSel($HWND, $IINDEX)
				If ($I_RET == $LB_ERR) Then Return SetError($LB_ERR, $LB_ERR, False)
				If ($I_RET > 0x00000000) Then
					$I_RET = _SendMessage($HWND, $LB_SETSEL, False, $IINDEX) <> -0x00000001
				Else
					$I_RET = _SendMessage($HWND, $LB_SETSEL, True, $IINDEX) <> -0x00000001
				EndIf
				If ($I_RET == False) Then Return SetError($LB_ERR, $LB_ERR, False)
			Next
		ElseIf $FSELECT == -0x00000001 Then
			If _GUICtrlListBox_GetSel($HWND, $IINDEX) Then
				Return _SendMessage($HWND, $LB_SETSEL, False, $IINDEX) <> -0x00000001
			Else
				Return _SendMessage($HWND, $LB_SETSEL, True, $IINDEX) <> -0x00000001
			EndIf
		Else
			Return _SendMessage($HWND, $LB_SETSEL, $FSELECT, $IINDEX) <> -0x00000001
		EndIf
	Else
		If $IINDEX == -0x00000001 Then
			For $IINDEX = 0x00000000 To _GUICtrlListBox_GetCount($HWND) - 0x00000001
				$I_RET = _GUICtrlListBox_GetSel($HWND, $IINDEX)
				If ($I_RET == $LB_ERR) Then Return SetError($LB_ERR, $LB_ERR, False)
				If ($I_RET > 0x00000000) Then
					$I_RET = GUICtrlSendMsg($HWND, $LB_SETSEL, False, $IINDEX) <> -0x00000001
				Else
					$I_RET = GUICtrlSendMsg($HWND, $LB_SETSEL, True, $IINDEX) <> -0x00000001
				EndIf
				If ($I_RET == False) Then Return SetError($LB_ERR, $LB_ERR, False)
			Next
		ElseIf $FSELECT == -0x00000001 Then
			If _GUICtrlListBox_GetSel($HWND, $IINDEX) Then
				Return GUICtrlSendMsg($HWND, $LB_SETSEL, False, $IINDEX) <> -0x00000001
			Else
				Return GUICtrlSendMsg($HWND, $LB_SETSEL, True, $IINDEX) <> -0x00000001
			EndIf
		Else
			Return GUICtrlSendMsg($HWND, $LB_SETSEL, $FSELECT, $IINDEX) <> -0x00000001
		EndIf
	EndIf
	Return $I_RET
EndFunc   ;==>_GUICtrlListBox_SetSel
Func _GUICtrlListBox_SetTabStops($HWND, $ATABSTOPS)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $ICOUNT = $ATABSTOPS[0x00000000]
	Local $TTABSTOPS = DllStructCreate("int[" & $ICOUNT & "]")
	For $II = 0x00000001 To $ICOUNT
		DllStructSetData($TTABSTOPS, 0x00000001, $ATABSTOPS[$II], $II)
	Next
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SETTABSTOPS, $ICOUNT, DllStructGetPtr($TTABSTOPS), 0x00000000, "wparam", "ptr") = 0x00000000
	Else
		Return GUICtrlSendMsg($HWND, $LB_SETTABSTOPS, $ICOUNT, DllStructGetPtr($TTABSTOPS)) = 0x00000000
	EndIf
EndFunc   ;==>_GUICtrlListBox_SetTabStops
Func _GUICtrlListBox_SetTopIndex($HWND, $IINDEX)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	If IsHWnd($HWND) Then
		Return _SendMessage($HWND, $LB_SETTOPINDEX, $IINDEX) <> -0x00000001
	Else
		Return GUICtrlSendMsg($HWND, $LB_SETTOPINDEX, $IINDEX, 0x00000000) <> -0x00000001
	EndIf
EndFunc   ;==>_GUICtrlListBox_SetTopIndex
Func _GUICtrlListBox_Sort($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $BAK = _GUICtrlListBox_GetText($HWND, 0x00000000)
	If ($BAK == -0x00000001) Then Return SetError($LB_ERR, $LB_ERR, False)
	If (_GUICtrlListBox_DeleteString($HWND, 0x00000000) == -0x00000001) Then Return SetError($LB_ERR, $LB_ERR, False)
	Return _GUICtrlListBox_AddString($HWND, $BAK) <> -0x00000001
EndFunc   ;==>_GUICtrlListBox_Sort
Func _GUICtrlListBox_SwapString($HWND, $IINDEXA, $IINDEXB)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $ITEMA = _GUICtrlListBox_GetText($HWND, $IINDEXA)
	Local $ITEMB = _GUICtrlListBox_GetText($HWND, $IINDEXB)
	If (_GUICtrlListBox_DeleteString($HWND, $IINDEXA) == -0x00000001) Then Return SetError($LB_ERR, $LB_ERR, False)
	If (_GUICtrlListBox_InsertString($HWND, $ITEMB, $IINDEXA) == -0x00000001) Then Return SetError($LB_ERR, $LB_ERR, False)
	If (_GUICtrlListBox_DeleteString($HWND, $IINDEXB) == -0x00000001) Then Return SetError($LB_ERR, $LB_ERR, False)
	If (_GUICtrlListBox_InsertString($HWND, $ITEMA, $IINDEXB) == -0x00000001) Then Return SetError($LB_ERR, $LB_ERR, False)
	Return True
EndFunc   ;==>_GUICtrlListBox_SwapString
Func _GUICtrlListBox_UpdateHScroll($HWND)
	If $DEBUG_LB Then __UDF_VALIDATECLASSNAME($HWND, $__LISTBOXCONSTANT_CLASSNAMES)
	Local $HDC, $HFONT, $TSIZE, $STEXT
	Local $IMAX = 0x00000000
	If IsHWnd($HWND) Then
		$HFONT = _SendMessage($HWND, $__LISTBOXCONSTANT_WM_GETFONT)
		$HDC = _WinAPI_GetDC($HWND)
		_WinAPI_SelectObject($HDC, $HFONT)
		For $II = 0x00000000 To _GUICtrlListBox_GetCount($HWND) - 0x00000001
			$STEXT = _GUICtrlListBox_GetText($HWND, $II)
			$TSIZE = _WinAPI_GetTextExtentPoint32($HDC, $STEXT & "W")
			If DllStructGetData($TSIZE, "X") > $IMAX Then
				$IMAX = DllStructGetData($TSIZE, "X")
			EndIf
		Next
		_GUICtrlListBox_SetHorizontalExtent($HWND, $IMAX)
		_WinAPI_SelectObject($HDC, $HFONT)
		_WinAPI_ReleaseDC($HWND, $HDC)
	Else
		$HFONT = GUICtrlSendMsg($HWND, $__LISTBOXCONSTANT_WM_GETFONT, 0x00000000, 0x00000000)
		Local $T_HWND = GUICtrlGetHandle($HWND)
		$HDC = _WinAPI_GetDC($T_HWND)
		_WinAPI_SelectObject($HDC, $HFONT)
		For $II = 0x00000000 To _GUICtrlListBox_GetCount($HWND) - 0x00000001
			$STEXT = _GUICtrlListBox_GetText($HWND, $II)
			$TSIZE = _WinAPI_GetTextExtentPoint32($HDC, $STEXT & "W")
			If DllStructGetData($TSIZE, "X") > $IMAX Then
				$IMAX = DllStructGetData($TSIZE, "X")
			EndIf
		Next
		_GUICtrlListBox_SetHorizontalExtent($HWND, $IMAX)
		_WinAPI_SelectObject($HDC, $HFONT)
		_WinAPI_ReleaseDC($T_HWND, $HDC)
	EndIf
EndFunc   ;==>_GUICtrlListBox_UpdateHScroll
Global Const $WS_TILED = 0x00000000
Global Const $WS_OVERLAPPED = 0x00000000
Global Const $WS_MAXIMIZEBOX = 0x00010000
Global Const $WS_MINIMIZEBOX = 0x00020000
Global Const $WS_TABSTOP = 0x00010000
Global Const $WS_GROUP = 0x00020000
Global Const $WS_SIZEBOX = 0x00040000
Global Const $WS_THICKFRAME = 0x00040000
Global Const $WS_SYSMENU = 0x00080000
Global Const $WS_HSCROLL = 0x00100000
Global Const $WS_VSCROLL = 0x00200000
Global Const $WS_DLGFRAME = 0x00400000
Global Const $WS_BORDER = 0x00800000
Global Const $WS_CAPTION = 0x00C00000
Global Const $WS_OVERLAPPEDWINDOW = 0x00CF0000
Global Const $WS_TILEDWINDOW = 0x00CF0000
Global Const $WS_MAXIMIZE = 0x01000000
Global Const $WS_CLIPCHILDREN = 0x02000000
Global Const $WS_CLIPSIBLINGS = 0x04000000
Global Const $WS_DISABLED = 0x08000000
Global Const $WS_VISIBLE = 0x10000000
Global Const $WS_MINIMIZE = 0x20000000
Global Const $WS_CHILD = 0x40000000
Global Const $WS_POPUP = 0x80000000
Global Const $WS_POPUPWINDOW = 0x80880000
Global Const $DS_MODALFRAME = 0x00000080
Global Const $DS_SETFOREGROUND = 0x00000200
Global Const $DS_CONTEXTHELP = 0x00002000
Global Const $WS_EX_ACCEPTFILES = 0x00000010
Global Const $WS_EX_MDICHILD = 0x00000040
Global Const $WS_EX_APPWINDOW = 0x00040000
Global Const $WS_EX_COMPOSITED = 0x02000000
Global Const $WS_EX_CLIENTEDGE = 0x00000200
Global Const $WS_EX_CONTEXTHELP = 0x00000400
Global Const $WS_EX_DLGMODALFRAME = 0x00000001
Global Const $WS_EX_LEFTSCROLLBAR = 0x00004000
Global Const $WS_EX_OVERLAPPEDWINDOW = 0x00000300
Global Const $WS_EX_RIGHT = 0x00001000
Global Const $WS_EX_STATICEDGE = 0x00020000
Global Const $WS_EX_TOOLWINDOW = 0x00000080
Global Const $WS_EX_TOPMOST = 0x00000008
Global Const $WS_EX_TRANSPARENT = 0x00000020
Global Const $WS_EX_WINDOWEDGE = 0x00000100
Global Const $WS_EX_LAYERED = 0x00080000
Global Const $WS_EX_CONTROLPARENT = 0x00010000
Global Const $WS_EX_LAYOUTRTL = 0x00400000
Global Const $WS_EX_RTLREADING = 0x00002000
Global Const $WM_GETTEXTLENGTH = 0x0000000E
Global Const $WM_GETTEXT = 0x0000000D
Global Const $WM_SIZE = 0x00000005
Global Const $WM_SIZING = 0x00000214
Global Const $WM_USER = 0x00000400
Global Const $WM_CREATE = 0x00000001
Global Const $WM_DESTROY = 0x00000002
Global Const $WM_MOVE = 0x00000003
Global Const $WM_ACTIVATE = 0x00000006
Global Const $WM_SETFOCUS = 0x00000007
Global Const $WM_KILLFOCUS = 0x00000008
Global Const $WM_ENABLE = 0x0000000A
Global Const $WM_SETREDRAW = 0x0000000B
Global Const $WM_SETTEXT = 0x0000000C
Global Const $WM_PAINT = 0x0000000F
Global Const $WM_CLOSE = 0x00000010
Global Const $WM_QUIT = 0x00000012
Global Const $WM_ERASEBKGND = 0x00000014
Global Const $WM_SYSCOLORCHANGE = 0x00000015
Global Const $WM_SHOWWINDOW = 0x00000018
Global Const $WM_WININICHANGE = 0x0000001A
Global Const $WM_DEVMODECHANGE = 0x0000001B
Global Const $WM_ACTIVATEAPP = 0x0000001C
Global Const $WM_FONTCHANGE = 0x0000001D
Global Const $WM_TIMECHANGE = 0x0000001E
Global Const $WM_CANCELMODE = 0x0000001F
Global Const $WM_SETCURSOR = 0x00000020
Global Const $WM_MOUSEACTIVATE = 0x00000021
Global Const $WM_CHILDACTIVATE = 0x00000022
Global Const $WM_QUEUESYNC = 0x00000023
Global Const $WM_GETMINMAXINFO = 0x00000024
Global Const $WM_PAINTICON = 0x00000026
Global Const $WM_ICONERASEBKGND = 0x00000027
Global Const $WM_NEXTDLGCTL = 0x00000028
Global Const $WM_SPOOLERSTATUS = 0x0000002A
Global Const $WM_DRAWITEM = 0x0000002B
Global Const $WM_MEASUREITEM = 0x0000002C
Global Const $WM_DELETEITEM = 0x0000002D
Global Const $WM_VKEYTOITEM = 0x0000002E
Global Const $WM_CHARTOITEM = 0x0000002F
Global Const $WM_SETFONT = 0x00000030
Global Const $WM_GETFONT = 0x00000031
Global Const $WM_SETHOTKEY = 0x00000032
Global Const $WM_GETHOTKEY = 0x00000033
Global Const $WM_QUERYDRAGICON = 0x00000037
Global Const $WM_COMPAREITEM = 0x00000039
Global Const $WM_GETOBJECT = 0x0000003D
Global Const $WM_COMPACTING = 0x00000041
Global Const $WM_COMMNOTIFY = 0x00000044
Global Const $WM_WINDOWPOSCHANGING = 0x00000046
Global Const $WM_WINDOWPOSCHANGED = 0x00000047
Global Const $WM_POWER = 0x00000048
Global Const $WM_NOTIFY = 0x0000004E
Global Const $WM_COPYDATA = 0x0000004A
Global Const $WM_CANCELJOURNAL = 0x0000004B
Global Const $WM_INPUTLANGCHANGEREQUEST = 0x00000050
Global Const $WM_INPUTLANGCHANGE = 0x00000051
Global Const $WM_TCARD = 0x00000052
Global Const $WM_HELP = 0x00000053
Global Const $WM_USERCHANGED = 0x00000054
Global Const $WM_NOTIFYFORMAT = 0x00000055
Global Const $WM_CUT = 0x00000300
Global Const $WM_COPY = 0x00000301
Global Const $WM_PASTE = 0x00000302
Global Const $WM_CLEAR = 0x00000303
Global Const $WM_UNDO = 0x00000304
Global Const $WM_CONTEXTMENU = 0x0000007B
Global Const $WM_STYLECHANGING = 0x0000007C
Global Const $WM_STYLECHANGED = 0x0000007D
Global Const $WM_DISPLAYCHANGE = 0x0000007E
Global Const $WM_GETICON = 0x0000007F
Global Const $WM_SETICON = 0x00000080
Global Const $WM_NCCREATE = 0x00000081
Global Const $WM_NCDESTROY = 0x00000082
Global Const $WM_NCCALCSIZE = 0x00000083
Global Const $WM_NCHITTEST = 0x00000084
Global Const $WM_NCPAINT = 0x00000085
Global Const $WM_NCACTIVATE = 0x00000086
Global Const $WM_GETDLGCODE = 0x00000087
Global Const $WM_SYNCPAINT = 0x00000088
Global Const $WM_NCMOUSEMOVE = 0x000000A0
Global Const $WM_NCLBUTTONDOWN = 0x000000A1
Global Const $WM_NCLBUTTONUP = 0x000000A2
Global Const $WM_NCLBUTTONDBLCLK = 0x000000A3
Global Const $WM_NCRBUTTONDOWN = 0x000000A4
Global Const $WM_NCRBUTTONUP = 0x000000A5
Global Const $WM_NCRBUTTONDBLCLK = 0x000000A6
Global Const $WM_NCMBUTTONDOWN = 0x000000A7
Global Const $WM_NCMBUTTONUP = 0x000000A8
Global Const $WM_NCMBUTTONDBLCLK = 0x000000A9
Global Const $WM_KEYDOWN = 0x00000100
Global Const $WM_KEYUP = 0x00000101
Global Const $WM_CHAR = 0x00000102
Global Const $WM_DEADCHAR = 0x00000103
Global Const $WM_SYSKEYDOWN = 0x00000104
Global Const $WM_SYSKEYUP = 0x00000105
Global Const $WM_SYSCHAR = 0x00000106
Global Const $WM_SYSDEADCHAR = 0x00000107
Global Const $WM_INITDIALOG = 0x00000110
Global Const $WM_COMMAND = 0x00000111
Global Const $WM_SYSCOMMAND = 0x00000112
Global Const $WM_TIMER = 0x00000113
Global Const $WM_HSCROLL = 0x00000114
Global Const $WM_VSCROLL = 0x00000115
Global Const $WM_INITMENU = 0x00000116
Global Const $WM_INITMENUPOPUP = 0x00000117
Global Const $WM_MENUSELECT = 0x0000011F
Global Const $WM_MENUCHAR = 0x00000120
Global Const $WM_ENTERIDLE = 0x00000121
Global Const $WM_MENURBUTTONUP = 0x00000122
Global Const $WM_MENUDRAG = 0x00000123
Global Const $WM_MENUGETOBJECT = 0x00000124
Global Const $WM_UNINITMENUPOPUP = 0x00000125
Global Const $WM_MENUCOMMAND = 0x00000126
Global Const $WM_CHANGEUISTATE = 0x00000127
Global Const $WM_UPDATEUISTATE = 0x00000128
Global Const $WM_QUERYUISTATE = 0x00000129
Global Const $WM_CTLCOLORMSGBOX = 0x00000132
Global Const $WM_CTLCOLOREDIT = 0x00000133
Global Const $WM_CTLCOLORLISTBOX = 0x00000134
Global Const $WM_CTLCOLORBTN = 0x00000135
Global Const $WM_CTLCOLORDLG = 0x00000136
Global Const $WM_CTLCOLORSCROLLBAR = 0x00000137
Global Const $WM_CTLCOLORSTATIC = 0x00000138
Global Const $WM_CTLCOLOR = 0x00000019
Global Const $MN_GETHMENU = 0x000001E1
Global Const $NM_FIRST = 0x00000000
Global Const $NM_OUTOFMEMORY = $NM_FIRST - 0x00000001
Global Const $NM_CLICK = $NM_FIRST - 0x00000002
Global Const $NM_DBLCLK = $NM_FIRST - 0x00000003
Global Const $NM_RETURN = $NM_FIRST - 0x00000004
Global Const $NM_RCLICK = $NM_FIRST - 0x00000005
Global Const $NM_RDBLCLK = $NM_FIRST - 0x00000006
Global Const $NM_SETFOCUS = $NM_FIRST - 0x00000007
Global Const $NM_KILLFOCUS = $NM_FIRST - 0x00000008
Global Const $NM_CUSTOMDRAW = $NM_FIRST - 0x0000000C
Global Const $NM_HOVER = $NM_FIRST - 0x0000000D
Global Const $NM_NCHITTEST = $NM_FIRST - 0x0000000E
Global Const $NM_KEYDOWN = $NM_FIRST - 0x0000000F
Global Const $NM_RELEASEDCAPTURE = $NM_FIRST - 0x00000010
Global Const $NM_SETCURSOR = $NM_FIRST - 0x00000011
Global Const $NM_CHAR = $NM_FIRST - 0x00000012
Global Const $NM_TOOLTIPSCREATED = $NM_FIRST - 0x00000013
Global Const $NM_LDOWN = $NM_FIRST - 0x00000014
Global Const $NM_RDOWN = $NM_FIRST - 0x00000015
Global Const $NM_THEMECHANGED = $NM_FIRST - 0x00000016
Global Const $WM_MOUSEMOVE = 0x00000200
Global Const $WM_LBUTTONDOWN = 0x00000201
Global Const $WM_LBUTTONUP = 0x00000202
Global Const $WM_LBUTTONDBLCLK = 0x00000203
Global Const $WM_RBUTTONDOWN = 0x00000204
Global Const $WM_RBUTTONUP = 0x00000205
Global Const $WM_RBUTTONDBLCK = 0x00000206
Global Const $WM_MBUTTONDOWN = 0x00000207
Global Const $WM_MBUTTONUP = 0x00000208
Global Const $WM_MBUTTONDBLCK = 0x00000209
Global Const $WM_MOUSEWHEEL = 0x0000020A
Global Const $WM_XBUTTONDOWN = 0x0000020B
Global Const $WM_XBUTTONUP = 0x0000020C
Global Const $WM_XBUTTONDBLCLK = 0x0000020D
Global Const $WM_MOUSEHWHEEL = 0x0000020E
Global Const $PS_SOLID = 0x00000000
Global Const $PS_DASH = 0x00000001
Global Const $PS_DOT = 0x00000002
Global Const $PS_DASHDOT = 0x00000003
Global Const $PS_DASHDOTDOT = 0x00000004
Global Const $PS_NULL = 0x00000005
Global Const $PS_INSIDEFRAME = 0x00000006
Global Const $LWA_ALPHA = 0x00000002
Global Const $LWA_COLORKEY = 0x00000001
Global Const $RGN_AND = 0x00000001
Global Const $RGN_OR = 0x00000002
Global Const $RGN_XOR = 0x00000003
Global Const $RGN_DIFF = 0x00000004
Global Const $RGN_COPY = 0x00000005
Global Const $ERRORREGION = 0x00000000
Global Const $NULLREGION = 0x00000001
Global Const $SIMPLEREGION = 0x00000002
Global Const $COMPLEXREGION = 0x00000003
Global Const $TRANSPARENT = 0x00000001
Global Const $OPAQUE = 0x00000002
Global Const $CCM_FIRST = 0x00002000
Global Const $CCM_GETUNICODEFORMAT = ($CCM_FIRST + 0x00000006)
Global Const $CCM_SETUNICODEFORMAT = ($CCM_FIRST + 0x00000005)
Global Const $CCM_SETBKCOLOR = $CCM_FIRST + 0x00000001
Global Const $CCM_SETCOLORSCHEME = $CCM_FIRST + 0x00000002
Global Const $CCM_GETCOLORSCHEME = $CCM_FIRST + 0x00000003
Global Const $CCM_GETDROPTARGET = $CCM_FIRST + 0x00000004
Global Const $CCM_SETWINDOWTHEME = $CCM_FIRST + 0x0000000B
Global Const $GA_PARENT = 0x00000001
Global Const $GA_ROOT = 0x00000002
Global Const $GA_ROOTOWNER = 0x00000003
Global Const $SM_CXSCREEN = 0x00000000
Global Const $SM_CYSCREEN = 0x00000001
Global Const $SM_CXVSCROLL = 0x00000002
Global Const $SM_CYHSCROLL = 0x00000003
Global Const $SM_CYCAPTION = 0x00000004
Global Const $SM_CXBORDER = 0x00000005
Global Const $SM_CYBORDER = 0x00000006
Global Const $SM_CXDLGFRAME = 0x00000007
Global Const $SM_CYDLGFRAME = 0x00000008
Global Const $SM_CYVTHUMB = 0x00000009
Global Const $SM_CXHTHUMB = 0x0000000A
Global Const $SM_CXICON = 0x0000000B
Global Const $SM_CYICON = 0x0000000C
Global Const $SM_CXCURSOR = 0x0000000D
Global Const $SM_CYCURSOR = 0x0000000E
Global Const $SM_CYMENU = 0x0000000F
Global Const $SM_CXFULLSCREEN = 0x00000010
Global Const $SM_CYFULLSCREEN = 0x00000011
Global Const $SM_CYKANJIWINDOW = 0x00000012
Global Const $SM_MOUSEPRESENT = 0x00000013
Global Const $SM_CYVSCROLL = 0x00000014
Global Const $SM_CXHSCROLL = 0x00000015
Global Const $SM_DEBUG = 0x00000016
Global Const $SM_SWAPBUTTON = 0x00000017
Global Const $SM_RESERVED1 = 0x00000018
Global Const $SM_RESERVED2 = 0x00000019
Global Const $SM_RESERVED3 = 0x0000001A
Global Const $SM_RESERVED4 = 0x0000001B
Global Const $SM_CXMIN = 0x0000001C
Global Const $SM_CYMIN = 0x0000001D
Global Const $SM_CXSIZE = 0x0000001E
Global Const $SM_CYSIZE = 0x0000001F
Global Const $SM_CXFRAME = 0x00000020
Global Const $SM_CYFRAME = 0x00000021
Global Const $SM_CXMINTRACK = 0x00000022
Global Const $SM_CYMINTRACK = 0x00000023
Global Const $SM_CXDOUBLECLK = 0x00000024
Global Const $SM_CYDOUBLECLK = 0x00000025
Global Const $SM_CXICONSPACING = 0x00000026
Global Const $SM_CYICONSPACING = 0x00000027
Global Const $SM_MENUDROPALIGNMENT = 0x00000028
Global Const $SM_PENWINDOWS = 0x00000029
Global Const $SM_DBCSENABLED = 0x0000002A
Global Const $SM_CMOUSEBUTTONS = 0x0000002B
Global Const $SM_SECURE = 0x0000002C
Global Const $SM_CXEDGE = 0x0000002D
Global Const $SM_CYEDGE = 0x0000002E
Global Const $SM_CXMINSPACING = 0x0000002F
Global Const $SM_CYMINSPACING = 0x00000030
Global Const $SM_CXSMICON = 0x00000031
Global Const $SM_CYSMICON = 0x00000032
Global Const $SM_CYSMCAPTION = 0x00000033
Global Const $SM_CXSMSIZE = 0x00000034
Global Const $SM_CYSMSIZE = 0x00000035
Global Const $SM_CXMENUSIZE = 0x00000036
Global Const $SM_CYMENUSIZE = 0x00000037
Global Const $SM_ARRANGE = 0x00000038
Global Const $SM_CXMINIMIZED = 0x00000039
Global Const $SM_CYMINIMIZED = 0x0000003A
Global Const $SM_CXMAXTRACK = 0x0000003B
Global Const $SM_CYMAXTRACK = 0x0000003C
Global Const $SM_CXMAXIMIZED = 0x0000003D
Global Const $SM_CYMAXIMIZED = 0x0000003E
Global Const $SM_NETWORK = 0x0000003F
Global Const $SM_CLEANBOOT = 0x00000043
Global Const $SM_CXDRAG = 0x00000044
Global Const $SM_CYDRAG = 0x00000045
Global Const $SM_SHOWSOUNDS = 0x00000046
Global Const $SM_CXMENUCHECK = 0x00000047
Global Const $SM_CYMENUCHECK = 0x00000048
Global Const $SM_SLOWMACHINE = 0x00000049
Global Const $SM_MIDEASTENABLED = 0x0000004A
Global Const $SM_MOUSEWHEELPRESENT = 0x0000004B
Global Const $SM_XVIRTUALSCREEN = 0x0000004C
Global Const $SM_YVIRTUALSCREEN = 0x0000004D
Global Const $SM_CXVIRTUALSCREEN = 0x0000004E
Global Const $SM_CYVIRTUALSCREEN = 0x0000004F
Global Const $SM_CMONITORS = 0x00000050
Global Const $SM_SAMEDISPLAYFORMAT = 0x00000051
Global Const $SM_IMMENABLED = 0x00000052
Global Const $SM_CXFOCUSBORDER = 0x00000053
Global Const $SM_CYFOCUSBORDER = 0x00000054
Global Const $SM_TABLETPC = 0x00000056
Global Const $SM_MEDIACENTER = 0x00000057
Global Const $SM_STARTER = 0x00000058
Global Const $SM_SERVERR2 = 0x00000059
Global Const $SM_CMETRICS = 0x0000005A
Global Const $SM_REMOTESESSION = 0x00001000
Global Const $SM_SHUTTINGDOWN = 0x00002000
Global Const $SM_REMOTECONTROL = 0x00002001
Global Const $SM_CARETBLINKINGENABLED = 0x00002002
Global Const $BLACKNESS = 0x00000042
Global Const $CAPTUREBLT = 0x40000000
Global Const $DSTINVERT = 0x00550009
Global Const $MERGECOPY = 0x00C000CA
Global Const $MERGEPAINT = 0x00BB0226
Global Const $NOMIRRORBITMAP = 0x80000000
Global Const $NOTSRCCOPY = 0x00330008
Global Const $NOTSRCERASE = 0x001100A6
Global Const $PATCOPY = 0x00F00021
Global Const $PATINVERT = 0x005A0049
Global Const $PATPAINT = 0x00FB0A09
Global Const $SRCAND = 0x008800C6
Global Const $SRCCOPY = 0x00CC0020
Global Const $SRCERASE = 0x00440328
Global Const $SRCINVERT = 0x00660046
Global Const $SRCPAINT = 0x00EE0086
Global Const $WHITENESS = 0x00FF0062
Global Const $DT_BOTTOM = 0x00000008
Global Const $DT_CALCRECT = 0x00000400
Global Const $DT_CENTER = 0x00000001
Global Const $DT_EDITCONTROL = 0x00002000
Global Const $DT_END_ELLIPSIS = 0x00008000
Global Const $DT_EXPANDTABS = 0x00000040
Global Const $DT_EXTERNALLEADING = 0x00000200
Global Const $DT_HIDEPREFIX = 0x00100000
Global Const $DT_INTERNAL = 0x00001000
Global Const $DT_LEFT = 0x00000000
Global Const $DT_MODIFYSTRING = 0x00010000
Global Const $DT_NOCLIP = 0x00000100
Global Const $DT_NOFULLWIDTHCHARBREAK = 0x00080000
Global Const $DT_NOPREFIX = 0x00000800
Global Const $DT_PATH_ELLIPSIS = 0x00004000
Global Const $DT_PREFIXONLY = 0x00200000
Global Const $DT_RIGHT = 0x00000002
Global Const $DT_RTLREADING = 0x00020000
Global Const $DT_SINGLELINE = 0x00000020
Global Const $DT_TABSTOP = 0x00000080
Global Const $DT_TOP = 0x00000000
Global Const $DT_VCENTER = 0x00000004
Global Const $DT_WORDBREAK = 0x00000010
Global Const $DT_WORD_ELLIPSIS = 0x00040000
Global Const $RDW_ERASE = 0x00000004
Global Const $RDW_FRAME = 0x00000400
Global Const $RDW_INTERNALPAINT = 0x00000002
Global Const $RDW_INVALIDATE = 0x00000001
Global Const $RDW_NOERASE = 0x00000020
Global Const $RDW_NOFRAME = 0x00000800
Global Const $RDW_NOINTERNALPAINT = 0x00000010
Global Const $RDW_VALIDATE = 0x00000008
Global Const $RDW_ERASENOW = 0x00000200
Global Const $RDW_UPDATENOW = 0x00000100
Global Const $RDW_ALLCHILDREN = 0x00000080
Global Const $RDW_NOCHILDREN = 0x00000040
Global Const $WM_RENDERFORMAT = 0x00000305
Global Const $WM_RENDERALLFORMATS = 0x00000306
Global Const $WM_DESTROYCLIPBOARD = 0x00000307
Global Const $WM_DRAWCLIPBOARD = 0x00000308
Global Const $WM_PAINTCLIPBOARD = 0x00000309
Global Const $WM_VSCROLLCLIPBOARD = 0x0000030A
Global Const $WM_SIZECLIPBOARD = 0x0000030B
Global Const $WM_ASKCBFORMATNAME = 0x0000030C
Global Const $WM_CHANGECBCHAIN = 0x0000030D
Global Const $WM_HSCROLLCLIPBOARD = 0x0000030E
Global Const $HTERROR = -0x00000002
Global Const $HTTRANSPARENT = -0x00000001
Global Const $HTNOWHERE = 0x00000000
Global Const $HTCLIENT = 0x00000001
Global Const $HTCAPTION = 0x00000002
Global Const $HTSYSMENU = 0x00000003
Global Const $HTGROWBOX = 0x00000004
Global Const $HTSIZE = $HTGROWBOX
Global Const $HTMENU = 0x00000005
Global Const $HTHSCROLL = 0x00000006
Global Const $HTVSCROLL = 0x00000007
Global Const $HTMINBUTTON = 0x00000008
Global Const $HTMAXBUTTON = 0x00000009
Global Const $HTLEFT = 0x0000000A
Global Const $HTRIGHT = 0x0000000B
Global Const $HTTOP = 0x0000000C
Global Const $HTTOPLEFT = 0x0000000D
Global Const $HTTOPRIGHT = 0x0000000E
Global Const $HTBOTTOM = 0x0000000F
Global Const $HTBOTTOMLEFT = 0x00000010
Global Const $HTBOTTOMRIGHT = 0x00000011
Global Const $HTBORDER = 0x00000012
Global Const $HTREDUCE = $HTMINBUTTON
Global Const $HTZOOM = $HTMAXBUTTON
Global Const $HTSIZEFIRST = $HTLEFT
Global Const $HTSIZELAST = $HTBOTTOMRIGHT
Global Const $HTOBJECT = 0x00000013
Global Const $HTCLOSE = 0x00000014
Global Const $HTHELP = 0x00000015
Global Const $COLOR_SCROLLBAR = 0x00000000
Global Const $COLOR_BACKGROUND = 0x00000001
Global Const $COLOR_ACTIVECAPTION = 0x00000002
Global Const $COLOR_INACTIVECAPTION = 0x00000003
Global Const $COLOR_MENU = 0x00000004
Global Const $COLOR_WINDOW = 0x00000005
Global Const $COLOR_WINDOWFRAME = 0x00000006
Global Const $COLOR_MENUTEXT = 0x00000007
Global Const $COLOR_WINDOWTEXT = 0x00000008
Global Const $COLOR_CAPTIONTEXT = 0x00000009
Global Const $COLOR_ACTIVEBORDER = 0x0000000A
Global Const $COLOR_INACTIVEBORDER = 0x0000000B
Global Const $COLOR_APPWORKSPACE = 0x0000000C
Global Const $COLOR_HIGHLIGHT = 0x0000000D
Global Const $COLOR_HIGHLIGHTTEXT = 0x0000000E
Global Const $COLOR_BTNFACE = 0x0000000F
Global Const $COLOR_BTNSHADOW = 0x00000010
Global Const $COLOR_GRAYTEXT = 0x00000011
Global Const $COLOR_BTNTEXT = 0x00000012
Global Const $COLOR_INACTIVECAPTIONTEXT = 0x00000013
Global Const $COLOR_BTNHIGHLIGHT = 0x00000014
Global Const $COLOR_3DDKSHADOW = 0x00000015
Global Const $COLOR_3DLIGHT = 0x00000016
Global Const $COLOR_INFOTEXT = 0x00000017
Global Const $COLOR_INFOBK = 0x00000018
Global Const $COLOR_HOTLIGHT = 0x0000001A
Global Const $COLOR_GRADIENTACTIVECAPTION = 0x0000001B
Global Const $COLOR_GRADIENTINACTIVECAPTION = 0x0000001C
Global Const $COLOR_MENUHILIGHT = 0x0000001D
Global Const $COLOR_MENUBAR = 0x0000001E
Global Const $COLOR_DESKTOP = 0x00000001
Global Const $COLOR_3DFACE = 0x0000000F
Global Const $COLOR_3DSHADOW = 0x00000010
Global Const $COLOR_3DHIGHLIGHT = 0x00000014
Global Const $COLOR_3DHILIGHT = 0x00000014
Global Const $COLOR_BTNHILIGHT = 0x00000014
Global Const $HINST_COMMCTRL = -0x00000001
Global Const $IDB_STD_SMALL_COLOR = 0x00000000
Global Const $IDB_STD_LARGE_COLOR = 0x00000001
Global Const $IDB_VIEW_SMALL_COLOR = 0x00000004
Global Const $IDB_VIEW_LARGE_COLOR = 0x00000005
Global Const $IDB_HIST_SMALL_COLOR = 0x00000008
Global Const $IDB_HIST_LARGE_COLOR = 0x00000009
Global Const $STARTF_FORCEOFFFEEDBACK = 0x00000080
Global Const $STARTF_FORCEONFEEDBACK = 0x00000040
Global Const $STARTF_RUNFULLSCREEN = 0x00000020
Global Const $STARTF_USECOUNTCHARS = 0x00000008
Global Const $STARTF_USEFILLATTRIBUTE = 0x00000010
Global Const $STARTF_USEHOTKEY = 0x00000200
Global Const $STARTF_USEPOSITION = 0x00000004
Global Const $STARTF_USESHOWWINDOW = 0x00000001
Global Const $STARTF_USESIZE = 0x00000002
Global Const $STARTF_USESTDHANDLES = 0x00000100
Global Const $CDDS_PREPAINT = 0x00000001
Global Const $CDDS_POSTPAINT = 0x00000002
Global Const $CDDS_PREERASE = 0x00000003
Global Const $CDDS_POSTERASE = 0x00000004
Global Const $CDDS_ITEM = 0x00010000
Global Const $CDDS_ITEMPREPAINT = 0x00010001
Global Const $CDDS_ITEMPOSTPAINT = 0x00010002
Global Const $CDDS_ITEMPREERASE = 0x00010003
Global Const $CDDS_ITEMPOSTERASE = 0x00010004
Global Const $CDDS_SUBITEM = 0x00020000
Global Const $CDIS_SELECTED = 0x00000001
Global Const $CDIS_GRAYED = 0x00000002
Global Const $CDIS_DISABLED = 0x00000004
Global Const $CDIS_CHECKED = 0x00000008
Global Const $CDIS_FOCUS = 0x00000010
Global Const $CDIS_DEFAULT = 0x00000020
Global Const $CDIS_HOT = 0x00000040
Global Const $CDIS_MARKED = 0x00000080
Global Const $CDIS_INDETERMINATE = 0x00000100
Global Const $CDIS_SHOWKEYBOARDCUES = 0x00000200
Global Const $CDIS_NEARHOT = 0x00000400
Global Const $CDIS_OTHERSIDEHOT = 0x00000800
Global Const $CDIS_DROPHILITED = 0x00001000
Global Const $CDRF_DODEFAULT = 0x00000000
Global Const $CDRF_NEWFONT = 0x00000002
Global Const $CDRF_SKIPDEFAULT = 0x00000004
Global Const $CDRF_NOTIFYPOSTPAINT = 0x00000010
Global Const $CDRF_NOTIFYITEMDRAW = 0x00000020
Global Const $CDRF_NOTIFYSUBITEMDRAW = 0x00000020
Global Const $CDRF_NOTIFYPOSTERASE = 0x00000040
Global Const $CDRF_DOERASE = 0x00000008
Global Const $CDRF_SKIPPOSTPAINT = 0x00000100
Global Const $GUI_SS_DEFAULT_GUI = BitOR($WS_MINIMIZEBOX, $WS_CAPTION, $WS_POPUP, $WS_SYSMENU)
Func _FileCountLines($SFILEPATH)
	Local $HFILE = FileOpen($SFILEPATH, $FO_READ)
	If $HFILE = -0x00000001 Then Return SetError(0x00000001, 0x00000000, 0x00000000)
	Local $SFILECONTENT = StringStripWS(FileRead($HFILE), 0x00000002)
	FileClose($HFILE)
	Local $ATMP
	If StringInStr($SFILECONTENT, @LF) Then
		$ATMP = StringSplit(StringStripCR($SFILECONTENT), @LF)
	ElseIf StringInStr($SFILECONTENT, @CR) Then
		$ATMP = StringSplit($SFILECONTENT, @CR)
	Else
		If StringLen($SFILECONTENT) Then
			Return 0x00000001
		Else
			Return SetError(0x00000002, 0x00000000, 0x00000000)
		EndIf
	EndIf
	Return $ATMP[0x00000000]
EndFunc   ;==>_FileCountLines
Func _FileCreate($SFILEPATH)
	Local $HOPENFILE = FileOpen($SFILEPATH, $FO_OVERWRITE)
	If $HOPENFILE = -0x00000001 Then Return SetError(0x00000001, 0x00000000, 0x00000000)
	Local $HWRITEFILE = FileWrite($HOPENFILE, "")
	FileClose($HOPENFILE)
	If $HWRITEFILE = -0x00000001 Then Return SetError(0x00000002, 0x00000000, 0x00000000)
	Return 0x00000001
EndFunc   ;==>_FileCreate
Func _FileListToArray($SPATH, $SFILTER = "*", $IFLAG = 0x00000000)
	Local $HSEARCH, $SFILE, $SFILELIST, $SDELIM = "|"
	$SPATH = StringRegExpReplace($SPATH, "[\\/]+\z", "") & "\"
	If Not FileExists($SPATH) Then Return SetError(0x00000001, 0x00000001, "")
	If StringRegExp($SFILTER, "[\\/:><\|]|(?s)\A\s*\z") Then Return SetError(0x00000002, 0x00000002, "")
	If Not ($IFLAG = 0x00000000 Or $IFLAG = 0x00000001 Or $IFLAG = 0x00000002) Then Return SetError(0x00000003, 0x00000003, "")
	$HSEARCH = FileFindFirstFile($SPATH & $SFILTER)
	If @error Then Return SetError(0x00000004, 0x00000004, "")
	While 0x00000001
		$SFILE = FileFindNextFile($HSEARCH)
		If @error Then ExitLoop
		If ($IFLAG + @extended = 0x00000002) Then ContinueLoop
		$SFILELIST &= $SDELIM & $SFILE
	WEnd
	FileClose($HSEARCH)
	If Not $SFILELIST Then Return SetError(0x00000004, 0x00000004, "")
	Return StringSplit(StringTrimLeft($SFILELIST, 0x00000001), "|")
EndFunc   ;==>_FileListToArray
Func _FilePrint($S_FILE, $I_SHOW = @SW_HIDE)
	Local $A_RET = DllCall("shell32.dll", "int", "ShellExecuteW", "hwnd", 0x00000000, "wstr", "print", "wstr", $S_FILE, "wstr", "", "wstr", "", "int", $I_SHOW)
	If @error Then Return SetError(@error, @extended, 0x00000000)
	If $A_RET[0x00000000] <= 0x00000020 Then Return SetError(0x0000000A, $A_RET[0x00000000], 0x00000000)
	Return 0x00000001
EndFunc   ;==>_FilePrint
Func _FileReadToArray($SFILEPATH, ByRef $AARRAY)
	Local $HFILE = FileOpen($SFILEPATH, $FO_READ)
	If $HFILE = -0x00000001 Then Return SetError(0x00000001, 0x00000000, 0x00000000)
	Local $AFILE = FileRead($HFILE, FileGetSize($SFILEPATH))
	If StringRight($AFILE, 0x00000001) = @LF Then $AFILE = StringTrimRight($AFILE, 0x00000001)
	If StringRight($AFILE, 0x00000001) = @CR Then $AFILE = StringTrimRight($AFILE, 0x00000001)
	FileClose($HFILE)
	If StringInStr($AFILE, @LF) Then
		$AARRAY = StringSplit(StringStripCR($AFILE), @LF)
	ElseIf StringInStr($AFILE, @CR) Then
		$AARRAY = StringSplit($AFILE, @CR)
	Else
		If StringLen($AFILE) Then
			Dim $AARRAY[0x00000002] = [0x00000001, $AFILE]
		Else
			Return SetError(0x00000002, 0x00000000, 0x00000000)
		EndIf
	EndIf
	Return 0x00000001
EndFunc   ;==>_FileReadToArray
Func _FileWriteFromArray($FILE, $A_ARRAY, $I_BASE = 0x00000000, $I_UBOUND = 0x00000000, $S_DELIM = "|")
	If Not IsArray($A_ARRAY) Then Return SetError(0x00000002, 0x00000000, 0x00000000)
	Local $IDIMS = UBound($A_ARRAY, 0x00000000)
	If $IDIMS > 0x00000002 Then Return SetError(0x00000004, 0x00000000, 0x00000000)
	Local $LAST = UBound($A_ARRAY) - 0x00000001
	If $I_UBOUND < 0x00000001 Or $I_UBOUND > $LAST Then $I_UBOUND = $LAST
	If $I_BASE < 0x00000000 Or $I_BASE > $LAST Then $I_BASE = 0x00000000
	Local $HFILE
	If IsString($FILE) Then
		$HFILE = FileOpen($FILE, $FO_OVERWRITE)
	Else
		$HFILE = $FILE
	EndIf
	If $HFILE = -0x00000001 Then Return SetError(0x00000001, 0x00000000, 0x00000000)
	Local $ERRORSAV = 0x00000000
	Switch $IDIMS
		Case 0x00000001
			For $X = $I_BASE To $I_UBOUND
				If FileWrite($HFILE, $A_ARRAY[$X] & @CRLF) = 0x00000000 Then
					$ERRORSAV = 0x00000003
					ExitLoop
				EndIf
			Next
		Case 0x00000002
			Local $S_TEMP
			For $X = $I_BASE To $I_UBOUND
				$S_TEMP = $A_ARRAY[$X][0x00000000]
				For $Y = 0x00000001 To $IDIMS
					$S_TEMP &= $S_DELIM & $A_ARRAY[$X][$Y]
				Next
				If FileWrite($HFILE, $S_TEMP & @CRLF) = 0x00000000 Then
					$ERRORSAV = 0x00000003
					ExitLoop
				EndIf
			Next
	EndSwitch
	If IsString($FILE) Then FileClose($HFILE)
	If $ERRORSAV Then Return SetError($ERRORSAV, 0x00000000, 0x00000000)
	Return 0x00000001
EndFunc   ;==>_FileWriteFromArray
Func _FileWriteLog($SLOGPATH, $SLOGMSG, $IFLAG = -0x00000001)
	Local $IOPENMODE = $FO_APPEND
	Local $SDATENOW = @YEAR & "-" & @MON & "-" & @MDAY
	Local $STIMENOW = @HOUR & ":" & @MIN & ":" & @SEC
	Local $SMSG = $SDATENOW & " " & $STIMENOW & " : " & $SLOGMSG
	If $IFLAG <> -0x00000001 Then
		$SMSG &= @CRLF & FileRead($SLOGPATH)
		$IOPENMODE = $FO_OVERWRITE
	EndIf
	Local $HOPENFILE = FileOpen($SLOGPATH, $IOPENMODE)
	If $HOPENFILE = -0x00000001 Then Return SetError(0x00000001, 0x00000000, 0x00000000)
	Local $IWRITEFILE = FileWriteLine($HOPENFILE, $SMSG)
	Local $IRET = FileClose($HOPENFILE)
	If $IWRITEFILE = -0x00000001 Then Return SetError(0x00000002, $IRET, 0x00000000)
	Return $IRET
EndFunc   ;==>_FileWriteLog
Func _FileWriteToLine($SFILE, $ILINE, $STEXT, $FOVERWRITE = 0x00000000)
	If $ILINE <= 0x00000000 Then Return SetError(0x00000004, 0x00000000, 0x00000000)
	If Not IsString($STEXT) Then
		$STEXT = String($STEXT)
		If $STEXT = "" Then Return SetError(0x00000006, 0x00000000, 0x00000000)
	EndIf
	If $FOVERWRITE <> 0x00000000 AND $FOVERWRITE <> 0x00000001 Then Return SetError(0x00000005, 0x00000000, 0x00000000)
	If Not FileExists($SFILE) Then Return SetError(0x00000002, 0x00000000, 0x00000000)
	Local $SREAD_FILE = FileRead($SFILE)
	Local $ASPLIT_FILE = StringSplit(StringStripCR($SREAD_FILE), @LF)
	If UBound($ASPLIT_FILE) < $ILINE Then Return SetError(0x00000001, 0x00000000, 0x00000000)
	Local $IENCODING = FileGetEncoding($SFILE)
	Local $HFILE = FileOpen($SFILE, $IENCODING + $FO_OVERWRITE)
	If $HFILE = -0x00000001 Then Return SetError(0x00000003, 0x00000000, 0x00000000)
	$SREAD_FILE = ""
	For $I = 0x00000001 To $ASPLIT_FILE[0x00000000]
		If $I = $ILINE Then
			If $FOVERWRITE = 0x00000001 Then
				If $STEXT <> "" Then $SREAD_FILE &= $STEXT & @CRLF
			Else
				$SREAD_FILE &= $STEXT & @CRLF & $ASPLIT_FILE[$I] & @CRLF
			EndIf
		ElseIf $I < $ASPLIT_FILE[0x00000000] Then
			$SREAD_FILE &= $ASPLIT_FILE[$I] & @CRLF
		ElseIf $I = $ASPLIT_FILE[0x00000000] Then
			$SREAD_FILE &= $ASPLIT_FILE[$I]
		EndIf
	Next
	FileWrite($HFILE, $SREAD_FILE)
	FileClose($HFILE)
	Return 0x00000001
EndFunc   ;==>_FileWriteToLine
Func _PathFull($SRELATIVEPATH, $SBASEPATH = @WorkingDir)
	If Not $SRELATIVEPATH Or $SRELATIVEPATH = "." Then Return $SBASEPATH
	Local $SFULLPATH = StringReplace($SRELATIVEPATH, "/", "\")
	Local Const $SFULLPATHCONST = $SFULLPATH
	Local $SPATH
	Local $BROOTONLY = StringLeft($SFULLPATH, 0x00000001) = "\" AND StringMid($SFULLPATH, 0x00000002, 0x00000001) <> "\"
	For $I = 0x00000001 To 0x00000002
		$SPATH = StringLeft($SFULLPATH, 0x00000002)
		If $SPATH = "\\" Then
			$SFULLPATH = StringTrimLeft($SFULLPATH, 0x00000002)
			Local $NSERVERLEN = StringInStr($SFULLPATH, "\") - 0x00000001
			$SPATH = "\\" & StringLeft($SFULLPATH, $NSERVERLEN)
			$SFULLPATH = StringTrimLeft($SFULLPATH, $NSERVERLEN)
			ExitLoop
		ElseIf StringRight($SPATH, 0x00000001) = ":" Then
			$SFULLPATH = StringTrimLeft($SFULLPATH, 0x00000002)
			ExitLoop
		Else
			$SFULLPATH = $SBASEPATH & "\" & $SFULLPATH
		EndIf
	Next
	If $I = 0x00000003 Then Return ""
	If StringLeft($SFULLPATH, 0x00000001) <> "\" Then
		If StringLeft($SFULLPATHCONST, 0x00000002) = StringLeft($SBASEPATH, 0x00000002) Then
			$SFULLPATH = $SBASEPATH & "\" & $SFULLPATH
		Else
			$SFULLPATH = "\" & $SFULLPATH
		EndIf
	EndIf
	Local $ATEMP = StringSplit($SFULLPATH, "\")
	Local $APATHPARTS[$ATEMP[0x00000000]], $J = 0x00000000
	For $I = 0x00000002 To $ATEMP[0x00000000]
		If $ATEMP[$I] = ".." Then
			If $J Then $J -= 0x00000001
		ElseIf Not ($ATEMP[$I] = "" AND $I <> $ATEMP[0x00000000]) AND $ATEMP[$I] <> "." Then
			$APATHPARTS[$J] = $ATEMP[$I]
			$J += 0x00000001
		EndIf
	Next
	$SFULLPATH = $SPATH
	If Not $BROOTONLY Then
		For $I = 0x00000000 To $J - 0x00000001
			$SFULLPATH &= "\" & $APATHPARTS[$I]
		Next
	Else
		$SFULLPATH &= $SFULLPATHCONST
		If StringInStr($SFULLPATH, "..") Then $SFULLPATH = _PathFull($SFULLPATH)
	EndIf
	While StringInStr($SFULLPATH, ".\")
		$SFULLPATH = StringReplace($SFULLPATH, ".\", "\")
	WEnd
	Return $SFULLPATH
EndFunc   ;==>_PathFull
Func _PathGetRelative($SFROM, $STO)
	If StringRight($SFROM, 0x00000001) <> "\" Then $SFROM &= "\"
	If StringRight($STO, 0x00000001) <> "\" Then $STO &= "\"
	If $SFROM = $STO Then Return SetError(0x00000001, 0x00000000, StringTrimRight($STO, 0x00000001))
	Local $ASFROM = StringSplit($SFROM, "\")
	Local $ASTO = StringSplit($STO, "\")
	If $ASFROM[0x00000001] <> $ASTO[0x00000001] Then Return SetError(0x00000002, 0x00000000, StringTrimRight($STO, 0x00000001))
	Local $I = 0x00000002
	Local $IDIFF = 0x00000001
	While 0x00000001
		If $ASFROM[$I] <> $ASTO[$I] Then
			$IDIFF = $I
			ExitLoop
		EndIf
		$I += 0x00000001
	WEnd
	$I = 0x00000001
	Local $SRELPATH = ""
	For $J = 0x00000001 To $ASTO[0x00000000]
		If $I >= $IDIFF Then
			$SRELPATH &= "\" & $ASTO[$I]
		EndIf
		$I += 0x00000001
	Next
	$SRELPATH = StringTrimLeft($SRELPATH, 0x00000001)
	$I = 0x00000001
	For $J = 0x00000001 To $ASFROM[0x00000000]
		If $I > $IDIFF Then
			$SRELPATH = "..\" & $SRELPATH
		EndIf
		$I += 0x00000001
	Next
	If StringRight($SRELPATH, 0x00000001) == "\" Then $SRELPATH = StringTrimRight($SRELPATH, 0x00000001)
	Return $SRELPATH
EndFunc   ;==>_PathGetRelative
Func _PathMake($SZDRIVE, $SZDIR, $SZFNAME, $SZEXT)
	If StringLen($SZDRIVE) Then
		If Not (StringLeft($SZDRIVE, 0x00000002) = "\\") Then $SZDRIVE = StringLeft($SZDRIVE, 0x00000001) & ":"
	EndIf
	If StringLen($SZDIR) Then
		If Not (StringRight($SZDIR, 0x00000001) = "\") AND Not (StringRight($SZDIR, 0x00000001) = "/") Then $SZDIR = $SZDIR & "\"
	EndIf
	If StringLen($SZEXT) Then
		If Not (StringLeft($SZEXT, 0x00000001) = ".") Then $SZEXT = "." & $SZEXT
	EndIf
	Return $SZDRIVE & $SZDIR & $SZFNAME & $SZEXT
EndFunc   ;==>_PathMake
Func _PathSplit($SZPATH, ByRef $SZDRIVE, ByRef $SZDIR, ByRef $SZFNAME, ByRef $SZEXT)
	Local $DRIVE = ""
	Local $DIR = ""
	Local $FNAME = ""
	Local $EXT = ""
	Local $POS
	Local $ARRAY[0x00000005]
	$ARRAY[0x00000000] = $SZPATH
	If StringMid($SZPATH, 0x00000002, 0x00000001) = ":" Then
		$DRIVE = StringLeft($SZPATH, 0x00000002)
		$SZPATH = StringTrimLeft($SZPATH, 0x00000002)
	ElseIf StringLeft($SZPATH, 0x00000002) = "\\" Then
		$SZPATH = StringTrimLeft($SZPATH, 0x00000002)
		$POS = StringInStr($SZPATH, "\")
		If $POS = 0x00000000 Then $POS = StringInStr($SZPATH, "/")
		If $POS = 0x00000000 Then
			$DRIVE = "\\" & $SZPATH
			$SZPATH = ""
		Else
			$DRIVE = "\\" & StringLeft($SZPATH, $POS - 0x00000001)
			$SZPATH = StringTrimLeft($SZPATH, $POS - 0x00000001)
		EndIf
	EndIf
	Local $NPOSFORWARD = StringInStr($SZPATH, "/", 0x00000000, -0x00000001)
	Local $NPOSBACKWARD = StringInStr($SZPATH, "\", 0x00000000, -0x00000001)
	If $NPOSFORWARD >= $NPOSBACKWARD Then
		$POS = $NPOSFORWARD
	Else
		$POS = $NPOSBACKWARD
	EndIf
	$DIR = StringLeft($SZPATH, $POS)
	$FNAME = StringRight($SZPATH, StringLen($SZPATH) - $POS)
	If StringLen($DIR) = 0x00000000 Then $FNAME = $SZPATH
	$POS = StringInStr($FNAME, ".", 0x00000000, -0x00000001)
	If $POS Then
		$EXT = StringRight($FNAME, StringLen($FNAME) - ($POS - 0x00000001))
		$FNAME = StringLeft($FNAME, $POS - 0x00000001)
	EndIf
	$SZDRIVE = $DRIVE
	$SZDIR = $DIR
	$SZFNAME = $FNAME
	$SZEXT = $EXT
	$ARRAY[0x00000001] = $DRIVE
	$ARRAY[0x00000002] = $DIR
	$ARRAY[0x00000003] = $FNAME
	$ARRAY[0x00000004] = $EXT
	Return $ARRAY
EndFunc   ;==>_PathSplit
Func _ReplaceStringInFile($SZFILENAME, $SZSEARCHSTRING, $SZREPLACESTRING, $FCASENESS = 0x00000000, $FOCCURANCE = 0x00000001)
	Local $IRETVAL = 0x00000000
	Local $NCOUNT, $SENDSWITH
	If StringInStr(FileGetAttrib($SZFILENAME), "R") Then Return SetError(0x00000006, 0x00000000, -0x00000001)
	Local $HFILE = FileOpen($SZFILENAME, $FO_READ)
	If $HFILE = -0x00000001 Then Return SetError(0x00000001, 0x00000000, -0x00000001)
	Local $S_TOTFILE = FileRead($HFILE, FileGetSize($SZFILENAME))
	If StringRight($S_TOTFILE, 0x00000002) = @CRLF Then
		$SENDSWITH = @CRLF
	ElseIf StringRight($S_TOTFILE, 0x00000001) = @CR Then
		$SENDSWITH = @CR
	ElseIf StringRight($S_TOTFILE, 0x00000001) = @LF Then
		$SENDSWITH = @LF
	Else
		$SENDSWITH = ""
	EndIf
	Local $AFILELINES = StringSplit(StringStripCR($S_TOTFILE), @LF)
	FileClose($HFILE)
	Local $IENCODING = FileGetEncoding($SZFILENAME)
	Local $HWRITEHANDLE = FileOpen($SZFILENAME, $IENCODING + $FO_OVERWRITE)
	If $HWRITEHANDLE = -0x00000001 Then Return SetError(0x00000002, 0x00000000, -0x00000001)
	For $NCOUNT = 0x00000001 To $AFILELINES[0x00000000]
		If StringInStr($AFILELINES[$NCOUNT], $SZSEARCHSTRING, $FCASENESS) Then
			$AFILELINES[$NCOUNT] = StringReplace($AFILELINES[$NCOUNT], $SZSEARCHSTRING, $SZREPLACESTRING, 0x00000001 - $FOCCURANCE, $FCASENESS)
			$IRETVAL = $IRETVAL + 0x00000001
			If $FOCCURANCE = 0x00000000 Then
				$IRETVAL = 0x00000001
				ExitLoop
			EndIf
		EndIf
	Next
	For $NCOUNT = 0x00000001 To $AFILELINES[0x00000000] - 0x00000001
		If FileWriteLine($HWRITEHANDLE, $AFILELINES[$NCOUNT]) = 0x00000000 Then
			FileClose($HWRITEHANDLE)
			Return SetError(0x00000003, 0x00000000, -0x00000001)
		EndIf
	Next
	If $AFILELINES[$NCOUNT] <> "" Then FileWrite($HWRITEHANDLE, $AFILELINES[$NCOUNT] & $SENDSWITH)
	FileClose($HWRITEHANDLE)
	Return $IRETVAL
EndFunc   ;==>_ReplaceStringInFile
Func _TempFile($S_DIRECTORYNAME = @TempDir, $S_FILEPREFIX = "~", $S_FILEEXTENSION = ".tmp", $I_RANDOMLENGTH = 0x00000007)
	If IsKeyword($S_FILEPREFIX) Then $S_FILEPREFIX = "~"
	If IsKeyword($S_FILEEXTENSION) Then $S_FILEEXTENSION = ".tmp"
	If IsKeyword($I_RANDOMLENGTH) Then $I_RANDOMLENGTH = 0x00000007
	If Not FileExists($S_DIRECTORYNAME) Then $S_DIRECTORYNAME = @TempDir
	If Not FileExists($S_DIRECTORYNAME) Then $S_DIRECTORYNAME = @ScriptDir
	If StringRight($S_DIRECTORYNAME, 0x00000001) <> "\" Then $S_DIRECTORYNAME = $S_DIRECTORYNAME & "\"
	Local $S_TEMPNAME
	Do
		$S_TEMPNAME = ""
		While StringLen($S_TEMPNAME) < $I_RANDOMLENGTH
			$S_TEMPNAME = $S_TEMPNAME & Chr(Random(0x00000061, 0x0000007A, 0x00000001))
		WEnd
		$S_TEMPNAME = $S_DIRECTORYNAME & $S_FILEPREFIX & $S_TEMPNAME & $S_FILEEXTENSION
	Until Not FileExists($S_TEMPNAME)
	Return $S_TEMPNAME
EndFunc   ;==>_TempFile
Opt("MouseCoordMode", 0x00000000)
Opt("PixelCoordMode", 0x00000000)
Opt("TrayIconHide", 0x00000000)
Opt("TrayIconDebug", 0x00000000)
Opt("TrayMenuMode", 3)
#Region ### START Koda GUI section ### Form=
$FORMORAYCONN = GUICreate("向日葵登录器", 0x0000013A, 500, 0x000000C0, 0x0000007C)
$LISTBOOKS = GUICtrlCreateListView("---识别码---|---验证码---|----备注----", 0x00000010, 0x00000008, 0x00000119, 0x00000199)
$BUTTONCONN = GUICtrlCreateButton("连 接", 0x00000010, 0x000001A8, 0x000000EB, 0x00000029)
$BUTTONHELP = GUICtrlCreateButton("?", 0x000000FF, 0x000001A8, 0x00000029, 0x00000029)
$INPUTADD = GUICtrlCreateInput("识别码,验证码,备注", 0x00000010, 0x000001D7, 190, 23)
$BUTTONADD = GUICtrlCreateButton("+", 0x000000FF, 0x000001D7, 0x00000029, 23)
$BUTTONDEL = GUICtrlCreateButton("—", 210, 0x000001D7, 0x00000029, 23)
GUISetState(@SW_SHOW)
;~ GUISetState(@SW_LOCK)

Local $MSG = TrayGetMsg()
	Local $show = TrayCreateItem("显示")
	TrayCreateItem("")
	Local $hide = TrayCreateItem("隐藏")
	TrayCreateItem("")
	Local $exititem = TrayCreateItem("退出")

	TraySetState()

#EndRegion ### END Koda GUI section ###
$BOOKFILE = _PathFull("./向日葵通讯录.txt", @ScriptDir)
Func ACTORAY()
EndFunc   ;==>ACTORAY
Func WAITWINS()
	
	ShellExecute("D:\SunloginClient\SunloginClient.exe")
	Sleep(5000)
	If Not WinExists("向日葵远程控制") Then
		MsgBox(0x00000000, "", "5S内未打开程序，请先打开向日葵远程并登录。", 0x00000002)
	EndIf
EndFunc   ;==>WAITWINS
Func TOCONN($CODE, $VALID)
	If Not WinExists("向日葵远程控制") Then
		#MSGBOX(0x00000000, "", "请先打开向日葵远程并登录。", 0x00000002)
		WAITWINS()
	EndIf
	WinSetState("向日葵远程控制", "", @SW_SHOW)
	WinSetState("向日葵远程控制", "", @SW_ENABLE)
	WinActivate("向日葵远程控制")
	WinWaitActive("向日葵远程控制")
	$CLR = Hex(PixelGetColor(0x00000048, 0x000000DA), 0x00000006)
	If ($CLR == "FF8D6B") Then
		MsgBox(0x00000030, "信息", "连接前请先登录。", 0x00000003)
		Return
	EndIf
	Sleep(0x00000064)
	WinActivate("向日葵远程控制")
	MouseClick("left", 0x0000005C, 0x000000FB)
	Sleep(0x00000064)
	WinActivate("向日葵远程控制")
	Send("^a" & $CODE)
	Sleep(0x00000064)
	WinActivate("向日葵远程控制")
	Send("{TAB}{TAB}")
	Sleep(0x00000064)
	WinActivate("向日葵远程控制")
	Send("^a" & $VALID)
	Sleep(0x000000C8)
	WinActivate("向日葵远程控制")
	Send("{ENTER}")
EndFunc   ;==>TOCONN
Func READBOOKS()
	If Not FileExists($BOOKFILE) Then
		$BOOKWR = FileOpen($BOOKFILE, 0x00000001 + 0x00000008)
		FileWriteLine($BOOKWR, "123456789" & @TAB & "123456" & @TAB & "示例")
		FileClose($BOOKWR)
	EndIf
	$FILE = FileOpen($BOOKFILE, 0x00000000)
	While 0x00000001
		Local $LINE = FileReadLine($FILE)
		If @error = -0x00000001 Then ExitLoop
		$CODES = StringSplit($LINE, @TAB)
		If $CODES[0x00000000] <> 0x00000003 Then ContinueLoop
		$ITEM1 = GUICtrlCreateListViewItem($CODES[0x00000001] & "|" & $CODES[0x00000002] & "|" & $CODES[0x00000003], $LISTBOOKS)
	WEnd
	FileClose($FILE)
EndFunc   ;==>READBOOKS
Func READBOOKSRELOAD()
	GUICtrlDelete($LISTBOOKS)
	Sleep(100)
	$LISTBOOKS = GUICtrlCreateListView("---识别码---|---验证码---|----备注----", 0x00000010, 0x00000008, 0x00000119, 0x00000199)
	$FILE = FileOpen($BOOKFILE, 0x00000000)
	While 0x00000001
		Local $LINE = FileReadLine($FILE)
		If @error = -0x00000001 Then ExitLoop
		$CODES = StringSplit($LINE, @TAB)
		If $CODES[0x00000000] <> 0x00000003 Then ContinueLoop
		$ITEM1 = GUICtrlCreateListViewItem($CODES[0x00000001] & "|" & $CODES[0x00000002] & "|" & $CODES[0x00000003], $LISTBOOKS)
	WEnd
	FileClose($FILE)
EndFunc   ;==>READBOOKSRELOAD
READBOOKS()
Func AUTOHIDE()
EndFunc   ;==>AUTOHIDE
Func SHOWMAIN()
EndFunc   ;==>SHOWMAIN
Func _TIMERPROC($HWND, $UIMSG, $IDEVENT, $DWTIME)
EndFunc   ;==>_TIMERPROC
While 0x00000001
	$NMSG = GUIGetMsg()
	Switch $NMSG
		Case $GUI_EVENT_CLOSE
			Exit
		Case $GUI_EVENT_MINIMIZE
			GUISetState(@SW_HIDE)
		Case $BUTTONHELP
			MsgBox(0x00000040, "帮助", @CRLF & "通讯录文件位置：" & @CRLF & @TAB & "程序相同目录的‘向日葵通讯录.txt’文件。" & @CRLF & "格式：" & @CRLF & @TAB & "识别码@Tab验证码@Tab备注信息" & @CRLF & "注：@Tab为键盘跳格键，每行一条记录")
		Case $BUTTONCONN
			$SELECTED = GUICtrlRead(GUICtrlRead($LISTBOOKS))
			$CODES = StringSplit($SELECTED, "|")
			If $CODES[0x00000000] > 0x00000001 Then
				TOCONN($CODES[0x00000001], $CODES[0x00000002])
			EndIf
		Case $BUTTONADD
			Local $MSG = GUICtrlRead($INPUTADD)
			Local $ITEM = StringSplit($MSG, ",")
			Local $len = UBound($ITEM)
			If $len >= 4 Then
				$BOOKWR = FileOpen($BOOKFILE, 0x00000001 + 0x00000008)
				FileWriteLine($BOOKWR, $ITEM[1] & @TAB & $ITEM[2] & @TAB & $ITEM[3] & @LF)
				FileClose($BOOKWR)
				Sleep(100)
				READBOOKSRELOAD()
			EndIf
		Case $BUTTONDEL
			ShellExecuteWait($BOOKFILE)
			Sleep(100)
			READBOOKSRELOAD()
		EndSwitch
		Local $MSG = TrayGetMsg()
		Select
			Case $MSG = 0
				ContinueLoop
			Case $MSG = $show
				GUISetState(@SW_SHOW)
			Case $MSG = $hide
				GUISetState(@SW_HIDE)
			Case $MSG = $exititem
				Exit
		EndSelect
WEnd





