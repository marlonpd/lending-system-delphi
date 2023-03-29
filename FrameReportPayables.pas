unit FrameReportPayables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameReportReceivables, ExtCtrls, FrameDisplay, DB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls;

type
  TfraReportPayables = class(TfraDisplay)
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
  fraReportPayables: TfraReportPayables;

implementation

uses Globals, ModuleDB;

{$R *.dfm}

procedure TfraReportPayables.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
  moddb.qryPayablesRpt.Close;
  moddb.qryPayablesRpt.Open;

  moddb.qryPayablesTotal.Close;
  moddb.qryPayablesTotal.Open;

end;

procedure TfraReportPayables.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
end;

procedure TfraReportPayables.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
end;

end.
