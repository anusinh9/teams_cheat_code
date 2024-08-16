Dim objShell, lngMinutes, boolValid 
Set objShell = CreateObject("WScript.Shell") 
lngMinutes = InputBox("Anubhav! How long you want me to remind you of water?" & Replace(Space(5), " ", vbNewLine) & "Enter minutes:", "Awake Duration") 'we are replacing 5 spaces with new lines 
If lngMinutes = vbEmpty Then 'If the user opts to cancel the process 
'Do nothing 
Else 
On Error Resume Next 
Err.Clear 
boolValid = False 
lngMinutes = CLng(lngMinutes) 
If Err.Number = 0 Then 'input is numeric 
If lngMinutes > 0 Then 'input is greater than zero 
For i = 1 To lngMinutes 
WScript.Sleep 60000 '60 seconds 
objShell.SendKeys "{SCROLLLOCK 2}" 
Next 
boolValid = True 
MsgBox "Drink More Water & Take a walk.", vbOKOnly+vbInformation, "Reminder !!" 
End If 
End If 
On Error Goto 0 
If boolValid = False Then 
MsgBox "Incorrect input, script won't run" & vbNewLine & "You can only enter a numeric value greater than zero", vbOKOnly+vbCritical, "Task Failed" 
End If 
End If 
Set objShell = Nothing 
Wscript.Quit 0 