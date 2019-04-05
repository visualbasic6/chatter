Attribute VB_Name = "fileCheck"
Option Explicit
 
Public Const MAX_PATH                   As Long = 260
Private Const ERROR_NO_MORE_FILES       As Long = 18&
Private Const FILE_ATTRIBUTE_NORMAL     As Long = &H80
 
Private Type FILETIME
    dwLowDateTime   As Long
    dwHighDateTime  As Long
End Type
 
Private Type WIN32_FIND_DATA
    dwFileAttributes    As Long
    ftCreationTime      As FILETIME
    ftLastAccessTime    As FILETIME
    ftLastWriteTime     As FILETIME
    nFileSizeHigh       As Long
    nFileSizeLow        As Long
    dwReserved0         As Long
    dwReserved1         As Long
    cFileName           As String * MAX_PATH
    cAlternate          As String * 14
End Type
 
Private Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" ( _
                ByVal lpFileName As String, _
                lpFindFileData As WIN32_FIND_DATA) As Long
Private Declare Function FindClose Lib "kernel32" ( _
                ByVal hFindFile As Long) As Long
Private Declare Function FindNextFile Lib "kernel32" Alias "FindNextFileA" ( _
                ByVal hFindFile As Long, _
                lpFindFileData As WIN32_FIND_DATA) As Long
 
Public Function FileExists(ByVal sFile As String) As Boolean
    Dim lpFindFileData  As WIN32_FIND_DATA
    Dim lFileHandle     As Long
    Dim lRet            As Long
    Dim sTemp           As String
    Dim sFileExtension  As String
    Dim sFileName       As String
    Dim sFileData()     As String
    Dim sFileToCompare  As String
    
    If IsDirectory(sFile) = True Then
        sFile = AddSlash(sFile) & "*.*"
    End If
    
    If InStr(sFile, ".") > 0 Then
        sFileToCompare = GetFileTitle(sFile)
        sFileData = Split(sFileToCompare, ".")
        sFileName = sFileData(0)
        sFileExtension = sFileData(1)
    Else
        Exit Function
    End If
    
    ' get a file handle
    lFileHandle = FindFirstFile(sFile, lpFindFileData)
    If lFileHandle <> -1 Then
        If sFileName = "*" Or sFileExtension = "*" Then
            FileExists = True
        Else
            Do Until lRet = ERROR_NO_MORE_FILES
                ' if it is a file
                If (lpFindFileData.dwFileAttributes And FILE_ATTRIBUTE_NORMAL) = vbNormal Then
                    sTemp = StrConv(RemoveNull(lpFindFileData.cFileName), vbProperCase)
                    
                    'remove LCase$ if you want the search to be case sensitive
                    If LCase$(sTemp) = LCase$(sFileToCompare) Then
                        FileExists = True ' file found
                        Exit Do
                    End If
                End If
                'based on the file handle iterate through all files and dirs
                lRet = FindNextFile(lFileHandle, lpFindFileData)
                If lRet = 0 Then Exit Do
            Loop
        End If
    End If
    
    ' close the file handle
    lRet = FindClose(lFileHandle)
End Function
 
Private Function IsDirectory(ByVal sFile As String) As Boolean
    On Error Resume Next
    IsDirectory = ((GetAttr(sFile) And vbDirectory) = vbDirectory)
End Function
 
Private Function RemoveNull(ByVal strString As String) As String
    Dim intZeroPos As Integer
 
    intZeroPos = InStr(strString, Chr$(0))
    If intZeroPos > 0 Then
        RemoveNull = Left$(strString, intZeroPos - 1)
    Else
        RemoveNull = strString
    End If
End Function
 
Public Function GetFileTitle(ByVal sFileName As String) As String
    GetFileTitle = Right$(sFileName, Len(sFileName) - InStrRev(sFileName, "\"))
End Function
 
Public Function AddSlash(ByVal strDirectory As String) As String
    If InStrRev(strDirectory, "\") <> Len(strDirectory) Then
        strDirectory = strDirectory + "\"
    End If
    AddSlash = strDirectory
End Function

'http://www.vbforums.com/showthread.php?349990-Classic-VB-How-can-I-check-if-a-file-exists&p=3402403&viewfull=1#post3402403
