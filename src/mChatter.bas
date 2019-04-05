Attribute VB_Name = "mChatter"
Public Declare Function SendMessageByString Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As String) As Long
Public Const LB_FINDSTRINGEXACT = &H1A2
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal Y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Public Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long

Dim userAgents(1 To 1000) As String
Dim mobileUserAgents(1 To 1000) As String

Public Function RandomNum(low, high)

    On Error Resume Next

    Randomize
    RandomNum = Int((Rnd * high) + low)

    Dim I As Integer
    I = 0
    For I = 1 To 5
        If RandomNum > high Then
            Randomize
            RandomNum = Int((Rnd * high) + low)
        Else
            I = 5
        End If
    Next

End Function

Public Function randomUserAgent()

    On Error Resume Next

    Dim RandomNumber As Integer

    userAgents(1) = "Mozilla/5.0 (X11; Linux x86_64; rv:2.2a1pre) Gecko/20110324 Firefox/4.2a1pre"
    userAgents(2) = "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:2.0b8pre) Gecko/20101114 Firefox/4.0b8pre"
    userAgents(3) = "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:2.0b11pre) Gecko/20110129 Firefox/4.0b11pre"
    userAgents(4) = "Mozilla/5.0 (X11; U; Linux i686; fr; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2"
    userAgents(5) = "Mozilla/5.0 (Windows; U; Windows NT 5.1; de; rv:1.9.2.2) Gecko/20100316 Firefox/3.6.2 ( .NET CLR 3.0.04506.648)"
    userAgents(6) = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.15) Gecko/20110303 Firefox/3.6.15 (.NET CLR 3.5.30729)"
    userAgents(7) = "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.13) Gecko/20101206 Firefox/3.6.13"
    userAgents(8) = "Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.2.13) Gecko/20101206 Ubuntu/10.10 (maverick) Firefox/3.6.13"
    userAgents(9) = "Mozilla/5.0 (X11; U; Linux ppc; fr; rv:1.9.2.12) Gecko/20101027 Ubuntu/10.10 (maverick) Firefox/3.6.12"
    userAgents(10) = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; de; rv:1.9.2.12) Gecko/20101026 Firefox/3.6.12 GTB5"
    userAgents(11) = "Mozilla/5.0 (X11; U; Linux i686; de; rv:1.9.2.10) Gecko/20100922 Ubuntu/10.10 (maverick) Firefox/3.6.10"
    userAgents(12) = "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6 FirePHP/0.4"
    userAgents(13) = "Mozilla/5.0 (X11; U; Linux i686; ja-JP; rv:1.9.1.8) Gecko/20100216 Fedora/3.5.8-1.fc12 Firefox/3.5.8"
    userAgents(14) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; Media Center PC 6.0; InfoPath.2; MS-RTC LM 8)"
    userAgents(15) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; MS-RTC LM 8; .NET4.0C; .NET4.0E; Zune 4.7)"
    userAgents(16) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; MS-RTC EA 2; MS-RTC LM 8; Zune 4.7)"
    userAgents(17) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; GTB0.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3; MS-RTC LM 8)"
    userAgents(18) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Win64; x64; Trident/4.0; GTB6; .NET CLR 2.0.50727; SLCC2; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; AskTbIJBME/5.9.1.14019)"
    userAgents(19) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET CLR 3.0.04506; Media Center PC 5.0; SLCC1; Tablet PC 2.0)"
    userAgents(20) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; MathPlayer 2.20; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3; .NET4.0C; .NET4.0E; Tablet PC 2.0)"
    userAgents(21) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB6.5; QQDownload 667; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; Tablet PC 2.0)"
    userAgents(22) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.5.21022; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET4.0C; .NET4.0E) chromeframe/6.0.472.63"
    userAgents(23) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; Trident/4.0; GTB6; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.21022; .NET CLR 1.1.4322; .NET CLR 3.5.30729; .NET CLR 3.0.30618)"
    userAgents(24) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; WOW64; SLCC1; .NET CLR 2.0.50727; .NET CLR 3.0.04506; Media Center PC 5.0; .NET CLR 1.1.4322)"
    userAgents(25) = "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Tablet PC 2.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.1)"

    RandomNumber = RandomNum(1, 25)

    randomUserAgent = userAgents(RandomNumber)

End Function

Public Function midParse(StringToParse As String, FindLeft As String, FindRight As String) As String

    On Error Resume Next

    rText = StringToParse
    rFind1 = FindLeft
    rFind2 = FindRight
    tPos1 = InStr(1, rText, rFind1)
    tPos2 = InStr(tPos1 + Len(rFind1), rText, rFind2)
    midParse = Mid$(rText, tPos1 + Len(rFind1), tPos2 - (tPos1 + Len(rFind1)))

End Function

