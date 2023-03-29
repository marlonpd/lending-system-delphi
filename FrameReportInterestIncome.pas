unit FrameReportInterestIncome;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, DB, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TfraReportInterestIncome = class(TfraDisplay)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    procedure Initialize(); virtual;
    procedure CleanupBeforeExit(); virtual;
    procedure Refresh(); virtual;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraReportInterestIncome: TfraReportInterestIncome;

implementation


uses Globals, ModuleDB;

{$R *.dfm}

procedure TfraReportInterestIncome.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
  moddb.qryInterestIncomeRpt.Close;
  moddb.qryInterestIncomeRpt.Open;

  moddb.qryInterestIncomeTotal.Close;
  moddb.qryInterestIncomeTotal.Open;


end;

procedure TfraReportInterestIncome.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
end;

procedure TfraReportInterestIncome.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
end;

end.
