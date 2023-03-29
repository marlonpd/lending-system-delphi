program LendingSystem;

uses
  Forms,
  FormMain in 'FormMain.pas' {frmMain},
  Globals in 'Globals.pas',
  ModuleDB in 'ModuleDB.pas' {modDB},
  FrameDashboard in 'FrameDashboard.pas' {fraDashboard: TFrame},
  FrameAging in 'FrameAging.pas' {fraAging: TFrame},
  FrameStraightLine in 'FrameStraightLine.pas' {fraStraightLine: TFrame},
  FrameLists in 'FrameLists.pas' {fraLists: TFrame},
  FrameLoanReceivables in 'FrameLoanReceivables.pas' {fraLoanReceivables: TFrame},
  FramePayables in 'FramePayables.pas' {fraPayables: TFrame},
  FrameReports in 'FrameReports.pas' {fraReports: TFrame},
  FrameReportReceivables in 'FrameReportReceivables.pas' {fraReportReceivables: TFrame},
  FrameListCompany in 'FrameListCompany.pas' {fraListCompany: TFrame},
  FrameListCustomer in 'FrameListCustomer.pas' {fraListCustomer: TFrame},
  FrameListVendor in 'FrameListVendor.pas' {fraListVendor: TFrame},
  FrameReportPayables in 'FrameReportPayables.pas' {fraReportPayables: TFrame},
  FrameReportInterestExpense in 'FrameReportInterestExpense.pas' {fraReportInterestExpense: TFrame},
  FrameReportInterestIncome in 'FrameReportInterestIncome.pas' {fraReportInterestIncome: TFrame},
  FrameDisplay in 'FrameDisplay.pas' {fraDisplay: TFrame},
  FrameCollections in 'FrameCollections.pas' {fraCollections: TFrame},
  FrameDiminishing in 'FrameDiminishing.pas' {fraDiminishing: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TmodDB, modDB);
  Application.Run;
end.
