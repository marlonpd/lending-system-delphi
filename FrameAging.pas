unit FrameAging;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, Grids, DBGrids;

type
  TfraAging = class(TfraDisplay)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraAging: TfraAging;

implementation

uses ModuleDB;

{$R *.dfm}

end.
