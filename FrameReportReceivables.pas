unit FrameReportReceivables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TfraReportReceivables = class(TfraDisplay)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure Initialize(); virtual;
    procedure CleanupBeforeExit(); virtual;
    procedure Refresh(); virtual;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraReportReceivables: TfraReportReceivables;

implementation

uses Globals,ModuleDB;
{$R *.dfm}

procedure TfraReportReceivables.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
  modDB.qryReceivablesRpt.Close;
  modDB.qryReceivablesRpt.Open;

    moddb.qryReceivablesTotal.Close;
  moddb.qryReceivablesTotal.Open;

end;

procedure TfraReportReceivables.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
end;

procedure TfraReportReceivables.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
end;

end.
