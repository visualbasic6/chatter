VERSION 5.00
Object = "{888CB5C1-D2D1-44D7-A65A-A025AAC95417}#1.0#0"; "wodHttp.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "chatter beta v2 - email: kevin@envadr.io to purchase custom versions for your organization"
   ClientHeight    =   5805
   ClientLeft      =   45
   ClientTop       =   690
   ClientWidth     =   9945
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5805
   ScaleWidth      =   9945
   StartUpPosition =   1  'CenterOwner
   Begin VB.Timer tmrRefreshSockets 
      Enabled         =   0   'False
      Interval        =   60000
      Left            =   9720
      Top             =   0
   End
   Begin VB.Timer tmrPoll 
      Enabled         =   0   'False
      Index           =   0
      Interval        =   1
      Left            =   9360
      Top             =   0
   End
   Begin TabDlg.SSTab tabBar 
      Height          =   5295
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   9735
      _ExtentX        =   17171
      _ExtentY        =   9340
      _Version        =   393216
      Style           =   1
      Tab             =   1
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "status"
      TabPicture(0)   =   "frmMain.frx":048A
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "LV"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "config"
      TabPicture(1)   =   "frmMain.frx":04A6
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "lblText(0)"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "lblText(1)"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "lblText(2)"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "lblText(3)"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "lblText(4)"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "lblText(9)"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "lblText(10)"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).Control(7)=   "lblText(14)"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).Control(8)=   "txtSockets"
      Tab(1).Control(8).Enabled=   0   'False
      Tab(1).Control(9)=   "lstTargets"
      Tab(1).Control(9).Enabled=   0   'False
      Tab(1).Control(10)=   "lstKeywords"
      Tab(1).Control(10).Enabled=   0   'False
      Tab(1).Control(11)=   "txtAPIKey"
      Tab(1).Control(11).Enabled=   0   'False
      Tab(1).Control(12)=   "txtChatID"
      Tab(1).Control(12).Enabled=   0   'False
      Tab(1).Control(13)=   "chkPopulate"
      Tab(1).Control(13).Enabled=   0   'False
      Tab(1).Control(14)=   "txtRefresh"
      Tab(1).Control(14).Enabled=   0   'False
      Tab(1).ControlCount=   15
      TabCaption(2)   =   "logging"
      TabPicture(2)   =   "frmMain.frx":04C2
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "lblText(5)"
      Tab(2).Control(1)=   "lblSockets"
      Tab(2).Control(2)=   "lblText(6)"
      Tab(2).Control(3)=   "lblTargets"
      Tab(2).Control(4)=   "lblText(7)"
      Tab(2).Control(5)=   "lblKeywords"
      Tab(2).Control(6)=   "lblText(8)"
      Tab(2).Control(7)=   "lblText(11)"
      Tab(2).Control(8)=   "lblSocketsRefreshed"
      Tab(2).Control(9)=   "lblText(12)"
      Tab(2).Control(10)=   "lblMatchesDiscovered"
      Tab(2).Control(11)=   "lblText(13)"
      Tab(2).Control(12)=   "lblCrawlsAttempted"
      Tab(2).Control(13)=   "txtLog"
      Tab(2).ControlCount=   14
      Begin VB.TextBox txtRefresh 
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         TabIndex        =   31
         Text            =   "60"
         Top             =   2450
         Width           =   9495
      End
      Begin VB.CheckBox chkPopulate 
         Caption         =   "populate database without broadcasting to telegram"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   23
         ToolTipText     =   "do this prior to launching a new campaign to prevent flooding. reload chatter when complete."
         Top             =   2800
         Width           =   9375
      End
      Begin VB.TextBox txtChatID 
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         TabIndex        =   22
         Top             =   1860
         Width           =   9495
      End
      Begin VB.TextBox txtAPIKey 
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         TabIndex        =   20
         Top             =   1260
         Width           =   9495
      End
      Begin VB.TextBox txtLog 
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3015
         Left            =   -74880
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   17
         Top             =   2160
         Width           =   9495
      End
      Begin VB.ListBox lstKeywords 
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1620
         Left            =   4920
         TabIndex        =   10
         Top             =   3360
         Width           =   4695
      End
      Begin VB.ListBox lstTargets 
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1620
         Left            =   120
         TabIndex        =   7
         Top             =   3360
         Width           =   4695
      End
      Begin VB.TextBox txtSockets 
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   120
         TabIndex        =   4
         Text            =   "10"
         Top             =   660
         Width           =   9495
      End
      Begin MSComctlLib.ListView LV 
         Height          =   4695
         Left            =   -74880
         TabIndex        =   2
         Top             =   480
         Width           =   9495
         _ExtentX        =   16748
         _ExtentY        =   8281
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
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
      Begin VB.Label lblText 
         Caption         =   "force socket refresh every x minutes"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   14
         Left            =   120
         TabIndex        =   30
         Top             =   2200
         Width           =   4095
      End
      Begin VB.Label lblCrawlsAttempted 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -73320
         TabIndex        =   29
         Top             =   1680
         Width           =   1455
      End
      Begin VB.Label lblText 
         Caption         =   "crawls attempted"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   13
         Left            =   -73320
         TabIndex        =   28
         Top             =   1440
         Width           =   1815
      End
      Begin VB.Label lblMatchesDiscovered 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -73320
         TabIndex        =   27
         Top             =   1200
         Width           =   1695
      End
      Begin VB.Label lblText 
         Caption         =   "matches discovered"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   12
         Left            =   -73320
         TabIndex        =   26
         Top             =   960
         Width           =   1815
      End
      Begin VB.Label lblSocketsRefreshed 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -73320
         TabIndex        =   25
         Top             =   720
         Width           =   1575
      End
      Begin VB.Label lblText 
         Caption         =   "sockets refreshed"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   11
         Left            =   -73320
         TabIndex        =   24
         Top             =   480
         Width           =   1815
      End
      Begin VB.Label lblText 
         Caption         =   "\config\chatid.txt"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   21
         Top             =   1620
         Width           =   1815
      End
      Begin VB.Label lblText 
         Caption         =   "\config\apikey.txt"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   9
         Left            =   120
         TabIndex        =   19
         Top             =   1020
         Width           =   1815
      End
      Begin VB.Label lblText 
         Caption         =   "log"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   8
         Left            =   -74880
         TabIndex        =   18
         Top             =   1920
         Width           =   3495
      End
      Begin VB.Label lblKeywords 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -74880
         TabIndex        =   16
         Top             =   1680
         Width           =   855
      End
      Begin VB.Label lblText 
         Caption         =   "keywords"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   7
         Left            =   -74880
         TabIndex        =   15
         Top             =   1440
         Width           =   1215
      End
      Begin VB.Label lblTargets 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -74880
         TabIndex        =   14
         Top             =   1200
         Width           =   735
      End
      Begin VB.Label lblText 
         Caption         =   "targets"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   6
         Left            =   -74880
         TabIndex        =   13
         Top             =   960
         Width           =   735
      End
      Begin VB.Label lblSockets 
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -74880
         TabIndex        =   12
         Top             =   720
         Width           =   855
      End
      Begin VB.Label lblText 
         Caption         =   "sockets"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   5
         Left            =   -74880
         TabIndex        =   11
         Top             =   480
         Width           =   735
      End
      Begin VB.Label lblText 
         Caption         =   "\config\keywords.txt"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   4
         Left            =   4920
         TabIndex        =   9
         Top             =   3120
         Width           =   1815
      End
      Begin VB.Label lblText 
         Alignment       =   1  'Right Justify
         Caption         =   "?"
         Height          =   255
         Index           =   3
         Left            =   4560
         TabIndex        =   8
         Top             =   2520
         Width           =   255
      End
      Begin VB.Label lblText 
         Alignment       =   1  'Right Justify
         Caption         =   "?"
         Height          =   255
         Index           =   2
         Left            =   9360
         TabIndex        =   6
         Top             =   180
         Width           =   255
      End
      Begin VB.Label lblText 
         Caption         =   "\config\targets.txt"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   5
         Top             =   3120
         Width           =   9135
      End
      Begin VB.Label lblText 
         Caption         =   "sockets"
         BeginProperty Font 
            Name            =   "Consolas"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   3
         Top             =   420
         Width           =   735
      End
   End
   Begin MSComctlLib.StatusBar statusBar 
      Align           =   2  'Align Bottom
      Height          =   330
      Left            =   0
      TabIndex        =   0
      Top             =   5475
      Width           =   9945
      _ExtentX        =   17542
      _ExtentY        =   582
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   17489
            Text            =   "status: idle"
            TextSave        =   "status: idle"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin wodHttpDLXLibCtl.wodHttpDLX wSocket 
      Index           =   0
      Left            =   8880
      OleObjectBlob   =   "frmMain.frx":04DE
      Top             =   0
   End
   Begin wodHttpDLXLibCtl.wodHttpDLX wSend 
      Index           =   0
      Left            =   8400
      OleObjectBlob   =   "frmMain.frx":055C
      Top             =   0
   End
   Begin VB.Menu start 
      Caption         =   "start"
   End
   Begin VB.Menu purchase 
      Caption         =   "purchase a custom version of chatter"
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

