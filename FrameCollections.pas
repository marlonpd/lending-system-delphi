unit FrameCollections;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, StdCtrls;

type
  TfraCollections = class(TfraDisplay)
    Panel2: TPanel;
    btnDiminishing: TButton;
    btnStraightline: TButton;
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
  fraCollections: TfraCollections;

implementation

uses  Globals, ModuleDB,FormMain,FrameDiminishing,FrameStraightLine;

{$R *.dfm}




procedure TfraCollections.btnMainClick(Sender: TObject);
begin
  EnableMenuButtons;
  DisplayScreen(TButton(Sender).Tag);
  TButton(Sender).Enabled := False;
end;

procedure TfraCollections.CloseCurrentDisplayFrame();
begin

  if (displayFrame <> nil) then
    begin
      TfraDisplay(displayFrame).CleanupBeforeExit;
      displayFrame.Free;
      displayFrame := nil;
    end;

end;


procedure TfraCollections.DisplayCurrentDisplayFrame(Focus: Boolean;screenNum :integer);
begin
  displayFrame.Parent :=  frmMain.displayFrame;
  displayFrame.Align := alClient;
  TfraDisplay(displayFrame).Initialize;
  TfraDisplay(displayFrame).pnlTitle.Caption:= modDB.GetPageName(screenNum);

  if Focus = true then
    displayFrame.SetFocus;
end;


procedure TfraCollections.DisplayScreen(screenNum: integer);
var
  selectedProjectID: integer;
begin

  Screen.Cursor := crHourglass;
  CloseCurrentDisplayFrame;


  case screenNum of
    cStraightLineDisplay: begin
                          displayFrame := TfraStraightLine.Create(fraCollections);
                          modDb.tblCustomer.Open;
                          modDb.tblSlLoan.Open;
                          modDb.tblSlLoanPayment.Open;
                         end;
    cDiminishingDisplay: begin
                           displayFrame := TfraDiminishing.Create(fraCollections);
                           modDB.qryCustomer.Open;
                          end;
  end; //case screenNum


  DisplayCurrentDisplayFrame(True,screenNum);
  Screen.Cursor := crDefault;

end;


procedure TfraCollections.EnableMenuButtons;
begin

    btnStraightline.Enabled := true;
    btnDiminishing.Enabled := true;

end;


end.
