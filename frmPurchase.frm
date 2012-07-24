VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmPurchase 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Purchase"
   ClientHeight    =   8685
   ClientLeft      =   45
   ClientTop       =   405
   ClientWidth     =   13620
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   24
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   8685
   ScaleWidth      =   13620
   Begin VB.Frame Frame6 
      BorderStyle     =   0  'None
      Height          =   1815
      Left            =   0
      TabIndex        =   36
      Top             =   8520
      Width           =   2175
   End
   Begin VB.Frame Frame5 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   4200
      TabIndex        =   31
      Top             =   7560
      Width           =   9255
      Begin VB.Label Label14 
         Caption         =   "Grand Total"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5040
         TabIndex        =   33
         Top             =   360
         Width           =   1935
      End
      Begin VB.Label lblGrTotal 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         Caption         =   "0"
         ForeColor       =   &H000000C0&
         Height          =   615
         Left            =   7080
         TabIndex        =   32
         Top             =   240
         Width           =   2055
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Cart"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2775
      Left            =   4200
      TabIndex        =   29
      Top             =   4680
      Width           =   9255
      Begin MSComctlLib.ListView ListView1 
         Height          =   2055
         Left            =   120
         TabIndex        =   30
         Top             =   360
         Width           =   9015
         _ExtentX        =   15901
         _ExtentY        =   3625
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
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   6
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Product ID"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Product Name"
            Object.Width           =   2893
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Cost Price (Rs)"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Ouantity"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Supplier Name"
            Object.Width           =   2628
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Total Cost (Rs)"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label Label13 
         Alignment       =   2  'Center
         Caption         =   "* Double click a Cart Entry To make changes to it."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   34
         Top             =   2400
         Width           =   3735
      End
   End
   Begin VB.Frame Frame3 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4200
      TabIndex        =   26
      Top             =   3960
      Width           =   9255
      Begin VB.CommandButton cmdDelPrd 
         Caption         =   "Delete Cart Item"
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
         Left            =   5280
         TabIndex        =   28
         Top             =   240
         Width           =   1935
      End
      Begin VB.CommandButton cmdAddPrd 
         Caption         =   "Add to Cart"
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
         Left            =   2280
         TabIndex        =   27
         Top             =   240
         Width           =   1935
      End
   End
   Begin VB.Frame Frame2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3855
      Left            =   4200
      TabIndex        =   7
      Top             =   0
      Width           =   9255
      Begin VB.TextBox txtSupName 
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
         Left            =   6600
         TabIndex        =   25
         Top             =   3120
         Width           =   2415
      End
      Begin VB.TextBox txtSupId 
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
         Left            =   6600
         TabIndex        =   24
         Top             =   2520
         Width           =   2415
      End
      Begin VB.CommandButton cmdFindSup 
         Caption         =   "Find Supplier"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   5040
         TabIndex        =   21
         Top             =   1620
         Width           =   975
      End
      Begin VB.TextBox txtQuantity 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   675
         Left            =   6960
         TabIndex        =   19
         Top             =   360
         Width           =   1335
      End
      Begin VB.CommandButton cmdFindPrd 
         Caption         =   "Find Product"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   360
         TabIndex        =   18
         Top             =   360
         Width           =   975
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
         Height          =   495
         Left            =   1800
         TabIndex        =   17
         Top             =   3120
         Width           =   2655
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
         Height          =   495
         Left            =   1800
         TabIndex        =   16
         Top             =   2520
         Width           =   2655
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
         Height          =   495
         Left            =   1800
         TabIndex        =   15
         Top             =   1920
         Width           =   2655
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
         Height          =   495
         Left            =   1800
         TabIndex        =   14
         Top             =   1320
         Width           =   2655
      End
      Begin VB.Label Label12 
         Caption         =   "Supplier Name"
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
         Left            =   5040
         TabIndex        =   23
         Top             =   3240
         Width           =   1455
      End
      Begin VB.Label Label11 
         Caption         =   "Click the Find Suplier button to Search for the Supplier"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   6600
         TabIndex        =   22
         Top             =   1800
         Width           =   2295
      End
      Begin VB.Shape Shape3 
         Height          =   2295
         Left            =   4920
         Top             =   1440
         Width           =   4215
      End
      Begin VB.Label Label10 
         Caption         =   "Click the Find Product button to Search for the Product"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1800
         TabIndex        =   20
         Top             =   600
         Width           =   2655
      End
      Begin VB.Shape Shape2 
         Height          =   975
         Left            =   4920
         Top             =   240
         Width           =   4215
      End
      Begin VB.Shape Shape1 
         Height          =   3495
         Left            =   120
         Top             =   240
         Width           =   4575
      End
      Begin VB.Label Label9 
         Caption         =   "Supplier Id"
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
         Left            =   5040
         TabIndex        =   13
         Top             =   2640
         Width           =   975
      End
      Begin VB.Label Label8 
         Caption         =   "Cost Price (Rs)"
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
         Top             =   3240
         Width           =   1335
      End
      Begin VB.Label Label7 
         Caption         =   "Quantity"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   5640
         TabIndex        =   11
         Top             =   570
         Width           =   1095
      End
      Begin VB.Label Label6 
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
         Top             =   2640
         Width           =   1335
      End
      Begin VB.Label Label5 
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
         Top             =   2040
         Width           =   1215
      End
      Begin VB.Label Label4 
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
         Top             =   1440
         Width           =   975
      End
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   8535
      Left            =   960
      TabIndex        =   0
      Top             =   0
      Width           =   3015
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   495
         Left            =   240
         TabIndex        =   37
         Top             =   3840
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   873
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         CustomFormat    =   "MM-dd-yyyy"
         Format          =   16449539
         CurrentDate     =   39910
      End
      Begin VB.CommandButton cmdFinalPur 
         BackColor       =   &H00FFFFFF&
         Caption         =   "Final Purchase"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Left            =   360
         MaskColor       =   &H8000000E&
         Style           =   1  'Graphical
         TabIndex        =   35
         Top             =   7800
         UseMaskColor    =   -1  'True
         Width           =   2175
      End
      Begin VB.TextBox txtPurDate 
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
         Left            =   240
         TabIndex        =   6
         Top             =   3840
         Width           =   2175
      End
      Begin VB.TextBox txtWorId 
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
         Left            =   240
         TabIndex        =   5
         Top             =   2310
         Width           =   2175
      End
      Begin VB.TextBox txtPurId 
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
         Left            =   240
         TabIndex        =   4
         Top             =   765
         Width           =   2175
      End
      Begin VB.Line Line3 
         BorderColor     =   &H80000000&
         X1              =   0
         X2              =   3000
         Y1              =   4680
         Y2              =   4680
      End
      Begin VB.Line Line2 
         BorderColor     =   &H80000000&
         X1              =   0
         X2              =   3000
         Y1              =   3120
         Y2              =   3120
      End
      Begin VB.Line Line1 
         BorderColor     =   &H80000000&
         X1              =   0
         X2              =   3000
         Y1              =   1560
         Y2              =   1560
      End
      Begin VB.Label Label3 
         Caption         =   "Purchase Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   3435
         Width           =   1575
      End
      Begin VB.Label Label2 
         Caption         =   "Worker ID"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   1890
         Width           =   1095
      End
      Begin VB.Label Label1 
         Caption         =   "Purchase ID"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Width           =   1455
      End
   End
   Begin VB.Image Image1 
      Height          =   9330
      Left            =   120
      Picture         =   "frmPurchase.frx":0000
      Top             =   120
      Width           =   720
   End
