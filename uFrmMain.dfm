object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #24405#38899#27979#35797
  ClientHeight = 95
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = #24494#36719#38597#40657
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 25
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 43
    Height = 25
    Caption = #26102#38271':'
  end
  object lbTime: TLabel
    Left = 77
    Top = 8
    Width = 6
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
  end
  object btnStart: TSpeedButton
    Left = 41
    Top = 39
    Width = 96
    Height = 34
    Caption = #24320#22987#24405#38899
    OnClick = btnStartClick
  end
  object btnStop: TSpeedButton
    Left = 168
    Top = 39
    Width = 97
    Height = 34
    Caption = #20572#27490#24405#38899
    OnClick = btnStopClick
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'wav'
    Filter = '*.wav'
    Left = 256
    Top = 80
  end
  object tmrRecorder: TTimer
    Enabled = False
    OnTimer = tmrRecorderTimer
    Left = 280
    Top = 80
  end
end
