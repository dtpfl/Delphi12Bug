program Delphi11;

uses
  System.StartUpCopy,
  FMX.Forms,
  DL.Form.Einstellungen in 'DL.Form.Einstellungen.pas' {DLFormEinstellungen},
  DL.Form.Main in 'DL.Form.Main.pas' {DLFormMain},
  DL.Form.PinAbfrage in 'DL.Form.PinAbfrage.pas' {DLFormPinAbfrage};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDLFormMain, DLFormMain);
  Application.Run;
end.
