Attribute VB_Name = "MyModule"
Public cn As Connection
Public USERTYPE As String
Public rsMAX As Recordset
Public UTYPE As String
Public logUserId As String

Sub main()
Set cn = New Connection
Dim dbPath As String
dbPath = App.Path & "\IMSdb.mdb"
cn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & dbPath & ";Persist Security Info=False"
frmLogin.Show
End Sub

Public Sub disabletextbox(txt As TextBox)
txt.Enabled = False
End Sub

Public Sub selText(txt As TextBox)
txt.SelStart = 0
txt.SelLength = Len(txt.Text)
txt.SetFocus
End Sub

Public Sub ClearText(txt As TextBox)
txt.Text = ""
End Sub

Public Sub CheckTB(txt As TextBox)
If txt.Text = "" Then
MsgBox "Please Enter a value", vbOKOnly + vbExclamation, "No Value Specified"
End If
End Sub

Public Function GetMaxId(idField As String, TableName As String, InitVal As Integer, Diff As Integer) As Integer
'cn.Execute "insert into tblWorker values('" & txtFName.Text & "','" & txtLName.Text & "','" & txtAdd.Text & "','" & txtContactNo.Text & ",'" & txtDOJ.Text & "')"
Dim strsql As String
Dim mId As Integer
Dim tid As Integer
Set rsMAX = New Recordset
strsql = "Select Max(" & idField & " )as id  from   " & TableName & ""
rsMAX.Open strsql, cn, adOpenStatic, adLockOptimistic, adCmdText
If Not rsMAX.EOF Then
 tid = rsMAX(0)
End If
rsMAX.Close
If tid = 0 Then
 mId = InitVal
Else
 mId = tid + Diff
End If
GetMaxId = mId
End Function
