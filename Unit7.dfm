object Form7: TForm7
  Left = 732
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pencarian Data'
  ClientHeight = 448
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabel1: TsLabel
      Left = 24
      Top = 24
      Width = 99
      Height = 20
      Caption = 'Nomer Form'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object sEdit1: TsEdit
      Left = 136
      Top = 24
      Width = 185
      Height = 28
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
    object sBitBtn1: TsBitBtn
      Left = 336
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cari'
      TabOrder = 1
      OnClick = sBitBtn1Click
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 472
    Height = 383
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    Flat = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    TabOrder = 1
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'No Form'
        Footers = <>
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Nama Pemilik'
        Footers = <>
        Width = 75
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Nomer Telepon'
        Footers = <>
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Alamat'
        Footers = <>
        Width = 75
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Nama Hewan'
        Footers = <>
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Jenis Hewan'
        Footers = <>
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Makanan'
        Footers = <>
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Titip Tanggal'
        Footers = <>
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Username'
        Footers = <>
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Harga Makanan'
        Footers = <>
        Width = 100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Titip Per-Hari'
        Footers = <>
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Penitipan')
    Left = 368
    Top = 400
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Penitipan'
    Left = 336
    Top = 400
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Inti2.mdb;Persist S' +
      'ecurity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 304
    Top = 400
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 272
    Top = 400
  end
end
