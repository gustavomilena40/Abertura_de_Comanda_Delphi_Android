program AberturaComandaAndroid;



uses
  System.StartUpCopy,
  FMX.Forms,
  uAberturaComanda in 'uAberturaComanda.pas' {fAberturaComanda},
  UProxy in 'UProxy.pas',
  Ufuncoes in 'Ufuncoes.pas',
  uCombobox in 'uCombobox.pas',
  udm in 'udm.pas' {dm: TDataModule};

{$R *.res}
//{$R *.fmx}


begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.InvertedLandscape];
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfAberturaComanda, fAberturaComanda);
  Application.Run;
end.
