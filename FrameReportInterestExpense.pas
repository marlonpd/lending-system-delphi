unit FrameReportInterestExpense;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameReportReceivables, ExtCtrls, FrameDisplay, DB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls;

type
  TfraReportInterestExpense = class(TfraDisplay)
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
  fraReportInterestExpense: TfraReportInterestExpense;

implementation



uses Globals, ModuleDB;

{$R *.dfm}

procedure TfraReportInterestExpense.Initialize();
begin
  {Initialization code will be added in the child frames.} ;

  moddb.qryInterestExpenseRpt.Close;
  moddb.qryInterestExpenseRpt.Open;

  moddb.qryInterestExpenseTotal.Close;
  moddb.qryInterestExpenseTotal.Open;

end;

procedure TfraReportInterestExpense.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
end;

procedure TfraReportInterestExpense.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
end;


end.
