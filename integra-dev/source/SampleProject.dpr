program SampleProject;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SampleApplication in 'SampleApplication.pas',
  UnusedCode in 'UnusedCode.pas';

var
  Sample: TSampleApplication;

begin
  Sample := TSampleApplication.Create();
  try
    Sample.Initialize;
    Sample.Run();
  finally
    Sample.Free;
  end;
end.
