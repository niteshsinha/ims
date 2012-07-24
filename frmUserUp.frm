VERSION 5.00
Begin VB.Form frmUserUp 
   Caption         =   "Update User Information"
   ClientHeight    =   7455
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   6555
   LinkTopic       =   "Form1"
   ScaleHeight     =   7455
   ScaleWidth      =   6555
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Height          =   7215
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6255
      Begin VB.TextBox txtDOJ 
         Height          =   405
         Left            =   2880
         TabIndex        =   9
         Top             =   5760
         Width           =   2535
      End
      Begin VB.TextBox txtContactNo 
         Height          =   405
         Left            =   2880
         TabIndex        =   8
         Top             =   4440
         Width           =   2535
      End
      Begin VB.TextBox txtAdd 
         Height          =   645
         Left            =   2880
         MultiLine       =   -1  'True
         TabIndex        =   7
         Top             =   3360
         Width           =   2535
      End
      Begin VB.TextBox txtLName 
         Height          =   405
         Left            =   2880
         TabIndex        =   6
         Top             =   2640
         Width           =   2535
      End
      Begin VB.TextBox txtFName 
         BackColor       =   &H8000000F&
         Height          =   405
         Left            =   2880
         TabIndex        =   5
         Top             =   1920
         Width           =   2535
      End
      Begin VB.TextBox txtPass 
         Height          =   405
         IMEMode         =   3  'DISABLE
         Left            =   2880
         PasswordChar    =   "*"
         TabIndex        =   4
         Top             =   1080
         Width           =   2535
      End
      Begin VB.TextBox txtUserId 
         Height          =   405
         Left            =   2880
         TabIndex        =   3
         Top             =   360
         Width           =   2535
      End
      Begin VB.CommandButton cmdSubmit 
         Caption         =   "Submit"
         Height          =   375
         Left            =   960
         TabIndex        =   2
         Top             =   6480
         Width           =   1335
      End
      Begin VB.CommandButton cmdReset 
         Caption         =   "Reset"
         Height          =   375
         Left            =   2880
         TabIndex        =   1
         Top             =   6480
         Width           =   1455
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
         TabIndex        =   16
         Top             =   5835
         Width           =   1575
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
         TabIndex        =   15
         Top             =   4515
         Width           =   1575
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
         TabIndex        =   14
         Top             =   3555
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
         TabIndex        =   13
         Top             =   2715
         Width           =   1095
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
         TabIndex        =   12
         Top             =   1200
         Width           =   1095
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
         TabIndex        =   11
         Top             =   2040
         Width           =   1095
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
         TabIndex        =   10
         Top             =   360
         Width           =   855
      End
   End
End
Attribute VB_Name = "frmUserUp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
