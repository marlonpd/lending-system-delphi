unit FrameStraightLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons, Mask,
  DBCtrls;

type
  TfraStraightLine = class(TfraDisplay)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel6: TPanel;
    Panel7: TPanel;
    DBGrid3: TDBGrid;
    Panel10: TPanel;
    pnlFormSlLoan: TPanel;
    BitBtn2: TBitBtn;
    pnlFormSlPayment: TPanel;
    Panel9: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    procedure Initialize(); override;
    procedure CleanupBeforeExit(); override;
      procedure Refresh();override;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraStraightLine: TfraStraightLine;

implementation

uses ModuleDb;

{$R *.dfm}




procedure TfraStraightLine.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
     inherited;
    modDb.tblCustomer.Close;
    modDb.tblCustomer.Open;
    modDb.dsetSlLoan.Close;
    modDb.dsetSlLoan.CommandText := ' SELECT * FROM LOAN WHERE type =0 ';
    modDb.dsetSlLoan.Open;
    modDb.dsetSlLoan.Active;
    modDb.tblSlLoanPayment.Close;
    modDb.tblSlLoanPayment.Open;
    modDb.tblSlLoanPayment.Active;

       modDb.dsetSlPayment.Close;
    modDb.dsetSlPayment.Open;
    modDb.dsetSlPayment.Active;
end;

procedure TfraStraightLine.BitBtn1Click(Sender: TObject);
begin
  inherited;
  pnlFormSlPayment.Visible := true;
  modDB.dsetSlLoan.Edit;
  modDB.dsetSlPayment.Append;

end;

procedure TfraStraightLine.BitBtn2Click(Sender: TObject);
begin
  inherited;
  pnlFormSlLoan.Visible := true;
  modDb.dsetSlLoan.Append;
end;

procedure TfraStraightLine.BitBtn3Click(Sender: TObject);
begin
  inherited;
    modDB.dsetSlLoantimestamp.Value := Date;
    modDb.dsetSlLoantype.Value :=0;
   if  modDB.dsetSlLoan.State in [dsInsert,dsEdit] then  modDB.dsetSlLoan.Post;
   pnlFormSlLoan.Visible := false;
end;

procedure TfraStraightLine.BitBtn4Click(Sender: TObject);
begin
  inherited;
   pnlFormSlLoan.Visible := false;
      if  modDB.dsetSlLoan.State in [dsInsert,dsEdit] then  modDB.dsetSlLoan.Cancel;
end;

procedure TfraStraightLine.BitBtn5Click(Sender: TObject);
begin
  inherited;

  
  modDB.connLending.BeginTrans;


  try

   moddB.dsetSlLoantotal.Value := moddb.dsetSlLoanprincipal.Value + modDB.dsetSlLoaninterest.Value;
   moddb.dsetSlPaymentbalance.Value:=moddb.dsetSlLoanprincipal.Value + modDB.dsetSlLoaninterest.Value;
   moddb.dsetSlLoanbalance.Value := moddb.dsetSlLoanprincipal.Value + modDB.dsetSlLoaninterest.Value;
   if  modDB.dsetSlPayment.State in [dsInsert,dsEdit] then
      modDB.dsetSlPayment.Post;

   if  modDB.dsetSlLoan.State in [dsInsert,dsEdit] then
      modDB.dsetSlLoan.Post;

  Except
     modDB.connLending.RollbackTrans;
    ShowMessage('Error!!');
    Exit;
  End;
      modDB.connLending.CommitTrans;
   pnlFormSlPayment.Visible := false;
end;

procedure TfraStraightLine.BitBtn6Click(Sender: TObject);
begin
  inherited;
   if  modDB.dsetSlPayment.State in [dsInsert,dsEdit] then  modDB.dsetSlPayment.Cancel;
   pnlFormSlPayment.Visible := false;
end;

procedure TfraStraightLine.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
    inherited;
    modDb.tblCustomer.Close;
    modDb.dsetSlLoan.Close;
    modDb.dsetSlPayment.Close;
end;

procedure TfraStraightLine.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
    inherited;
  modDb.qryCustomer.Requery;
end;

end.
