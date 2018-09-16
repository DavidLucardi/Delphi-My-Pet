object Form6: TForm6
  Left = 340
  Top = 175
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pengaturan'
  ClientHeight = 448
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 50
    Width = 345
    Height = 398
    Align = alLeft
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabel1: TsLabel
      Left = 16
      Top = 16
      Width = 179
      Height = 20
      Caption = 'Manajemen Pengguna'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object DBGridEh1: TDBGridEh
      Left = 16
      Top = 48
      Width = 313
      Height = 120
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      TabOrder = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object sBitBtn1: TsBitBtn
      Left = 152
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 1
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn2: TsBitBtn
      Left = 240
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 2
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 50
    Align = alTop
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sLabel2: TsLabel
      Left = 16
      Top = 12
      Width = 235
      Height = 29
      Caption = 'Manajemen Aplikasi'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object sPanel3: TsPanel
    Left = 0
    Top = 271
    Width = 568
    Height = 177
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sLabel3: TsLabel
      Left = 16
      Top = 8
      Width = 74
      Height = 20
      Caption = 'Makanan'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object DBGridEh2: TDBGridEh
      Left = 16
      Top = 40
      Width = 313
      Height = 73
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      TabOrder = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object sBitBtn3: TsBitBtn
      Left = 152
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 1
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn4: TsBitBtn
      Left = 240
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 2
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sPanel4: TsPanel
    Left = 343
    Top = 50
    Width = 225
    Height = 398
    Align = alRight
    TabOrder = 3
    SkinData.SkinSection = 'PANEL'
    object sLabel4: TsLabel
      Left = 16
      Top = 16
      Width = 118
      Height = 20
      Caption = 'Macam Hewan'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object DBGridEh3: TDBGridEh
      Left = 16
      Top = 48
      Width = 193
      Height = 297
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      TabOrder = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object sBitBtn5: TsBitBtn
      Left = 32
      Top = 360
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 1
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtn6: TsBitBtn
      Left = 120
      Top = 360
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 2
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
