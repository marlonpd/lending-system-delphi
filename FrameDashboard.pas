unit FrameDashboard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TfraDashboard = class(TfraDisplay)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;

  procedure Initialize(); virtual;
  procedure CleanupBeforeExit(); virtual;
  procedure Refresh(); virtual;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraDashboard: TfraDashboard;

implementation

uses Globals, ModuleDB;

{$R *.dfm}


procedure TfraDashboard.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
end;

procedure TfraDashboard.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
end;

procedure TfraDashboard.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
end;

end.