End
Attribute VB_Name = "frmPurchase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ch As Boolean
Dim tc As Double
Dim sum As Double
Dim maxpurid As Integer
Dim i As Integer
Dim s As String

Private Sub GenReport()
Dim rs As New ADODB.Recordset
strsql = "Select max(Pur_ID) as maxpurid, Wor_Id,Pur_Date,Pur_Total,Prd_Id,Prd_Name,Prd_CostPrice,Prd_Qty from tblPurchaseMain a, tblPurchaseSub b,tblProduct c where c.Prd_Id=b.Prd_Id and a.Pur_Id=b.Pur_Id and a.Pur_Id=(Select max(Pur_ID) from tblPurchaseMain)"
rs.Open strsql, cn
Set DataReport1.DataSource = rs
DataReport1.Show
End Sub

Private Sub FinalPur(a As Integer)
strsql = "insert into tblPurchaseSub values(" & ListView1.ListItems(a).Text & "," & txtPurId.Text & "," & ListView1.ListItems(a).SubItems(3) & "," & ListView1.ListItems(a).SubItems(2) & "," & txtSupId.Text & ")"
cn.Execute strsql
strsql = "update tblStock set Stock= Stock + " & ListView1.ListItems(a).SubItems(3) & " where Prd_Id= " & ListView1.ListItems(a).Text & ""
cn.Execute strsql
End Sub

