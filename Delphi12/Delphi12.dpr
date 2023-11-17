program Delphi12;

uses
  System.StartUpCopy,
  FMX.Forms,
  DL.Form.Einstellungen in 'DL.Form.Einstellungen.pas' {DLFormEinstellungen},
  DL.Form.PinAbfrage in 'DL.Form.PinAbfrage.pas' {DLFormPinAbfrage},
  DL.Form.Main in 'DL.Form.Main.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDLFormMain, DLFormMain);
  Application.Run;
end.
