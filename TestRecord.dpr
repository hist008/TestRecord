program TestRecord;

uses
  Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  uMixerRecord in 'uMixerRecord.pas',
  uLogs in 'uLogs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
