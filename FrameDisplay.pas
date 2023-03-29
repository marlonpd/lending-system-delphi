unit FrameDisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls;

type
  TfraDisplay = class(TFrame)
    pnlTitle: TPanel;
      procedure Initialize(); virtual;
      procedure CleanupBeforeExit(); virtual;
      procedure Refresh(); virtual;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TfraDisplay.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
end;

procedure TfraDisplay.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
end;

procedure TfraDisplay.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
end;

end.
