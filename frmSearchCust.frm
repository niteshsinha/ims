VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmSearchCust 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Search Customer"
   ClientHeight    =   5520
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   4815
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   5520
   ScaleWidth      =   4815
   Begin VB.Frame Frame1 
      Height          =   5295
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4575
      Begin VB.CommandButton cmdSearch 
         Caption         =   "Search"
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
         Left            =   2520
         TabIndex        =   2
         Top             =   960
         Width           =   1815
      End
      Begin VB.TextBox txtCustName 
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
         Height          =   495
         Left            =   2280
         TabIndex        =   1
         Top             =   240
         Width           =   2055
      End
      Begin MSComctlLib.ListView ListView1 
         Height          =   3255
         Left            =   240
         TabIndex        =   3
         Top             =   1680
         Width           =   4095
         _ExtentX        =   7223
         _ExtentY        =   5741
         View            =   3
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   1
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Customer ID"
            Object.Width           =   3246
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Customer Name"
            Object.Width           =   3776
         EndProperty
      End
      Begin VB.Label Label2 
         Caption         =   "* Double Click to select the Customer Details"
         Height          =   255
         Left            =   360
         TabIndex        =   5
         Top             =   4920
         Width           =   3495
      End
      Begin VB.Label Label1 
         Caption         =   "Customer Name"
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
         Left            =   240
         TabIndex        =   4
         Top             =   360
         Width           =   1455
      End
   End
End
Attribute VB_Name = "frmSearchCust"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As Recordset
Dim strsql As String

Private Sub Display(sql As String)
rs.Open sql, cn
Dim lst As ListItem
ListView1.ListItems.Clear
Do While Not rs.EOF
 Set lst = ListView1.ListItems.Add(, , rs(0))
 lst.SubItems(1) = rs(1) & " " & rs(2)
 rs.MoveNext
Loop
rs.Close
End Sub

Private Sub cmdSearch_Click()
strsql = "Select Cus_Id, Cus_FirstName,Cus_LastName from tblCustomer where Cus_FirstName like '" & txtCustName.Text & "%'"
Set rs = New Recordset
Display (strsql)
End Sub

Private Sub Form_Load()
Call cmdSearch_Click
End Sub

Private Sub ListView1_DblClick()
frmSales.txtCustId.Text = ListView1.SelectedItem.Text
Dim fn As String
fn = ListView1.SelectedItem.SubItems(1)
frmSales.txtCustName.Text = fn
Unload Me
frmSales.Show
End Sub