Public Sub listScroll(TheList As ListBox)

    On Error Resume Next

    If TheList.ListCount = 0 Then
        Exit Sub
    End If

    If TheList.ListIndex = TheList.ListCount - 1 Then
        TheList.ListIndex = 0
    Else
        TheList.ListIndex = TheList.ListIndex + 1
    End If

End Sub

Public Sub SaveText(sString As String, sFile As String)
    On Error Resume Next
    Open sFile$ For Output As #1
        Print #1, sString$
    Close #1
End Sub

Public Function LoadText(sFile As String) As String
    
Dim sTemp As String

    On Error GoTo Handle
        Open sFile For Input As #1
            sTemp = Input(LOF(1), 1)
        Close #1
        LoadText = sTemp
    Exit Function

Handle:
End Function

Public Function DirExists(sDir As String) As Boolean

    If Len(Dir$(sDir, vbDirectory)) Then
        DirExists = True
    End If

End Function

Function dupeKill(lpBox As ListBox) As Integer
    Dim nCount As Integer, nPos1 As Integer, nPos2 As Integer, nDelete As Integer
    Dim sText As String
    nDelete = lpBox.ListCount
    For nCount = 0 To lpBox.ListCount - 1
        Do
            DoEvents
                sText = lpBox.List(nCount)
                nPos1 = SendMessageByString(lpBox.hwnd, LB_FINDSTRINGEXACT, nCount, sText)
                nPos2 = SendMessageByString(lpBox.hwnd, LB_FINDSTRINGEXACT, nPos1 + 1, sText)
                If nPos2 = -1 Or nPos2 = nPos1 Then Exit Do
                lpBox.RemoveItem nPos2
            Loop
        Next nCount
        dupeKill = nDelete - lpBox.ListCount
End Function

Public Function randomMobileUserAgent()

    On Error Resume Next

    Dim RandomNumber As Integer

    mobileUserAgents(1) = "Mozilla/5.0 (Linux; U; Android 2.2.1; en-us; MB525 Build/3.4.2-107_JDN-9) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"
    mobileUserAgents(2) = "Mozilla/5.0 (Linux; U; Android 2.1-update1-1.0.19; en-us; NXM736 Build/ECLAIR) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.1"
    mobileUserAgents(3) = "Mozilla/5.0 (Linux; U; Android 2.2; de-de; U0101HA Build/FRF85B) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"
    mobileUserAgents(4) = "Mozilla/5.0 (Linux; U; Android 2.2.1; de-de; SP-60 Build/MASTER) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"
    mobileUserAgents(5) = "Mozilla/5.0 (Linux; U; Android 2.1-2010.11.4; de-de; XST2 Build/ECLAIR) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17"
    mobileUserAgents(6) = "Mozilla/5.0 (Linux; U; Android 1.0.3; de-de; A80KSC Build/ECLAIR) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17"
    mobileUserAgents(7) = "Mozilla/5.0 (Linux; U; Android 2.2.1; en-au; eeepc Build/MASTER) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"
    mobileUserAgents(8) = "Mozilla/5.0 (Linux; U; Android 1.6; en-us; xpndr_ihome Build/DRD35) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"
    mobileUserAgents(9) = "Mozilla/5.0 (Linux; U; Android 2.2.1; fr-ch; A43 Build/FROYO) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"
    mobileUserAgents(10) = "Mozilla/5.0 (Linux; U; Android 2.2.1; de-de; X2 Build/FRG83) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"
    mobileUserAgents(11) = "Mozilla/5.0 (iPhone; CPU iPhone OS 5_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9B176 Safari/7534.48.3"
    mobileUserAgents(12) = "Mozilla/5.0 (iPhone; CPU iPhone OS 5_0_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A405 Safari/7534.48.3"
    mobileUserAgents(13) = "Mozilla/5.0 (iPhone; CPU iPhone OS 5_0_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A405 Safari/7534.48.3"
    mobileUserAgents(14) = "Mozilla/5.0 (iPod; U; CPU iPhone OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5"
    mobileUserAgents(15) = "Mozilla/5.0 (iPad; U; CPU OS 4_3 like Mac OS X; de-de) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8F191 Safari/6533.18.5"
    mobileUserAgents(16) = "Mozilla/5.0 (iPad; U; CPU OS 4_3_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8G4 Safari/6533.18.5"
    mobileUserAgents(17) = "Mozilla/5.0 (iPad; U; CPU OS 4_2_1 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8C148 Safari/6533.18.5"
    mobileUserAgents(18) = "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"
    mobileUserAgents(19) = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_1_2 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7D11 Safari/528.16"
    mobileUserAgents(20) = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    RandomNumber = RandomNum(1, 20)

    randomMobileUserAgent = mobileUserAgents(RandomNumber)

End Function
