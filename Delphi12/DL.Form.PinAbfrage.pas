unit DL.Form.PinAbfrage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  System.Notification, FMX.Layouts, FMX.Objects,
  FMX.Controls.Presentation, FMX.Edit, FMX.Ani, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Effects;

type
  TDLFormPinAbfrage = class(TForm)
    EPinEingabe: TEdit;
    recPinEingabe: TRectangle;
    Rectangle1: TRectangle;
    recPin0: TRoundRect;
    ColorAnimError: TColorAnimation;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    recPin4: TRoundRect;
    Rectangle4: TRectangle;
    recPin3: TRoundRect;
    Rectangle5: TRectangle;
    recPin2: TRoundRect;
    Rectangle6: TRectangle;
    recPin1: TRoundRect;
    ShadowEffect3: TShadowEffect;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure EPinEingabeChangeTracking(Sender: TObject);
  private
    { Private-Deklarationen }
    function getPIN: String;
    procedure hideDots;
  public
    { Public-Deklarationen }
  end;

var
  DLFormPinAbfrage: TDLFormPinAbfrage;

implementation

{$R *.fmx}

procedure TDLFormPinAbfrage.EPinEingabeChangeTracking(Sender: TObject);
begin
  inherited;
  try
    hideDots();
    for var i := 0 to (EPinEingabe.Text.Length-1) do
    begin
      TRoundRect(FindComponent('recPin' + IntToStr(i))).Visible := true;
    end;

    if (EPinEingabe.Text.Length=5) then
    begin
      if (EPinEingabe.Text = getPIN()) then
        Self.ModalResult := mrOk
      else
      begin
        EPinEingabe.Text := '';
      end;
    end;

  except

  end;
end;

procedure TDLFormPinAbfrage.FormCreate(Sender: TObject);
begin
  inherited;
  hideDots();
  EPinEingabe.SetFocus();
end;

function TDLFormPinAbfrage.getPIN: String;
begin
  Result := '12345';
end;

procedure TDLFormPinAbfrage.hideDots;
begin
  recPin0.Visible:=false;
  recPin1.Visible:=false;
  recPin2.Visible:=false;
  recPin3.Visible:=false;
  recPin4.Visible:=false;
end;

end.
