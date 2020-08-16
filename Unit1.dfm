object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1052#1080#1082#1088#1086#1082#1083#1080#1084#1072#1090' '#1087#1086#1084#1077#1097#1077#1085#1080#1081
  ClientHeight = 883
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 117
    Top = 261
    Width = 87
    Height = 16
    Caption = #1054#1089#1074#1077#1097#1077#1085#1085#1086#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 533
    Top = 260
    Width = 64
    Height = 16
    Caption = #1042#1083#1072#1078#1085#1086#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel
    Left = 8
    Top = 8
    Width = 748
    Height = 18
    Caption = 
      #1055#1088#1086#1075#1088#1072#1084#1084#1085#1086'-'#1072#1087#1087#1072#1088#1072#1090#1085#1099#1081' '#1082#1086#1084#1087#1083#1077#1082#1089' '#1091#1076#1072#1083#1105#1085#1085#1086#1075#1086' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1086#1090#1076#1077#1083#1100#1085#1099#1093' '#1087#1072#1088 +
      #1072#1084#1077#1090#1088#1086#1074' '#1084#1080#1082#1088#1086#1082#1083#1080#1084#1072#1090#1072' '#1087#1086#1084#1077#1097#1077#1085#1080#1081'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label24: TLabel
    Left = 312
    Top = 32
    Width = 78
    Height = 18
    Caption = 'DATE TIME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label28: TLabel
    Left = 160
    Top = 238
    Width = 437
    Height = 16
    Caption = 
      #1040#1088#1076#1091#1080#1085#1086' '#1085#1077' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1086'! '#1044#1072#1085#1085#1099#1077' '#1085#1077' '#1086#1073#1085#1086#1074#1083#1103#1102#1090#1089#1103' '#1080' '#1085#1077' '#1087#1077#1088#1077#1076#1072#1102#1090#1089#1103' '#1074' '#1041 +
      #1044'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label29: TLabel
    Left = 575
    Top = 129
    Width = 138
    Height = 42
    AutoSize = False
    BiDiMode = bdRightToLeftNoAlign
    Caption = #1055#1088#1080' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1074#1072#1078#1085#1086' '#1080#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' COM port 4'
    ParentBiDiMode = False
    WordWrap = True
  end
  object Label26: TLabel
    Left = 8
    Top = 399
    Width = 81
    Height = 13
    Caption = #1052#1086#1085#1080#1090#1086#1088' '#1087#1086#1088#1090#1072':'
  end
  object Label21: TLabel
    Left = 271
    Top = 399
    Width = 191
    Height = 13
    Caption = #1044#1072#1085#1085#1099#1077' '#1089' '#1087#1086#1088#1090#1072' '#1074' '#1076#1074#1091#1084#1077#1088#1085#1086#1084' '#1084#1072#1089#1089#1080#1074#1077
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 283
    Width = 369
    Height = 110
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 382
    Top = 282
    Width = 369
    Height = 111
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 8
    Top = 72
    Width = 175
    Height = 160
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 51
      Width = 89
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
    end
    object Label2: TLabel
      Left = 16
      Top = 84
      Width = 58
      Height = 13
      Caption = #1042#1083#1072#1078#1085#1086#1089#1090#1100' '
    end
    object Label3: TLabel
      Left = 16
      Top = 120
      Width = 75
      Height = 13
      Caption = #1054#1089#1074#1077#1097#1077#1085#1085#1086#1089#1090#1100
    end
    object Label4: TLabel
      Left = 130
      Top = 51
      Width = 18
      Height = 13
      Caption = '223'
    end
    object Label5: TLabel
      Left = 130
      Top = 84
      Width = 3
      Height = 13
    end
    object Label6: TLabel
      Left = 130
      Top = 120
      Width = 3
      Height = 13
    end
    object Label22: TLabel
      Left = 16
      Top = 101
      Width = 3
      Height = 13
    end
    object Label32: TLabel
      Left = 16
      Top = 139
      Width = 3
      Height = 13
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 13
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'Arduino1'
      OnChange = ComboBox1Change
      Items.Strings = (
        'Arduino 1'
        'Arduino 2'
        'Arduino 3')
    end
  end
  object Panel2: TPanel
    Left = 189
    Top = 72
    Width = 169
    Height = 160
    TabOrder = 3
    object Label7: TLabel
      Left = 16
      Top = 51
      Width = 89
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
    end
    object Label8: TLabel
      Left = 16
      Top = 84
      Width = 58
      Height = 13
      Caption = #1042#1083#1072#1078#1085#1086#1089#1090#1100' '
    end
    object Label9: TLabel
      Left = 16
      Top = 116
      Width = 75
      Height = 13
      Caption = #1054#1089#1074#1077#1097#1077#1085#1085#1086#1089#1090#1100
    end
    object Label12: TLabel
      Left = 130
      Top = 51
      Width = 18
      Height = 13
      Caption = '108'
    end
    object Label13: TLabel
      Left = 130
      Top = 84
      Width = 3
      Height = 13
    end
    object Label14: TLabel
      Left = 130
      Top = 118
      Width = 3
      Height = 13
    end
    object Label25: TLabel
      Left = 16
      Top = 103
      Width = 3
      Height = 13
    end
    object Label33: TLabel
      Left = 16
      Top = 135
      Width = 3
      Height = 13
    end
    object ComboBox2: TComboBox
      Left = 16
      Top = 13
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'Arduino2'
      OnChange = ComboBox2Change
      Items.Strings = (
        'Arduino 1'
        'Arduino 2'
        'Arduino 3')
    end
  end
  object Panel3: TPanel
    Left = 364
    Top = 72
    Width = 165
    Height = 160
    TabOrder = 4
    object Label15: TLabel
      Left = 10
      Top = 51
      Width = 89
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1072#1091#1076#1080#1090#1086#1088#1080#1080
    end
    object Label16: TLabel
      Left = 10
      Top = 84
      Width = 58
      Height = 13
      Caption = #1042#1083#1072#1078#1085#1086#1089#1090#1100' '
    end
    object Label17: TLabel
      Left = 10
      Top = 115
      Width = 75
      Height = 13
      Caption = #1054#1089#1074#1077#1097#1077#1085#1085#1086#1089#1090#1100
    end
    object Label18: TLabel
      Left = 122
      Top = 51
      Width = 18
      Height = 13
      Caption = '517'
    end
    object Label19: TLabel
      Left = 122
      Top = 84
      Width = 3
      Height = 13
    end
    object Label20: TLabel
      Left = 122
      Top = 115
      Width = 3
      Height = 13
    end
    object Label27: TLabel
      Left = 8
      Top = 103
      Width = 3
      Height = 13
    end
    object Label34: TLabel
      Left = 8
      Top = 134
      Width = 3
      Height = 13
    end
    object ComboBox3: TComboBox
      Left = 8
      Top = 13
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'Arduino3'
      OnChange = ComboBox3Change
      Items.Strings = (
        'Arduino 1'
        'Arduino 2'
        'Arduino 3')
    end
  end
  object Button3: TButton
    Left = 575
    Top = 85
    Width = 138
    Height = 38
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' Arduino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 575
    Top = 177
    Width = 138
    Height = 36
    Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100' Arduino'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Memo2: TMemo
    Left = 271
    Top = 418
    Width = 209
    Height = 143
    ScrollBars = ssVertical
    TabOrder = 7
  end
  object Memo1: TMemo
    Left = 7
    Top = 418
    Width = 248
    Height = 143
    ScrollBars = ssVertical
    TabOrder = 8
  end
  object Panel4: TPanel
    Left = 492
    Top = 401
    Width = 259
    Height = 160
    TabOrder = 9
    Visible = False
    object Label30: TLabel
      Left = 34
      Top = -2
      Width = 209
      Height = 13
      Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1072#1103' '#1080' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1074#1083#1072#1078#1085#1086#1089#1090#1100
    end
    object Label31: TLabel
      Left = 24
      Top = 75
      Width = 227
      Height = 13
      Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1072#1103' '#1080' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1086#1089#1074#1077#1097#1077#1085#1085#1086#1089#1090#1100
    end
    object Edit1: TEdit
      Left = 48
      Top = 17
      Width = 67
      Height = 21
      TabOrder = 0
      Text = '20'
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 160
      Top = 17
      Width = 67
      Height = 21
      TabOrder = 1
      Text = '80'
      OnKeyPress = Edit2KeyPress
    end
    object Button1: TButton
      Left = 96
      Top = 44
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 96
      Top = 121
      Width = 75
      Height = 25
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      TabOrder = 3
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 48
      Top = 94
      Width = 67
      Height = 21
      TabOrder = 4
      Text = '40'
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 168
      Top = 94
      Width = 67
      Height = 21
      TabOrder = 5
      Text = '90'
      OnKeyPress = Edit1KeyPress
    end
  end
  object DBChart1: TDBChart
    Left = 8
    Top = 567
    Width = 743
    Height = 308
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074#1083#1072#1078#1085#1086#1089#1090#1100' '#1080' '#1086#1089#1074#1077#1097#1077#1085#1085#1086#1089#1090#1080)
    TabOrder = 10
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      29
      15
      29)
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      DataSource = ADOQuery2
      Title = #1042#1083#1072#1078#1085#1086#1089#1090#1100
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'Info'
    end
    object Series2: TLineSeries
      DataSource = ADOQuery1
      Title = #1054#1089#1074#1077#1097#1077#1085#1085#1086#1089#1090#1100
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'Info'
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=VKR2020;Persist Security Info=True;U' +
      'ser ID=bobin;Extended Properties="DRIVER={MariaDB ODBC 3.1 Drive' +
      'r};UID=bobin;PWD=VKR2020;TCPIP=1;SERVER=alx.hldns.ru;";Initial C' +
      'atalog=Microclimate'
    LoginPrompt = False
    Left = 1000
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 944
    Top = 224
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from LightHistory')
    Left = 792
    Top = 160
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 864
    Top = 224
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from HumidityHistory')
    Left = 856
    Top = 160
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource1
    Parameters = <>
    Left = 920
    Top = 160
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 792
    Top = 224
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 976
    Top = 272
  end
  object MainMenu1: TMainMenu
    Left = 888
    Top = 272
    object N1: TMenuItem
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      object N2: TMenuItem
        Caption = #1055#1086#1084#1086#1097#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1082#1072
        OnClick = N3Click
      end
    end
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 936
    Top = 272
  end
  object Timer3: TTimer
    Interval = 3000
    Left = 1016
    Top = 272
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM4'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = False
    Left = 1008
    Top = 224
  end
  object ComDataPacket1: TComDataPacket
    ComPort = ComPort1
    OnPacket = ComDataPacket1Packet
    Left = 800
    Top = 272
  end
  object DBCrossTabSource1: TDBCrossTabSource
    Formula = gfCount
    GroupField = 'NumberA'
    ValueField = 'Info'
    DataSet = ADOQuery1
  end
end
