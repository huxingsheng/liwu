object Form1: TForm1
  Left = 231
  Top = 90
  Width = 1001
  Height = 673
  Caption = '520,1314'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  DesignSize = (
    985
    635)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 350
    Top = 0
    Width = 985
    Height = 584
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoSize = True
    Center = True
  end
  object MediaPlayer1: TMediaPlayer
    Left = 176
    Top = 672
    Width = 253
    Height = 33
    Visible = False
    TabOrder = 0
    OnExit = MediaPlayer1Exit
    OnNotify = MediaPlayer1Notify
  end
  object tlb1: TToolBar
    Left = 0
    Top = 584
    Width = 985
    Height = 51
    Align = alBottom
    ButtonHeight = 47
    Caption = 'tlb1'
    TabOrder = 1
    object pnl1: TPanel
      Left = 0
      Top = 2
      Width = 1000
      Height = 47
      Align = alTop
      TabOrder = 0
      object lbl1: TLabel
        Left = 240
        Top = 8
        Width = 1200
        Height = 13
        Caption = 
          '1234444445555555555555555ttttttttttttttttttttttttttttttttttttttt' +
          'tttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt' +
          'ttt'
      end
    end
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 568
    Top = 672
  end
end