Private Sub Form_Load()

    FlatBorder txtSockets.hwnd
    FlatBorder lstTargets.hwnd
    FlatBorder lstKeywords.hwnd
    FlatBorder txtLog.hwnd
    FlatBorder txtAPIKey.hwnd
    FlatBorder txtChatID.hwnd
    FlatBorder txtRefresh.hwnd

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

End Sub

Private Sub purchase_Click()

    MsgBox "email kevin@envadr.io for quotes", , "chatter customization"

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
                    iCurrentKeyword(Index) = 0
                    iPauseLoop(Index) = 0
                    tmrPoll(Index).Interval = 60000
                    Exit Sub
                End If
            End If
            wSocket(Index).Request.Cookies.RemoveAll
            wSocket(Index).Request.Headers.RemoveAll
            wSocket(Index).Request.Body = ""
            wSocket(Index).URL = "https://twitter.com/search?l=&q=" & sKeywords(iCurrentKeyword(Index)) & "&src=typd"
            wSocket(Index).Request.Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
            wSocket(Index).Request.UserAgent = "*"
            wSocket(Index).Request.AcceptLanguage = "en-US,en;q=0.5"
            wSocket(Index).Request.AcceptEncoding = "Accept-Encoding"
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

Private Sub wSocket_Done(Index As Integer, ByVal ErrorCode As Long, ByVal ErrorText As String)

    On Error Resume Next

    lblCrawlsAttempted.Caption = lblCrawlsAttempted.Caption + 1

    Dim sResponseBody As String, I As Integer, X As String, Y As String, sMessage As String, fileName As String, _
    regEx As RegExp, myMatches As MatchCollection, myMatch As Match, iRNG As Integer

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
                iRNG = RandomNum(1, 500)
                If chkPopulate = 0 Then
                    wSend(iRNG).URL = "https://api.telegram.org/" & txtAPIKey.Text & "/sendMessage?parse_mode=html&chat_id=" & txtChatID.Text & "&text=%F0%9F%91%81%EF%B8%8F <b>chatter</b> found " & sMessage
                    wSend(iRNG).Get
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
        regEx.Pattern = "data-permalink-path=""(.*?)"""
        Set myMatches = regEx.Execute(X)
        For Each myMatch In myMatches
            Y = myMatch.Value
            sMessage = sKeywords(iCurrentKeyword(Index)) & "%0D%0A%0D%0A" & _
            "https://twitter.com" & midParse(Y, "data-permalink-path=""", """")
            fileName = midParse(Y, "/status/", """")
            If FileExists(App.Path & "\db\twitter\" & fileName & ".txt") Then
                LV.ListItems(Index).SubItems(5) = "ignoring duplicate"
                txtLog.Text = txtLog.Text & "ignoring " & sService(Index) & " duplicate: " & fileName & vbNewLine
            Else
                statusBar.Panels(1).Text = "status: [" & Index & "] " & sKeywords(iCurrentKeyword(Index)) & _
                " match discovered in " & sArea(Index) & " of " & sService(Index) & ". storing."
                Call SaveText("", App.Path & "\db\twitter\" & fileName & ".txt")
                lblMatchesDiscovered.Caption = lblMatchesDiscovered.Caption + 1
                LV.ListItems(Index).SubItems(5) = "discovered +1 ''" & sKeywords(iCurrentKeyword(Index)) & "'' in " & sArea(Index)
                txtLog.Text = txtLog.Text & Replace(sMessage, "%0D%0A%0D%0A", " ") & vbNewLine
                iRNG = RandomNum(1, 500)
                If chkPopulate = 0 Then
                    wSend(iRNG).URL = "https://api.telegram.org/" & txtAPIKey.Text & "/sendMessage?parse_mode=html&chat_id=" & txtChatID.Text & "&text=%F0%9F%91%81%EF%B8%8F <b>chatter</b> found " & sMessage
                    wSend(iRNG).Get
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
