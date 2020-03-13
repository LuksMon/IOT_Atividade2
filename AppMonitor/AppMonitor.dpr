program AppMonitor;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPrincipalMonitor in 'uPrincipalMonitor.pas' {fPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