Private Sub cmdAddPrd_Click()
If txtPrdId.Text = "" Then
 ch = False
 MsgBox "Please Find  a Product first", vbOKOnly + vbExclamation, "Invalid Entry"
ElseIf txtSupId.Text = "" Then
 ch = False
 MsgBox "Please Find  a Supplier first", vbOKOnly + vbExclamation, "Invalid Entry"
ElseIf txtQuantity.Text = "" Then
 ch = False
 MsgBox "Please Enter Quantity", vbOKOnly + vbExclamation, "Invalid Entry"
ElseIf Not IsNumeric(txtQuantity) Then
 ch = False
 MsgBox "Please Enter Numeric value of Quantity", vbOKOnly + vbExclamation, "Invalid Entry"
Else
 ch = True
End If
If ch = True Then
 Dim lst As ListItem
 Set lst = ListView1.ListItems.Add(, , txtPrdId.Text)
 lst.SubItems(1) = txtPrdName.Text
 lst.SubItems(2) = txtCostPrice.Text
 lst.SubItems(3) = txtQuantity.Text
 lst.SubItems(4) = txtSupName.Text
 tc = Val(txtCostPrice.Text) * Val(txtQuantity.Text)
 lst.SubItems(5) = tc
 txtPrdId.Text = ""
 txtPrdType.Text = ""
 txtPrdName = ""
 txtCostPrice.Text = ""
 txtQuantity.Text = ""
 sum = sum + tc
 lblGrTotal.Caption = sum
End If
End Sub

Private Sub cmdDelPrd_Click()
If lblGrTotal.Caption = 0 Then
 MsgBox "Please add items to Cart", vbOKOnly + vbExclamation, "Invalid Entry"
Else
 sum = sum - ListView1.SelectedItem.SubItems(5)
 ListView1.ListItems.Remove (ListView1.SelectedItem.Index)
 lblGrTotal.Caption = sum
End If
End Sub

Private Sub cmdFinalPur_Click()
If lblGrTotal.Caption = 0 Then
 MsgBox "Please add items to Cart", vbOKOnly + vbExclamation, "Invalid Entry"
Else
 strsql = "insert into tblPurchaseMain values(" & txtPurId.Text & "," & txtWorId.Text & "," & CDate(Format(DTPicker1.Value, "MM/dd/yyyy")) & "," & lblGrTotal.Caption & ")"
 cn.Execute strsql
 For i = 1 To ListView1.ListItems.Count
  Call FinalPur(i)
 Next
 MsgBox "Final Purchase Successfully completed", vbOK + vbInformation, "IMS"
 RptPurchase.Show
 Unload Me
End If
End Sub

Private Sub cmdFindPrd_Click()
frmSearchPrd.Show
End Sub

Private Sub cmdFindSup_Click()
frmSearchSup.Show
End Sub

Private Sub Form_Load()
DTPicker1.Value = Format(Now, "MM-dd-yyyy")
DTPicker1.Enabled = False
maxpurid = GetMaxId("Pur_Id", "tblPurchaseMain", 2001, 1)
txtPurId = maxpurid
txtWorId.Text = logUserId
Call disabletextbox(txtCostPrice)
Call disabletextbox(txtPrdId)
Call disabletextbox(txtPrdName)
Call disabletextbox(txtPurDate)
Call disabletextbox(txtPrdType)
Call disabletextbox(txtPurId)
Call disabletextbox(txtSupId)
Call disabletextbox(txtSupName)
Call disabletextbox(txtWorId)
tc = 0
sum = 0
End Sub

