unit FrameReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, StdCtrls;

type
  TfraReports = class(TfraDisplay)
    Panel1: TPanel;
    btnInterestExpense: TButton;
    btnInterestIncome: TButton;
    btnRecievables: TButton;
    btnPayables: TButton;
    procedure btnMainClick(Sender: TObject);
  private { Private declarations }
    procedure CloseCurrentDisplayFrame();
    procedure DisplayCurrentDisplayFrame(Focus: Boolean; screenNum : Integer);
    procedure DisplayScreen(screenNum: integer);
    procedure EnableMenuButtons;

  public { Public declarations }
    displayFrame: TFrame;
  end;

var
  fraReports: TfraReports;

implementation


uses  Globals, ModuleDB,FormMain,FrameReportReceivables,FrameReportPayables,FrameReportInterestExpense, FrameReportInterestIncome;

{$R *.dfm}




procedure TfraReports.btnMainClick(Sender: TObject);
begin
  EnableMenuButtons;
  DisplayScreen(TButton(Sender).Tag);
  TButton(Sender).Enabled := False;
end;

procedure TfraReports.CloseCurrentDisplayFrame();
begin

  if (displayFrame <> nil) then
    begin
      TfraDisplay(displayFrame).CleanupBeforeExit;
      displayFrame.Free;
      displayFrame := nil;
    end;

end;


procedure TfraReports.DisplayCurrentDisplayFrame(Focus: Boolean;screenNum :integer);
begin
  displayFrame.Parent :=  frmMain.displayFrame;
  displayFrame.Align := alClient;
  TfraDisplay(displayFrame).Initialize;
  TfraDisplay(displayFrame).pnlTitle.Caption:= modDB.GetPageName(screenNum);
  if Focus = true then
    displayFrame.SetFocus;
end;


procedure TfraReports.DisplayScreen(screenNum: integer);
var
  selectedProjectID: integer;
begin

  Screen.Cursor := crHourglass;
  CloseCurrentDisplayFrame;

  case screenNum of
    cReportReceivablesDisplay: displayFrame := TfraReportReceivables.Create(fraReports);
    cReportInterestIncomeDisplay: displayFrame := TfraReportInterestIncome.Create(fraReports);
    cReportPayablesDisplay: displayFrame := TfraReportPayables.Create(fraReports);
    cReportInterestExpenseDisplay: displayFrame := TfraReportInterestExpense.Create(fraReports);

  end; //case screenNum


  DisplayCurrentDisplayFrame(True,screenNum);
  Screen.Cursor := crDefault;

end;


procedure TfraReports.EnableMenuButtons;
begin

    btnRecievables.Enabled := true;
    btnInterestIncome.Enabled := true;
    btnPayables.Enabled := true;
    btnInterestExpense.Enabled := true;

end;


end.
