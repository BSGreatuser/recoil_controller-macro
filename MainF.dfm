object Main: TMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #48393#49692' & '#50616#47196#50864' // '#48393#49692'#1234'
  ClientHeight = 175
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 195
    Top = 119
    Width = 54
    Height = 13
    Caption = #48393#49692'#1234'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 241
    Height = 105
    Caption = #48393#49692
    TabOrder = 0
    object Recoli1: TLabel
      Left = 16
      Top = 72
      Width = 35
      Height = 13
      Caption = 'Recoli :'
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 19
      Width = 81
      Height = 17
      Caption = #48152#46041
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object 수치: TTrackBar
      Left = 16
      Top = 42
      Width = 209
      Height = 17
      Max = 100
      TabOrder = 1
      OnChange = 수치Change
    end
  end
  object Button1: TButton
    Left = 8
    Top = 138
    Width = 241
    Height = 23
    Caption = #48393#49692#51060#45348
    TabOrder = 1
    OnClick = Button1Click
  end
  object 타이머: TTimer
    Enabled = False
    Interval = 1
    OnTimer = 타이머Timer
    Left = 600
    Top = 296
  end
  object Timer1: TTimer
    Interval = 200
    OnTimer = Timer1Timer
    Left = 536
    Top = 232
  end
end
