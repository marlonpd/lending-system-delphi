unit FormMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, StdCtrls, ExtCtrls;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    About1: TMenuItem;
    StatusBar1: TStatusBar;
    Preferences1: TMenuItem;
    Panel2: TPanel;
    btnDashboard: TButton;
    btnReports: TButton;
    btnLists: TButton;
    btnCollections: TButton;
    btnPayables: TButton;
    btnAging: TButton;
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
  frmMain: TfrmMain;

implementation

uses  Globals, ModuleDB, FrameDisplay,FrameReports,FramePayables,FrameAging,FrameDashboard,FrameLists, FrameLoanReceivables,FrameCollections;

{$R *.dfm}

procedure TfrmMain.btnMainClick(Sender: TObject);
begin
  EnableMenuButtons;
  DisplayScreen(TButton(Sender).Tag);
  TButton(Sender).Enabled := False;
end;

procedure TfrmMain.CloseCurrentDisplayFrame();
begin

  if (displayFrame <> nil) then
    begin
      TfraDisplay(displayFrame).CleanupBeforeExit;
      displayFrame.Free;
      displayFrame := nil;
    end;

end;


procedure TfrmMain.DisplayCurrentDisplayFrame(Focus: Boolean;screenNum :integer);
begin
  displayFrame.Parent := frmMain;
  displayFrame.Align := alClient;
  TfraDisplay(displayFrame).Initialize;
  TfraDisplay(displayFrame).pnlTitle.Caption:= modDB.GetPageName(screenNum);

  if Focus = true then
    displayFrame.SetFocus;
end;


procedure TfrmMain.DisplayScreen(screenNum: integer);
var
  selectedProjectID: integer;
begin

  Screen.Cursor := crHourglass;
  CloseCurrentDisplayFrame;

  case screenNum of
    cDashboardDisplay: displayFrame := TfraDashboard.Create(frmMain);
    cListsDisplay:  displayFrame := TfraLists.Create(frmMain);
    cLoanReceivablesDisplay: displayFrame := TfraLoanReceivables.Create(frmMain);
    cCollectionsDisplay: displayFrame := TfraCollections.Create(frmMain);
    cPayablesDisplay: displayFrame := TfraPayables.Create(frmMain);
    cAgingDisplay: displayFrame := TfraAging.Create(frmMain);
    cReportsDisplay: displayFrame := TfraReports.Create(frmMain);
  end; //case screenNum



  DisplayCurrentDisplayFrame(True,screenNum);
  Screen.Cursor := crDefault;

end;


procedure TfrmMain.EnableMenuButtons;
begin

    btnDashboard.Enabled := true;
    btnPayables.Enabled := true;
    btnCollections.Enabled := true;
    btnReports.Enabled := true;
    btnAging.Enabled := true;
    btnLists.Enabled := true;

end;


end.
