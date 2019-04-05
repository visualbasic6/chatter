Attribute VB_Name = "LoadSave"
'Read data to a list.box form an ASCII file
'paste this in a module


Public Function LoadListFromFile(ByRef SourceFile As String, _
     ByRef ToFormList As ListBox)
On Error GoTo ErrEvt
Dim TextLine As String, FN As Integer

On Error Resume Next

'ToFormList.Clear

FN = FreeFile
 Open SourceFile For Input As #FN ' Open file.
   Do While Not EOF(FN) ' Loop until end of file.
   Line Input #FN, TextLine ' Read line into variable.
   If TextLine <> LineToRem Then
    ToFormList.AddItem (TextLine)
   End If
Loop
Close #FN ' Close file.

Exit Function 'this error handler will skip the nasty problem
'if your text file isnt conformed with an extra linebreak at the end
'to avoid saying INPUT PAST EOF
ErrEvt:
Select Case Err.Number
   Case 51
      Err.Clear ' just bail out from this
   Case Else ' do nothing
End Select
Resume Next
End Function


'============================================

'Outputting list boxes to text files
'Call with blnClearList=true to clear the listbox afterwards

Public Function SaveListToFile(ByVal strPrintToFile As String, _
   ByRef lstFormList As ListBox, Optional ByVal blnClearList As Boolean = False)

On Error Resume Next

Dim I As Long 'longs are quicker than Integers so I normally use those
Dim FN As Integer

FN = FreeFile
 'print each line in the list to a new text file

  Open strPrintToFile For Output As #FN

'Add all Items to the opened file
   For I = 0 To lstFormList.ListCount - 1
      Print #FN, lstFormList.List(I)
   Next I

  Close #FN 'thats it... your file is updated

  'clear the listbox?
  If blnClearList = True Then lstFormList.Clear
End Function

'============================================


