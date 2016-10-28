unit uFrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,uMixerRecord, ExtCtrls, Buttons;

type
  TFrmMain = class(TForm)
    SaveDialog1: TSaveDialog;
    tmrRecorder: TTimer;
    Label1: TLabel;
    lbTime: TLabel;
    btnStart: TSpeedButton;
    btnStop: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure tmrRecorderTimer(Sender: TObject);
  private
    { Private declarations }
    m_MixerRecord : TMixerRecord;
    m_nCount:integer;
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.btnStartClick(Sender: TObject);
begin
  m_MixerRecord.Start;
  tmrRecorder.Enabled := true ;
  btnStart.Enabled := false ;
  btnStop.Enabled := true ;

  m_nCount := 0 ;
end;

procedure TFrmMain.btnStopClick(Sender: TObject);
var
  strFileName:string ;
begin
  if  not SaveDialog1.Execute(0) then
    exit ;
  strFileName := SaveDialog1.FileName ;
  m_MixerRecord.Stop;
  if FileExists(strFileName) then
  begin
    DeleteFile(strFileName);
  end;

  tmrRecorder.Enabled := false ;

  btnStart.Enabled := true ;
  btnStop.Enabled := false ;

  m_MixerRecord.GetRecordStream.SaveToFile(strFileName);
  ShowMessage('¬º“ÙÕÍ±œ');
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  m_MixerRecord := TMixerRecord.Create;
  btnStop.Enabled := false ;
end;

procedure TFrmMain.FormDestroy(Sender: TObject);
begin
  m_MixerRecord.Stop ;
  m_MixerRecord.Free;
end;

procedure TFrmMain.tmrRecorderTimer(Sender: TObject);
var
  strText:string;
begin
  Inc(m_nCount);
  strText := Format('%d√Î',[m_nCount]) ;
  lbTime.Caption := strText ;
end;

end.
