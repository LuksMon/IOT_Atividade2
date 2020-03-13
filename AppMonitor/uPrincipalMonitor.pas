unit uPrincipalMonitor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Beacon,
  System.Bluetooth, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ScrollBox,
  FMX.Memo, System.Beacon.Components;

type
  TfPrincipal = class(TForm)
    Beacon1: TBeacon;
    Memo1: TMemo;
    btn_Consultar: TButton;
    procedure Beacon1BeaconProximity(const Sender: TObject;
      const ABeacon: IBeacon; Proximity: TBeaconProximity);
    procedure Beacon1BeaconEnter(const Sender: TObject; const ABeacon: IBeacon;
      const CurrentBeaconList: TBeaconList);
    procedure Beacon1BeaconExit(const Sender: TObject; const ABeacon: IBeacon;
      const CurrentBeaconList: TBeaconList);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.fmx}

procedure TfPrincipal.Beacon1BeaconEnter(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
begin
  Memo1.Lines.Add( 'Beacon Econtrado');
end;

procedure TfPrincipal.Beacon1BeaconExit(const Sender: TObject;
  const ABeacon: IBeacon; const CurrentBeaconList: TBeaconList);
begin
  Memo1.Lines.Add( 'Beacon Desconetou');
end;

procedure TfPrincipal.Beacon1BeaconProximity(const Sender: TObject;
  const ABeacon: IBeacon; Proximity: TBeaconProximity);
begin
  case Proximity of
    Immediate: Memo1.Lines.Add( {NL + }' Proximidade Immediate ');
//             + ' ; '+ ABeacon.GUID.ToString + ':' + ABeacon.Major.ToString + ',' + ABeacon.Minor.ToString;
//             + ' ; Major = ' + aBeacon.Major
//             + ' ; Minor = ' + aBeacon.Minor;
    Near: Memo1.Lines.Add(' Proximidade Near ');
//             + ' ; GUID = ' + ABeacon.GUID.ToString + ':' + ABeacon.Major.ToString + ',' + ABeacon.Minor.ToString;
    Far: Memo1.Lines.Add(' Proximidade Far ');
//             + ' ; GUID = ' + ABeacon.GUID.ToString + ':' + ABeacon.Major.ToString + ',' + ABeacon.Minor.ToString;
    Away: Memo1.Lines.Add(' Proximidade Away ');
//             + ' ; GUID = ' + ABeacon.GUID.ToString + ':' + ABeacon.Major.ToString + ',' + ABeacon.Minor.ToString;
  end;
end;

end.
