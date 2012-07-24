VERSION 5.00
Begin VB.Form frmNewProdEntry 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Enter New Product Details"
   ClientHeight    =   6900
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   10875
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   6900
   ScaleWidth      =   10875
   Begin VB.Frame Frame2 
      Height          =   735
      Left            =   3240
      TabIndex        =   14
      Top             =   5760
      Width           =   7455
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
         Height          =   375
         Left            =   3960
         TabIndex        =   16
         Top             =   240
         Width           =   1815
      End
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
         Height          =   375
         Left            =   1440
         TabIndex        =   15
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Frame Frame1 
      Height          =   5295
      Left            =   3240
      TabIndex        =   0
      Top             =   120
      Width           =   7455
      Begin VB.ComboBox comPrdType 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   2400
         TabIndex        =   7
         Top             =   967
         Width           =   2055
      End
      Begin VB.TextBox txtPrdId 
         BackColor       =   &H00FFFFFF&
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
         Left            =   2400
         TabIndex        =   6
         Top             =   360
         Width           =   2055
      End
      Begin VB.TextBox txtCostPrice 
         BackColor       =   &H00FFFFFF&
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
         Left            =   2400
         TabIndex        =   5
         Top             =   4560
         Width           =   2055
      End
      Begin VB.TextBox txtSellPrice 
         BackColor       =   &H00FFFFFF&
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
         Left            =   2400
         TabIndex        =   4
         Top             =   3960
         Width           =   2055
      End
      Begin VB.TextBox txtPrdDecs 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1575
         Left            =   2400
         MultiLine       =   -1  'True
         TabIndex        =   3
         Top             =   2160
         Width           =   4695
      End
      Begin VB.TextBox txtPrdName 
         BackColor       =   &H00FFFFFF&
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
         Left            =   2400
         TabIndex        =   2
         Top             =   1560
         Width           =   2055
      End
      Begin VB.TextBox txtPrdType 
         BackColor       =   &H00FFFFFF&
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
         Left            =   4800
         TabIndex        =   1
         Top             =   960
         Width           =   2055
      End
      Begin VB.Label Label6 
         Caption         =   "Selling Price"
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
         Left            =   360
         TabIndex        =   13
         Top             =   4020
         Width           =   1215
      End
      Begin VB.Label Label5 
         Caption         =   "Cost Price"
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
         Left            =   360
         TabIndex        =   12
         Top             =   4620
         Width           =   1095
      End
      Begin VB.Label Label4 
         Caption         =   "Product Description"
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
         Left            =   360
         TabIndex        =   11
         Top             =   2820
         Width           =   1815
      End
      Begin VB.Label Label3 
         Caption         =   "Product Name"
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
         Left            =   360
         TabIndex        =   10
         Top             =   1620
         Width           =   1335
      End
      Begin VB.Label Label2 
         Caption         =   "Product Type"
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
         Left            =   360
         TabIndex        =   9
         Top             =   1020
         Width           =   1215
      End
      Begin VB.Label Label1 
         Caption         =   "Product ID"
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
         Left            =   360
         TabIndex        =   8
         Top             =   420
         Width           =   975
      End
   End
   Begin VB.Image Image1 
      Height          =   6615
      Left            =   120
      Picture         =   "frmNewProdEntry.frx":0000
      Top             =   120
      Width           =   2970
   End
End
Attribute VB_Name = "frmNewProdEntry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As Recordset
Dim comboval As String
Dim maxid As Integer

Private Sub fillcombo()
Set rs = New Recordset
rs.Open "select * from [tblProductType]", cn, adOpenStatic, adLockOptimistic, adCmdText
Do While Not rs.EOF
 comPrdType.AddItem rs(0)
 rs.MoveNext
Loop
comPrdType.AddItem "Any Other"
End Sub

Private Sub cmdReset_Click()
Call ClearText(txtCostPrice)
Call ClearText(txtPrdDecs)
Call ClearText(txtPrdName)
Call ClearText(txtSellPrice)
comPrdType.Clear
fillcombo
txtPrdName.SetFocus
End Sub

Private Sub cmdSubmit_Click()
On Error GoTo myErr
If txtPrdName.Text = "" Then
 MsgBox "Please Enter Product Name", vbOKOnly + vbExclamation, "Invalid Entry"
 txtPrdName.SetFocus
 Exit Sub
ElseIf txtPrdDecs.Text = "" Then
 MsgBox "Please Enter Product Description", vbOKOnly + vbExclamation, "Invalid Entry"
 txtPrdDecs.SetFocus
 Exit Sub
ElseIf txtCostPrice.Text = "" Then
 MsgBox "Please Enter Cost Price", vbOKOnly + vbExclamation, "Invalid Entry"
 txtCostPrice.SetFocus
 Exit Sub
ElseIf txtSellPrice.Text = "" Then
 MsgBox "Please Enter Selling Price", vbOKOnly + vbExclamation, "Invalid Entry"
 txtSellPrice.SetFocus
 Exit Sub
ElseIf Not IsNumeric(txtCostPrice.Text) Then
 MsgBox "Please Enter Numeric Value of Cost Price", vbOKOnly + vbExclamation, "Invalid Entry"
 txtCostPrice.Text = ""
 txtCostPrice.SetFocus
ElseIf Not IsNumeric(txtSellPrice.Text) Then
 MsgBox "Please Enter Numeric Value of Selling Price", vbOKOnly + vbExclamation, "Invalid Entry"
 txtSellPrice.Text = ""
 txtSellPrice.SetFocus
 Exit Sub
End If
If comPrdType.Text = "Any Other" Then
 comboval = txtPrdType.Text
 cn.Execute "insert into tblProductType values ('" & comboval & "')"
End If
cn.Execute "insert into tblProduct values(" & maxid & ",'" & comboval & "','" & txtPrdName.Text & "','" & txtPrdDecs.Text & "'," & txtSellPrice.Text & "," & txtCostPrice & ")"
cn.Execute "insert into tblStock values (" & maxid & ",0)"
MsgBox "Record Successfully Entered..", vbOKOnly + vbInformation, "Record Entered"
Unload Me
Call cmdReset_Click
Exit Sub
myErr:
 MsgBox Err.Description
End Sub

Private Sub comPrdType_Click()
If comPrdType.Text = "Any Other" Then
 txtPrdType.Visible = True
Else
 comboval = comPrdType.Text
 txtPrdType.Visible = False
End If
End Sub

Private Sub Form_Load()
fillcombo
txtPrdType.Visible = False
maxid = GetMaxId("Prd_id", "tblProduct", 1, 1)
txtPrdId.Text = maxid
txtPrdId.Enabled = False
End Sub
