object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 402
  Width = 468
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DbxDatasnap'
      'HostName=localhost'
      'Port=3090'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    AfterConnect = SQLConnection1AfterConnect
    Left = 320
    Top = 112
    UniqueId = '{E2966FDA-B715-459E-AB3C-055334430716}'
  end
  object DSServerModule: TDSProviderConnection
    ServerClassName = 'TDSServerModule_banco'
    SQLConnection = SQLConnection1
    Left = 72
    Top = 56
  end
  object CDS_TBPARAMETRO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_TBPARAMETRO_SERVER'
    RemoteServer = DSServerModule
    Left = 360
    Top = 10
    object CDS_TBPARAMETROPARAMETRO: TStringField
      FieldName = 'PARAMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object CDS_TBPARAMETROTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_TBPARAMETROTIPO_SN: TStringField
      FieldName = 'TIPO_SN'
      FixedChar = True
      Size = 1
    end
    object CDS_TBPARAMETROVALOR: TStringField
      FieldName = 'VALOR'
      Size = 200
    end
    object CDS_TBPARAMETROGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 50
    end
    object CDS_TBPARAMETRODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object CDS_TBPARAMETROPALAVRA_CHAVE: TStringField
      FieldName = 'PALAVRA_CHAVE'
      Size = 100
    end
  end
  object CDS_TBCLI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_TBCLI_SERVER'
    RemoteServer = DSServerModule
    Left = 232
    Top = 282
  end
  object cds_sqlgenerico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_GENERICO'
    RemoteServer = DSServerModule
    Left = 96
    Top = 146
  end
  object CDS_TBPROD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_TBPROD_sERVER'
    RemoteServer = DSServerModule
    Left = 280
    Top = 202
    object CDS_TBPRODCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDS_TBPRODDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object CDS_TBPRODPVENDAA: TFloatField
      FieldName = 'PVENDAA'
    end
    object CDS_TBPRODCODPESQUISA: TStringField
      FieldName = 'CODPESQUISA'
      Size = 15
    end
    object CDS_TBPRODTIPO_PRODUTO: TIntegerField
      FieldName = 'TIPO_PRODUTO'
    end
    object CDS_TBPRODVR_CREDITO: TFloatField
      FieldName = 'VR_CREDITO'
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      'LockingMode=Normal'
      
        'Database=C:\Users\Public\Documents\Embarcadero\Studio\17.0\Sampl' +
        'es\Data\Employees.s3db')
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    Left = 136
    Top = 240
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 192
    Top = 328
  end
end
