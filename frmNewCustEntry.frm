VERSION 5.00
Begin VB.Form frmNewCustEntry 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Enter New Customer Details"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9150
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   9150
   Begin VB.Frame Frame2 
      Height          =   975
      Left            =   3120
      TabIndex        =   13
      Top             =   4800
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
         TabIndex        =   6
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
         TabIndex        =   7
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.Frame Frame1 
      Height          =   4455
      Left            =   3120
      TabIndex        =   0
      Top             =   120
      Width           =   5655
      Begin VB.TextBox txtContactNo 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   2280
         TabIndex        =   5
         Top             =   3840
         Width           =   2535
      End
      Begin VB.TextBox txtAdd 
         BackColor       =   &H00FFFFFF&
         Height          =   1485
         Left            =   2280
         MultiLine       =   -1  'True
         TabIndex        =   4
         Top             =   2160
         Width           =   3135
      End
      Begin VB.TextBox txtLName 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   2280
         TabIndex        =   3
         Top             =   1530
         Width           =   2535
      End
      Begin VB.TextBox txtCustId 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   2280
         TabIndex        =   1
         Top             =   300
         Width           =   2535
      End
      Begin VB.TextBox txtFName 
         BackColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   2280
         TabIndex        =   2
         Top             =   915
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
         TabIndex        =   12
         Top             =   990
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Customer ID"
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
         TabIndex        =   11
         Top             =   360
         Width           =   1095
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
         TabIndex        =   10
         Top             =   1605
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
         TabIndex        =   9
         Top             =   2760
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
         TabIndex        =   8
         Top             =   3915
         Width           =   1575
      End
   End
   Begin VB.Image Image1 
      Height          =   5430
      Left            =   120
      Picture         =   "frmNewCustEntry.frx":0000
      Top             =   240
      Width           =   2865
   End
End
Attribute VB_Name = "frmNewCustEntry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As Recordset
Dim maxid As Integer
Dim dt As Date
Dim strsql As String

Private Sub cmdReset_Click()
txtAdd.Text = ""
txtContactNo = ""
txtFName = ""
txtLName = ""
txtFName.SetFocus
End Sub

Private Sub cmdSubmit_Click()
On Error GoTo myErr
If txtFName.Text = "" Then
 MsgBox "Please Enter First Name"
 txtFName.SetFocus
 Exit Sub
ElseIf txtLName.Text = "" Then
 MsgBox "Please Enter Last Name"
 txtLName.SetFocus
 Exit Sub
ElseIf txtAdd.Text = "" Then
 MsgBox "Please Enter Address"
 txtAdd.SetFocus
 Exit Sub
ElseIf Not IsNumeric(txtContactNo.Text) Then
 MsgBox "Please Enter Numeric Value in Contact Number"
 txtContactNo.Text = ""
 txtContactNo.SetFocus
 Exit Sub
End If
cn.Execute "insert into tblCustomer values(" & maxid & " ,'" & txtFName.Text & "','" & txtLName.Text & "','" & txtAdd.Text & "'," & txtContactNo.Text & ")"
MsgBox "Record Successfully Entered..", vbOKOnly + vbInformation, "Record Entered"
Unload Me
Call ClearText(txtAdd)
Call ClearText(txtContactNo)
Call ClearText(txtFName)
Call ClearText(txtLName)
Exit Sub
myErr:
 MsgBox Err.Description
End Sub

Private Sub Form_Load()
maxid = GetMaxId("Cus_Id", "tblCustomer", 10001, 1)
txtCustId.Text = maxid
txtCustId.Enabled = False
End Sub
