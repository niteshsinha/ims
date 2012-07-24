VERSION 5.00
Begin VB.Form frmNewUrReg 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "New User Registration"
   ClientHeight    =   7005
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   9165
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   7005
   ScaleWidth      =   9165
   Begin VB.Frame Frame2 
      Height          =   975
      Left            =   3360
      TabIndex        =   20
      Top             =   5880
      Width           =   5655
      Begin VB.CommandButton cmdSubmit 
         Caption         =   "Submit"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   960
         TabIndex        =   9
         Top             =   240
         Width           =   1335
      End
      Begin VB.CommandButton cmdReset 
         Caption         =   "Reset"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3240
         TabIndex        =   10
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      Height          =   5655
      Left            =   3360
      TabIndex        =   0
      Top             =   120
      Width           =   5655
      Begin VB.TextBox txtFName 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   2880
         TabIndex        =   2
         Top             =   1629
         Width           =   2535
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Female"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4320
         TabIndex        =   7
         Top             =   4272
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Male"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2880
         TabIndex        =   6
         Top             =   4332
         Width           =   1095
      End
      Begin VB.TextBox txtUserId 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   2880
         TabIndex        =   11
         Top             =   300
         Width           =   2535
      End
      Begin VB.TextBox txtPass 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         IMEMode         =   3  'DISABLE
         Left            =   2880
         PasswordChar    =   "*"
         TabIndex        =   1
         Top             =   972
         Width           =   2535
      End
      Begin VB.TextBox txtLName 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   2880
         TabIndex        =   3
         Top             =   2286
         Width           =   2535
      End
      Begin VB.TextBox txtAdd 
         BackColor       =   &H00FFFFFF&
         Height          =   645
         Left            =   2880
         MultiLine       =   -1  'True
         TabIndex        =   4
         Top             =   2823
         Width           =   2535
      End
      Begin VB.TextBox txtContactNo 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   2880
         TabIndex        =   5
         Top             =   3600
         Width           =   2535
      End
      Begin VB.TextBox txtDOJ 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   2880
         TabIndex        =   8
         Top             =   4920
         Width           =   2535
      End
      Begin VB.Label Label2 
         Caption         =   "First Name"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   600
         TabIndex        =   19
         Top             =   1704
         Width           =   1095
      End
      Begin VB.Label Label8 
         Caption         =   "Date of Joining"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   600
         TabIndex        =   18
         Top             =   4995
         Width           =   1455
      End
      Begin VB.Label Label1 
         Caption         =   "User ID"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   600
         TabIndex        =   17
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   600
         TabIndex        =   16
         Top             =   1047
         Width           =   975
      End
      Begin VB.Label Label7 
         Caption         =   "Gender"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   720
         TabIndex        =   15
         Top             =   4320
         Width           =   735
      End
      Begin VB.Label Label4 
         Caption         =   "Last Name"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   600
         TabIndex        =   14
         Top             =   2361
         Width           =   1095
      End
      Begin VB.Label Label5 
         Caption         =   "Address"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   600
         TabIndex        =   13
         Top             =   3018
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "Contact Number"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   600
         TabIndex        =   12
         Top             =   3720
         Width           =   1575
      End
   End
   Begin VB.Image Image1 
      Height          =   6615
      Left            =   120
      Picture         =   "frmNewUrReg.frx":0000
      Top             =   240
      Width           =   2970
   End
End
Attribute VB_Name = "frmNewUrReg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As Recordset
Dim maxid As Integer
Dim dt As Date
Dim strsql As String

Private Sub cmdReset_Click()
Call ClearText(txtAdd)
Call ClearText(txtContactNo)
Call ClearText(txtFName)
Call ClearText(txtLName)
Call ClearText(txtPass)
txtPass.SetFocus
End Sub

Private Sub cmdSubmit_Click()
On Error GoTo myErr
If txtFName.Text = "" Then
 MsgBox "Please Enter First Name", vbOKOnly + vbExclamation, "Invalid Entry"
 txtFName.SetFocus
 Exit Sub
ElseIf txtLName.Text = "" Then
 MsgBox "Please Enter Last Name", vbOKOnly + vbExclamation, "Invalid Entry"
 txtLName.SetFocus
 Exit Sub
ElseIf txtAdd.Text = "" Then
 MsgBox "Please Enter Address", vbOKOnly + vbExclamation, "Invalid Entry"
 txtAdd.SetFocus
 Exit Sub
ElseIf txtPass.Text = "" Then
 MsgBox "Please Enter Password ", vbOKOnly + vbExclamation, "Invalid Entry"
 txtPass.SetFocus
 Exit Sub
ElseIf Not IsNumeric(txtContactNo.Text) Then
 MsgBox "Please Enter Numeric Value in Contact Number", vbOKOnly + vbExclamation, "Invalid Entry"
 txtContactNo.Text = ""
 txtContactNo.SetFocus
 Exit Sub
ElseIf Option1.Value = False And Option2.Value = False Then
 MsgBox "Please Select a Gender", vbOKOnly + vbExclamation, "Invalid Entry"
 Exit Sub
End If
Dim sex As String
If Option1.Value = True Then
 sex = "Male"
ElseIf Option2.Value = True Then
 sex = "Female"
End If
cn.Execute "insert into tblUserType values(" & maxid & ",'Worker','" & txtPass.Text & "')"
cn.Execute "insert into tblWorker values(" & maxid & " ,'" & txtFName.Text & "','" & txtLName.Text & "','" & txtAdd.Text & "'," & txtContactNo.Text & ",'" & sex & "', " & txtDOJ.Text & ")"
MsgBox "Record Successfully Entered..", vbOKOnly + vbInformation, "Record Entered"
Unload Me
Call ClearText(txtAdd)
Call ClearText(txtContactNo)
Call ClearText(txtDOJ)
Call ClearText(txtFName)
Call ClearText(txtLName)
Call ClearText(txtPass)
Exit Sub
myErr:
 MsgBox Err.Description
End Sub

Private Sub Form_Load()
txtDOJ.Text = Format(Now, "dd-MM-yy")
maxid = GetMaxId("UserId", "tblUserType", 101, 1)
txtUserId.Text = maxid
txtUserId.Enabled = False
txtDOJ.Enabled = False
End Sub
