unit FrameLists;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, StdCtrls;

type
  TfraLists = class(TfraDisplay)
    Panel1: TPanel;
    btnVendor: TButton;
    btnCompany: TButton;
    btnCustomer: TButton;
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
  fraLists: TfraLists;

implementation

uses  Globals, ModuleDB,FormMain, FrameListCompany,FrameListCustomer,FrameListVendor;

{$R *.dfm}




procedure TfraLists.btnMainClick(Sender: TObject);
begin
  EnableMenuButtons;
  DisplayScreen(TButton(Sender).Tag);
  TButton(Sender).Enabled := False;
end;

procedure TfraLists.CloseCurrentDisplayFrame();
begin

  if (displayFrame <> nil) then
    begin
      TfraDisplay(displayFrame).CleanupBeforeExit;
      displayFrame.Free;
      displayFrame := nil;
    end;

end;


procedure TfraLists.DisplayCurrentDisplayFrame(Focus: Boolean;screenNum :integer);
begin
  displayFrame.Parent :=  frmMain.displayFrame;
  displayFrame.Align := alClient;
  TfraDisplay(displayFrame).Initialize();
  TfraDisplay(displayFrame).pnlTitle.Caption:= modDB.GetPageName(screenNum);

  if Focus = true then
    displayFrame.SetFocus;
end;


procedure TfraLists.DisplayScreen(screenNum: integer);
var
  selectedProjectID: integer;
begin

  Screen.Cursor := crHourglass;
  CloseCurrentDisplayFrame;

  case screenNum of
    cListCompanyDisplay: begin
                          displayFrame := TfraListCompany.Create(fraLists);

                         end;
    cListCustomerDisplay: begin
                           displayFrame := TfraListCustomer.Create(fraLists);

                          end;
    cListVendorDisplay: begin
                         displayFrame := TfraListVendor.Create(fraLists);
                         end;
  end; //case screenNum


  DisplayCurrentDisplayFrame(True,screenNum);
  Screen.Cursor := crDefault;

end;


procedure TfraLists.EnableMenuButtons;
begin

    btnCustomer.Enabled := true;
    btnCompany.Enabled := true;
    btnVendor.Enabled := true;
end;


end.
