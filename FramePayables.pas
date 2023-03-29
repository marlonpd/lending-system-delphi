unit FramePayables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls,DB,
  Buttons;

type
  TfraPayables = class(TfraDisplay)
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    Panel10: TPanel;
    BitBtn2: TBitBtn;
    pnlFormSlLoan: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGrid3: TDBGrid;
    pnlFormSlPayment: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel9: TPanel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure Initialize(); override;
    procedure CleanupBeforeExit(); override;
    procedure Refresh();override;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraPayables: TfraPayables;

implementation

uses Globals, ModuleDB;

{$R *.dfm}

procedure TfraPayables.Initialize();
begin
  inherited;
  {Initialization code will be added in the child frames.} ;

    modDb.dSetVendor.Close;
    modDb.dSetVendor.Open;
    modDb.dSetVendor.Active;

    modDb.dsetPayables.Close;
    modDb.dsetPayables.Open;
    modDb.dsetPayables.Active;

    modDb.dSetPayablePayments.Close;
    modDb.dSetPayablePayments.Open;
    modDb.dSetPayablePayments.Active;

end;

procedure TfraPayables.BitBtn1Click(Sender: TObject);
begin
  inherited;
  pnlFormSlPayment.Visible := true;
  modDb.dSetPayablePayments.Append;
end;

procedure TfraPayables.BitBtn2Click(Sender: TObject);
begin
  inherited;
  pnlFormSlLoan.Visible := true;
  modDb.dsetPayables.Append;
end;

procedure TfraPayables.BitBtn3Click(Sender: TObject);
begin
  inherited;
    modDB.dsetPayablestimestamp.Value := Date;
    modDB.dsetPayablesbalance.Value :=   modDB.dsetPayablesamount.value;
   if  modDB.dsetPayables.State in [dsInsert,dsEdit] then  modDB.dsetPayables.Post;
   pnlFormSlLoan.Visible := false;
end;

procedure TfraPayables.BitBtn4Click(Sender: TObject);
begin
  inherited;
   pnlFormSlLoan.Visible := false;
      if  modDB.dsetPayables.State in [dsInsert,dsEdit] then  modDB.dsetPayables.Cancel;
end;

procedure TfraPayables.BitBtn5Click(Sender: TObject);
begin
  inherited;
    modDB.dSetPayablePaymentstimestamp.Value := Date;
   if  modDB.dSetPayablePayments.State in [dsInsert,dsEdit] then  modDB.dSetPayablePayments.Post;
   pnlFormSlPayment.Visible := false;
end;

procedure TfraPayables.BitBtn6Click(Sender: TObject);
begin
  inherited;
   if  modDB.dSetPayablePayments.State in [dsInsert,dsEdit] then  modDB.dSetPayablePayments.Cancel;
   pnlFormSlPayment.Visible := false;
end;

procedure TfraPayables.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
    inherited;
    modDb.dSetVendor.Close;
    modDb.dsetPayables.Close;
    modDb.dSetPayablePayments.Close;
end;

procedure TfraPayables.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
    inherited;

end;

end.
