VERSION 5.00
Object = "{888CB5C1-D2D1-44D7-A65A-A025AAC95417}#1.0#0"; "wodHttp.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{5C4592BE-A01B-11D3-AFAF-BF3F431B043C}#2.0#0"; "toolbar.ocx"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "chatter beta v2.3"
   ClientHeight    =   5865
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   9735
   BeginProperty Font 
      Name            =   "Consolas"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5865
   ScaleWidth      =   9735
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame frmLogging 
      BorderStyle     =   0  'None
      Height          =   5055
      Left            =   10680
      TabIndex        =   19
      Top             =   1440
      Width           =   9735
      Begin VB.TextBox txtLog 
         Height          =   3975
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   20
         Top             =   900
         Width           =   9495
      End
      Begin VB.Label lblText 
         Caption         =   "sockets"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   33
         Top             =   120
         Width           =   735
      End
      Begin VB.Label lblSockets 
         Caption         =   "0"
         Height          =   255
         Left            =   120
         TabIndex        =   32
         Top             =   345
         Width           =   855
      End
      Begin VB.Label lblText 
         Caption         =   "targets"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   6
         Left            =   2640
         TabIndex        =   31
         Top             =   120
         Width           =   735
      End
      Begin VB.Label lblTargets 
         Caption         =   "0"
         Height          =   255
         Left            =   2640
         TabIndex        =   30
         Top             =   345
         Width           =   735
      End
      Begin VB.Label lblText 
         Caption         =   "keywords"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   7
         Left            =   5640
         TabIndex        =   29
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label lblKeywords 
         Caption         =   "0"
         Height          =   255
         Left            =   5640
         TabIndex        =   28
         Top             =   345
         Width           =   855
      End
      Begin VB.Label lblText 
         Caption         =   "log"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   27
         Top             =   660
         Width           =   3495
      End
      Begin VB.Label lblText 
         Caption         =   "refreshed"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   11
         Left            =   1320
         TabIndex        =   26
         Top             =   120
         Width           =   975
      End
      Begin VB.Label lblSocketsRefreshed 
         Caption         =   "0"
         Height          =   255
         Left            =   1320
         TabIndex        =   25
         Top             =   345
         Width           =   855
      End
      Begin VB.Label lblText 
         Caption         =   "matches discovered"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   12
         Left            =   3600
         TabIndex        =   24
         Top             =   120
         Width           =   855
      End
      Begin VB.Label lblMatchesDiscovered 
         Caption         =   "0"
         Height          =   255
         Left            =   3600
         TabIndex        =   23
         Top             =   345
         Width           =   855
      End
      Begin VB.Label lblText 
         Caption         =   "crawls"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   13
         Left            =   4680
         TabIndex        =   22
         Top             =   120
         Width           =   735
      End
      Begin VB.Label lblCrawlsAttempted 
         Caption         =   "0"
         Height          =   255
         Left            =   4680
         TabIndex        =   21
         Top             =   345
         Width           =   735
      End
   End
   Begin VB.Frame frmConfig 
      BorderStyle     =   0  'None
      Height          =   5055
      Left            =   10560
      TabIndex        =   2
      Top             =   6600
      Width           =   9735
      Begin VB.TextBox txtSockets 
         Enabled         =   0   'False
         Height          =   315
         Left            =   120
         TabIndex        =   10
         Text            =   "10"
         Top             =   360
         Width           =   9495
      End
      Begin VB.ListBox lstTargets 
         Height          =   1740
         Left            =   120
         TabIndex        =   9
         Top             =   3060
         Width           =   4695
      End
      Begin VB.ListBox lstKeywords 
         Height          =   1740
         Left            =   4920
         TabIndex        =   8
         Top             =   3060
         Width           =   4695
      End
      Begin VB.TextBox txtAPIKey 
         Height          =   315
         Left            =   120
         TabIndex        =   7
         Top             =   960
         Width           =   9495
      End
      Begin VB.TextBox txtChatID 
         Height          =   315
         Left            =   120
         TabIndex        =   6
         Top             =   1560
         Width           =   9495
      End
      Begin VB.CheckBox chkPopulate 
         Caption         =   "populate db without broadcasting"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   5
         ToolTipText     =   "do this prior to launching a new campaign to prevent flooding. reload chatter when complete."
         Top             =   2505
         Width           =   3735
      End
      Begin VB.TextBox txtRefresh 
         Height          =   315
         Left            =   120
         TabIndex        =   4
         Text            =   "60"
         Top             =   2145
         Width           =   9495
      End
      Begin VB.Label lblText 
         Caption         =   "?"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   3
         Left            =   4680
         TabIndex        =   18
         Top             =   2760
         Width           =   255
      End
      Begin VB.Label lblText 
         Caption         =   "sockets"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   17
         Top             =   120
         Width           =   735
      End
      Begin VB.Label lblText 
         Caption         =   "\config\targets.txt"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   16
         Top             =   2820
         Width           =   4335
      End
      Begin VB.Label lblText 
         Caption         =   "\config\keywords.txt"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   4
         Left            =   4920
         TabIndex        =   15
         Top             =   2820
         Width           =   2535
      End
      Begin VB.Label lblText 
         Caption         =   "\config\apikey.txt"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   9
         Left            =   120
         TabIndex        =   14
         Top             =   720
         Width           =   2295
      End
      Begin VB.Label lblText 
         Caption         =   "\config\chatid.txt"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   13
         Top             =   1320
         Width           =   2175
      End
      Begin VB.Label lblText 
         Caption         =   "force socket refresh every x minutes"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   14
         Left            =   120
         TabIndex        =   12
         Top             =   1905
         Width           =   4095
      End
      Begin VB.Label lblPopulateDBHelp 
         Caption         =   "?"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4680
         TabIndex        =   11
         Top             =   2505
         Width           =   135
      End
   End
   Begin VB.Frame frmStatus 
      BorderStyle     =   0  'None
      Height          =   5055
      Left            =   0
      TabIndex        =   1
      Top             =   480
      Width           =   9735
      Begin MSComctlLib.ListView LV 
         Height          =   4695
         Left            =   120
         TabIndex        =   3
         Top             =   240
         Width           =   9495
         _ExtentX        =   16748
         _ExtentY        =   8281
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         Appearance      =   1
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Consolas"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   0
      End
   End
   Begin wodHttpDLXLibCtl.wodHttpDLX wAuth 
      Left            =   10800
      OleObjectBlob   =   "frmMain.frx":048A
      Top             =   960
   End
   Begin VB.Timer tmrRefreshSockets 
      Enabled         =   0   'False
      Interval        =   60000
      Left            =   12480
      Top             =   960
   End
   Begin VB.Timer tmrPoll 
      Enabled         =   0   'False
      Index           =   0
      Interval        =   1
      Left            =   12120
      Top             =   960
   End
   Begin MSComctlLib.StatusBar statusBar 
      Align           =   2  'Align Bottom
      Height          =   330
      Left            =   0
      TabIndex        =   0
      Top             =   5535
      Width           =   9735
      _ExtentX        =   17171
      _ExtentY        =   582
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   17119
            Text            =   "status: loading"
            TextSave        =   "status: loading"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin wodHttpDLXLibCtl.wodHttpDLX wSocket 
      Index           =   0
      Left            =   11640
      OleObjectBlob   =   "frmMain.frx":0508
      Top             =   960
   End
   Begin wodHttpDLXLibCtl.wodHttpDLX wSend 
      Index           =   0
      Left            =   11160
      OleObjectBlob   =   "frmMain.frx":0586
      Top             =   960
   End
   Begin AIFCmp1.asxToolbar toolBar 
      Height          =   615
      Left            =   0
      Top             =   0
      Width           =   6570
      _ExtentX        =   11589
      _ExtentY        =   1085
      BeginProperty ToolTipFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BorderStyle     =   0
      BorderLeft      =   0   'False
      BorderTop       =   0   'False
      BorderRight     =   0   'False
      BorderBottom    =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Appearance      =   1
      ButtonCount     =   5
      PlaySounds      =   0   'False
      ShowSeparators  =   -1  'True
      AutoSize        =   -1  'True
      ButtonEnabled1  =   0   'False
      ButtonCaption1  =   "start"
      ButtonDescription1=   "start"
      ButtonKey1      =   "start"
      ButtonPicture1  =   "frmMain.frx":0604
      ButtonToolTipText1=   "start"
      ButtonCaption2  =   "configuration"
      ButtonDescription2=   "configuration"
      ButtonKey2      =   "configuration"
      ButtonPicture2  =   "frmMain.frx":0956
      ButtonToolTipText2=   "configuration"
      ButtonCaption3  =   "status"
      ButtonDescription3=   "status"
      ButtonKey3      =   "status"
      ButtonPicture3  =   "frmMain.frx":0CA8
      ButtonToolTipText3=   "status"
      ButtonCaption4  =   "logging"
      ButtonDescription4=   "logging"
      ButtonKey4      =   "logging"
      ButtonPicture4  =   "frmMain.frx":0FFA
      ButtonToolTipText4=   "logging"
      ButtonCaption5  =   "about"
      ButtonDescription5=   "about"
      ButtonKey5      =   "about"
      ButtonPicture5  =   "frmMain.frx":134C
      ButtonToolTipText5=   "about"
   End
   Begin VB.Menu start 
      Caption         =   "start"
      Visible         =   0   'False
   End
   Begin VB.Menu help 
      Caption         =   "?"
      Visible         =   0   'False
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function SHGetSpecialFolderLocation Lib "shell32" (ByVal hWndOwner As Long, ByVal nFolder As Long, pidl As Long) As Long
Private Declare Function SHGetPathFromIDList Lib "shell32" (ByVal pidList As Long, ByVal lpBuffer As String) As Long
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
Private Declare Sub CoTaskMemFree Lib "ole32.dll" (ByVal pv As Long)
Private Const SW_SHOWMAXIMIZED = 3
Private Const SW_SHOWNORMAL = 1
Private Const CSIDL_LOCAL_APPDATA = &H1C&
Dim iSockets As Integer
Dim sKeywords(1 To 500) As String
Dim sService(1 To 500) As String
Dim sArea(1 To 500) As String
Dim sAPIKey(1 To 500) As String
Dim iPause(1 To 500) As Integer
Dim iCurrentKeyword(1 To 500) As Integer
Dim iPauseLoop(1 To 500) As Integer
Dim iRefreshSockets As Integer
Dim sTwitterAuth As String
Private Sub Form_Load()
    FlatBorder txtSockets.hwnd
    FlatBorder lstTargets.hwnd
    FlatBorder lstKeywords.hwnd
    FlatBorder txtLog.hwnd
    FlatBorder txtAPIKey.hwnd
    FlatBorder txtChatID.hwnd
    FlatBorder txtRefresh.hwnd
    FlatBorder LV.hwnd
    With LV
        .FullRowSelect = True
        .View = lvwReport
        .LabelEdit = lvwManual
        .ColumnHeaders.Add , "socket", "socket", 1000
        .ColumnHeaders.Add , "service", "service", 1000
        .ColumnHeaders.Add , "area", "area", 1500
        .ColumnHeaders.Add , "api/creds", "api/creds", 1500
        .ColumnHeaders.Add , "pause", "pause", 1000
        .ColumnHeaders.Add , "status", "status", 3125
    End With
    frmStatus.Top = 480
    frmStatus.Left = 0
    Call LoadListFromFile(App.Path & "\config\targets.txt", lstTargets)
    Call LoadListFromFile(App.Path & "\config\keywords.txt", lstKeywords)
    txtAPIKey.Text = LoadText(App.Path & "\config\apikey.txt")
    txtChatID.Text = LoadText(App.Path & "\config\chatid.txt")
    iSockets = lstTargets.ListCount
    txtSockets.Text = iSockets
    Dim I As Integer
    For I = 1 To iSockets
        Call listScroll(lstTargets)
        sService(I) = Split(lstTargets.Text, ":")(0)
        sArea(I) = Split(lstTargets.Text, ":")(1)
        sAPIKey(I) = Split(lstTargets.Text, ":")(2)
        iPause(I) = Split(lstTargets.Text, ":")(3)
        Load wSocket(I)
        Load tmrPoll(I)
        LV.ListItems.Add(, , "") = I
        LV.ListItems.Item(LV.ListItems.Count).ListSubItems.Add , , sService(I)
        LV.ListItems.Item(LV.ListItems.Count).ListSubItems.Add , , sArea(I)
        LV.ListItems.Item(LV.ListItems.Count).ListSubItems.Add , , sAPIKey(I)
        LV.ListItems.Item(LV.ListItems.Count).ListSubItems.Add , , iPause(I)
        LV.ListItems.Item(LV.ListItems.Count).ListSubItems.Add , , "idle"
    Next
    For I = 1 To lstKeywords.ListCount
        Call listScroll(lstKeywords)
        sKeywords(I) = lstKeywords.Text
    Next
    For I = 1 To 500
        Load wSend(I)
    Next
    lblSockets.Caption = iSockets
    lblTargets.Caption = lstTargets.ListCount
    lblKeywords.Caption = lstKeywords.ListCount
    wAuth.URL = "https://api.twitter.com/1.1/guest/activate.json"
    wAuth.Request.Headers.Add "authorization", "Bearer AAAAAAAAAAAAAAAAAAAAANRILgAAAAAAnNwIzUejRCOuH5E6I8xnZz4puTs%3D1Zv7ttfk8LF81IUq16cHjhLTvJu4FA33AGWWjCpTnA"
    wAuth.Post
