unit DL.Form.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, DL.Form.PinAbfrage, DL.Form.Einstellungen;

type
  TDLFormMain = class(TForm)
    Header: TToolBar;
    Footer: TToolBar;
    HeaderLabel: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DLFormMain: TDLFormMain;

implementation

{$R *.fmx}

procedure TDLFormMain.Button1Click(Sender: TObject);
begin
    var
    DLFormPinAbfrage: TDLFormPinAbfrage := TDLFormPinAbfrage.Create(Self);
  DLFormPinAbfrage.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      if (ModalResult = mrOk) then
      begin
        var DLFormEinstellungen := TDLFormEinstellungen.Create(Self);
        DLFormEinstellungen.ShowModal(
          procedure(ModalResult: TModalResult)
          begin
            TThread.Synchronize(nil,
              procedure
              begin
                ShowMessage('Done!');
              end);

          end);
      end;
    end);
end;

end.
