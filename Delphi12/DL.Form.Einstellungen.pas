unit DL.Form.Einstellungen;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.Edit;

type
  TDLFormEinstellungen = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  DLFormEinstellungen: TDLFormEinstellungen;

implementation

{$R *.fmx}

procedure TDLFormEinstellungen.FormCreate(Sender: TObject);
begin
  Edit1.Text := 'Click me for error!';
  Edit2.Text := 'I dont know why';
  Edit3.Text := 'only in 12';
end;

end.