End Sub

Private Sub wAuth_Done(ByVal ErrorCode As Long, ByVal ErrorText As String)
    sTwitterAuth = wAuth.Response.Body
    sTwitterAuth = Split(sTwitterAuth, ":")(1): sTwitterAuth = Replace(sTwitterAuth, """", ""): sTwitterAuth = Replace(sTwitterAuth, "}", "")
    If toolBar.Button(1).Enabled = False Then
        toolBar.Button(1).Enabled = True
    End If
End Sub
Private Sub lblPopulateDBHelp_Click()
    MsgBox "it is recommended to do this several times before broadcasting to telegram. this is particularly the case with twitter. timestamping may be added in the future. eventually, only recent material is reported - but it may take a few days for all old content to fully db.", vbInformation
End Sub
Private Sub start_Click()
    lstTargets.Enabled = False
    lstKeywords.Enabled = False
    txtAPIKey.Enabled = False
    txtChatID.Enabled = False
    txtRefresh.Enabled = False
    Dim I As Integer
    For I = 1 To iSockets
        tmrPoll(I).Enabled = True
    Next
    tmrRefreshSockets.Enabled = True
    statusBar.Panels(1).Text = "status: running"
End Sub
Private Sub tmrPoll_Timer(Index As Integer)
    Dim I As Integer
    If tmrPoll(Index).Interval = 1 Then
        LV.ListItems(Index).SubItems(5) = "searching " & sArea(Index) & " on " & sService(Index)
        tmrPoll(Index).Interval = 2
        Exit Sub
    End If
    If tmrPoll(Index).Interval = 2 Then
        If sService(Index) = "4chan" Then
            If iCurrentKeyword(Index) = 0 Then
                iCurrentKeyword(Index) = 1
            Else
                If iCurrentKeyword(Index) < lstKeywords.ListCount Then
                    iCurrentKeyword(Index) = iCurrentKeyword(Index) + 1
                Else
                    statusBar.Panels(1).Text = "status: pausing for " & iPause(Index) & " minutes."
                    LV.ListItems(Index).SubItems(5) = "pausing for " & iPause(Index) & " minutes."
                    txtLog.Text = txtLog.Text & "pausing socket #" & Index & " for " & iPause(Index) & " minutes." & vbNewLine
                    iCurrentKeyword(Index) = 0
                    iPauseLoop(Index) = 0
                    tmrPoll(Index).Interval = 60000
                    Exit Sub
                End If
            End If
            wSocket(Index).Request.Cookies.RemoveAll
            wSocket(Index).Request.Headers.RemoveAll
            wSocket(Index).URL = "https://find.4chan.org/?q=" & Replace(sKeywords(iCurrentKeyword(Index)), """", "") & "&b=" & sArea(Index)
            wSocket(Index).Request.UserAgent = randomUserAgent
            wSocket(Index).Get
            tmrPoll(Index).Enabled = False
        End If
        If sService(Index) = "reddit" Then
            If iCurrentKeyword(Index) = 0 Then
                iCurrentKeyword(Index) = 1
            Else
                If iCurrentKeyword(Index) < lstKeywords.ListCount Then
                    iCurrentKeyword(Index) = iCurrentKeyword(Index) + 1
                Else
                    statusBar.Panels(1).Text = "status: pausing for " & iPause(Index) & " minutes."
                    LV.ListItems(Index).SubItems(5) = "pausing for " & iPause(Index) & " minutes."
                    txtLog.Text = txtLog.Text & "pausing socket #" & Index & " for " & iPause(Index) & " minutes." & vbNewLine
                    iCurrentKeyword(Index) = 0
                    iPauseLoop(Index) = 0
                    tmrPoll(Index).Interval = 60000
                    Exit Sub
                End If
            End If
            wSocket(Index).Request.Cookies.RemoveAll
            wSocket(Index).Request.Headers.RemoveAll
            wSocket(Index).URL = "https://www.reddit.com/search.compact?q=subreddit%3A" & _
            sArea(Index) & "+" & sKeywords(iCurrentKeyword(Index)) & "&sort=new&t=all"
            wSocket(Index).Request.UserAgent = randomMobileUserAgent
            wSocket(Index).Get
            tmrPoll(Index).Enabled = False
        End If
        If sService(Index) = "twitter" Then
            If iCurrentKeyword(Index) = 0 Then
                iCurrentKeyword(Index) = 1
            Else
                If iCurrentKeyword(Index) < lstKeywords.ListCount Then
                    iCurrentKeyword(Index) = iCurrentKeyword(Index) + 1
                Else
                    statusBar.Panels(1).Text = "status: pausing for " & iPause(Index) & " minutes."
                    LV.ListItems(Index).SubItems(5) = "pausing for " & iPause(Index) & " minutes."
                    txtLog.Text = txtLog.Text & "pausing socket #" & Index & " for " & iPause(Index) & " minutes." & vbNewLine
                    wAuth.Request.Headers.RemoveAll
                    wAuth.Request.Cookies.RemoveAll
                    wAuth.URL = "https://api.twitter.com/1.1/guest/activate.json"
                    wAuth.Request.Headers.Add "authorization", "Bearer AAAAAAAAAAAAAAAAAAAAANRILgAAAAAAnNwIzUejRCOuH5E6I8xnZz4puTs%3D1Zv7ttfk8LF81IUq16cHjhLTvJu4FA33AGWWjCpTnA"
                    wAuth.Post
                    iCurrentKeyword(Index) = 0
                    iPauseLoop(Index) = 0
                    tmrPoll(Index).Interval = 60000
                    Exit Sub
                End If
            End If
            wSocket(Index).Request.Cookies.RemoveAll
            wSocket(Index).Request.Headers.RemoveAll
            wSocket(Index).Request.Body = ""
            wSocket(Index).URL = "https://api.twitter.com/2/search/adaptive.json?&q=" & sKeywords(iCurrentKeyword(Index))
            wSocket(Index).Request.Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
            wSocket(Index).Request.UserAgent = "*"
            wSocket(Index).Request.AcceptLanguage = "en-US,en;q=0.5"
            wSocket(Index).Request.AcceptEncoding = "Accept-Encoding"
            wSocket(Index).Request.Headers.Add "authorization", "Bearer AAAAAAAAAAAAAAAAAAAAANRILgAAAAAAnNwIzUejRCOuH5E6I8xnZz4puTs%3D1Zv7ttfk8LF81IUq16cHjhLTvJu4FA33AGWWjCpTnA"
            wSocket(Index).Request.Headers.Add "x-guest-token", sTwitterAuth
            wSocket(Index).Request.Headers.Add "Connection", "close"
            wSocket(Index).Get
            tmrPoll(Index).Enabled = False
        End If
    End If
    If tmrPoll(Index).Interval = 60000 Then
        If iPauseLoop(Index) = iPause(Index) Then
            tmrPoll(Index).Interval = 2
            Exit Sub
        Else
            iPauseLoop(Index) = iPauseLoop(Index) + 1
            Exit Sub
        End If
    End If
End Sub
Private Sub toolBar_ButtonClick(ByVal ButtonIndex As Integer, ByVal ButtonKey As String)
    If ButtonIndex = 1 Then
        frmStatus.Top = 480
        frmStatus.Left = 0
        frmConfig.Top = 10000
        frmLogging.Top = 10000
        lstTargets.Enabled = False
        lstKeywords.Enabled = False
        txtAPIKey.Enabled = False
        txtChatID.Enabled = False
        txtRefresh.Enabled = False
        Dim I As Integer
        For I = 1 To iSockets
            tmrPoll(I).Enabled = True
        Next
        tmrRefreshSockets.Enabled = True
        statusBar.Panels(1).Text = "status: running"
    End If
    If ButtonIndex = 2 Then
        frmConfig.Top = 480
        frmConfig.Left = 0
        frmStatus.Top = 10000
        frmStatus.Left = 10000
        frmStatus.Top = 10000
        frmLogging.Top = 10000
    End If
    If ButtonIndex = 3 Then
        frmStatus.Top = 480
        frmStatus.Left = 0
        frmConfig.Top = 10000
        frmLogging.Top = 10000
    End If
    If ButtonIndex = 4 Then
        frmLogging.Top = 480
        frmLogging.Left = 0
        frmStatus.Top = 10000
        frmConfig.Top = 10000
    End If
    If ButtonIndex = 5 Then
        MsgBox "i still have no idea why i'm building this. let's find out together." & vbCrLf & vbCrLf & "follow me on twitter @123456" & vbCrLf & vbCrLf & "-pad", , "about"
    End If
End Sub
Private Sub wSocket_Done(Index As Integer, ByVal ErrorCode As Long, ByVal ErrorText As String)
    On Error Resume Next
    lblCrawlsAttempted.Caption = lblCrawlsAttempted.Caption + 1
    Dim sResponseBody As String, I As Integer, X As String, Y As String, sMessage As String, fileName As String, _
    regEx As RegExp, myMatches As MatchCollection, myMatch As Match
    sResponseBody = wSocket(Index).Response.Body
    txtLog.Text = txtLog.Text & "searching " & sService(Index) & "/" & sArea(Index) & " for " & sKeywords(iCurrentKeyword(Index)) & vbNewLine
    wSocket(Index).Disconnect
    If sService(Index) = "4chan" Then
        sResponseBody = LCase(sResponseBody)
        sResponseBody = Replace(sResponseBody, "&gt;", "")
        sResponseBody = Replace(sResponseBody, "<span class=""quote""", "")
        sResponseBody = Replace(sResponseBody, "<br>", " ")
        For I = 1 To 1000
            If InStr(sResponseBody, "<span class=""postnum desktop"">") Then
                X = midParse(sResponseBody, "<span class=""postnum desktop"">", "</blockquote>")
                If Len(X) > 1 Then
                    If InStr(X, Replace(sKeywords(iCurrentKeyword(Index)), """", "")) Then
                        fileName = midParse(X, "thread/", "#")
                        If FileExists(App.Path & "\db\4chan\" & fileName & ".txt") Then
                            LV.ListItems(Index).SubItems(5) = "ignoring duplicate"
                            txtLog.Text = txtLog.Text & "ignoring " & sService(Index) & " duplicate: " & fileName & vbNewLine
                        Else
                            statusBar.Panels(1).Text = "status: [" & Index & "] " & sKeywords(iCurrentKeyword(Index)) & _
                            " match discovered in " & sArea(Index) & " of " & sService(Index) & ". storing."
                            Call SaveText("", App.Path & "\db\4chan\" & fileName & ".txt")
                            lblMatchesDiscovered.Caption = lblMatchesDiscovered.Caption + 1
                            LV.ListItems(Index).SubItems(5) = "discovered +1 ''" & sKeywords(iCurrentKeyword(Index)) & _
                            "'' in " & sArea(Index)
                            sMessage = midParse(X, "<a href=""//", """") & " / " & Split(X, """>")(2)
                            sMessage = sKeywords(iCurrentKeyword(Index)) & "%0D%0A%0D%0A" & "https://" & _
                            midParse(X, "<a href=""//", """")
                            txtLog.Text = txtLog.Text & Replace(sMessage, "%0D%0A%0D%0A", " ") & vbNewLine
                            If chkPopulate = 0 Then
                                wSend(Index).URL = "https://api.telegram.org/" & txtAPIKey.Text & "/sendMessage?parse_mode=html&chat_id=" & txtChatID.Text & "&text=%F0%9F%91%81%EF%B8%8F <b>chatter</b> found " & sMessage
                                wSend(Index).Get
                            End If
                        End If
                    End If
                Else
                    I = 1000
                    Exit Sub
                End If
                sResponseBody = Replace(sResponseBody, "<span class=""postnum desktop"">" & X & "</blockquote>", vbNull)
            End If
        Next
    End If
    If sService(Index) = "reddit" Then
        sResponseBody = LCase(sResponseBody)
        X = sResponseBody
        Set regEx = New RegExp
        regEx.IgnoreCase = False
        regEx.Global = True
        regEx.Pattern = "mailto(.*?)%0a"" >"
        Set myMatches = regEx.Execute(X)
        For Each myMatch In myMatches
            Y = myMatch.Value
            sMessage = sKeywords(iCurrentKeyword(Index)) & "%0D%0A%0D%0A" & "https://reddit.com/r/" & _
            midParse(Y, "https%3a//www.reddit.com/r/", "%")
            fileName = midParse(Y, "comments/", "/")
            If FileExists(App.Path & "\db\reddit\" & fileName & ".txt") Then
                LV.ListItems(Index).SubItems(5) = "ignoring duplicate"
                txtLog.Text = txtLog.Text & "ignoring " & sService(Index) & " duplicate: " & fileName & vbNewLine
            Else
                statusBar.Panels(1).Text = "status: [" & Index & "] " & sKeywords(iCurrentKeyword(Index)) & _
                " match discovered in " & sArea(Index) & " of " & sService(Index) & ". storing."
                Call SaveText("", App.Path & "\db\reddit\" & fileName & ".txt")
                lblMatchesDiscovered.Caption = lblMatchesDiscovered.Caption + 1
                LV.ListItems(Index).SubItems(5) = "discovered +1 ''" & sKeywords(iCurrentKeyword(Index)) & "'' in " & sArea(Index)
                txtLog.Text = txtLog.Text & Replace(sMessage, "%0D%0A%0D%0A", " ") & vbNewLine
                If chkPopulate = 0 Then
                    wSend(Index).URL = "https://api.telegram.org/" & txtAPIKey.Text & "/sendMessage?parse_mode=html&chat_id=" & txtChatID.Text & "&text=%F0%9F%91%81%EF%B8%8F <b>chatter</b> found " & sMessage
                    wSend(Index).Get
                End If
            End If
        Next
    End If
    If sService(Index) = "twitter" Then
        sResponseBody = LCase(sResponseBody)
        X = sResponseBody
        Set regEx = New RegExp
        regEx.IgnoreCase = False
        regEx.Global = True
        regEx.Pattern = "{""tweet"":{(.*?)"","
        Set myMatches = regEx.Execute(X)
        For Each myMatch In myMatches
            Y = myMatch.Value
            Y = Replace(Y, "{""tweet"":{""id"":", ""): Y = Replace(Y, ",", ""): Y = Replace(Y, """", "")
            Debug.Print Y
            sMessage = sKeywords(iCurrentKeyword(Index)) & "%0D%0A%0D%0A" & _
            "https://twitter.com" & midParse(Y, "data-permalink-path=""", """")
            fileName = Y
            If FileExists(App.Path & "\db\twitter\" & fileName & ".txt") Then
                LV.ListItems(Index).SubItems(5) = "ignoring duplicate"
                txtLog.Text = txtLog.Text & "ignoring " & sService(Index) & " duplicate: " & Y & vbNewLine
            Else
                statusBar.Panels(1).Text = "status: [" & Index & "] " & sKeywords(iCurrentKeyword(Index)) & _
                " match discovered in " & sArea(Index) & " of " & sService(Index) & ". storing."
                Call SaveText("", App.Path & "\db\twitter\" & fileName & ".txt")
                lblMatchesDiscovered.Caption = lblMatchesDiscovered.Caption + 1
                LV.ListItems(Index).SubItems(5) = "discovered +1 ''" & sKeywords(iCurrentKeyword(Index)) & "'' in " & sArea(Index)
                txtLog.Text = txtLog.Text & Replace(sMessage, "%0D%0A%0D%0A", " ") & "/1/status/" & Y & vbNewLine
                If chkPopulate = 0 Then
                    wSend(Index).URL = "https://api.telegram.org/" & txtAPIKey.Text & "/sendMessage?parse_mode=html&chat_id=" & txtChatID.Text & "&text=%F0%9F%91%81%EF%B8%8F <b>chatter</b> found " & sMessage & "/1/status/" & Y
                    wSend(Index).Get
                End If
            End If
        Next
    End If
    If tmrPoll(Index).Enabled = False Then
        tmrPoll(Index).Enabled = True
    End If
End Sub
Private Sub tmrRefreshSockets_Timer()
    On Error Resume Next
    Dim I As Integer
    iRefreshSockets = iRefreshSockets + 1
    If iRefreshSockets >= txtRefresh.Text + 1 Then
        iRefreshSockets = 0
        For I = 1 To iSockets
            wSocket(I).Disconnect
            tmrPoll(I).Enabled = False
            tmrPoll(I).Interval = 1
            tmrPoll(I).Enabled = True
            lblSocketsRefreshed.Caption = lblSocketsRefreshed.Caption + 1
        Next
        For I = 1 To 500
            wSend(I).Disconnect
        Next
    End If
End Sub
Public Function ApiSpecialFolder(ByVal CSIDL As Long) As String
    Dim s As String
    Dim Result As Long
    Dim ppidl As Long
    Dim I As Long
    s = Space(260)
    Result = SHGetSpecialFolderLocation(0, CSIDL, ppidl)
    If Result = 0 Then
        Result = SHGetPathFromIDList(ppidl, s)
        If Result Then
            I = InStr(s, Chr$(0))
            If I > 0 Then s = Left$(s, I - 1)
            s = Trim$(s)
            If Right$(s, 1) <> "\" Then s = s & "\"
            ApiSpecialFolder = s
        End If
        CoTaskMemFree ppidl
    Else
        ApiSpecialFolder = ""
    End If
End Function
Public Function bFileExists(fle As String) As Boolean
    On Error GoTo FileExistsError
    bFileExists = (GetAttr(fle) And vbDirectory) = 0
    Exit Function
FileExistsError:
    bFileExists = False
    Exit Function
End Function
Private Sub lblText_Click(Index As Integer)
    If Index = 2 Then
        MsgBox "sockets are set by the amount of lines in targets.txt", vbInformation, "?"
    End If
    If Index = 3 Then
        MsgBox "targets are read in the following format:" _
        & vbNewLine & vbNewLine & "service:area:creds:timeout_in_minutes" _
        & vbNewLine & vbNewLine & "e.g. discord:ethtrader:apikey:10", vbInformation, "?"
    End If
End Sub
Private Sub txtLog_Change()
    txtLog.SelStart = Len(txtLog.Text)
    If Len(txtLog.Text) > 30000 Then
        txtLog.Text = vbNull
    End If
End Sub
