unit FrameDiminishing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameDisplay, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids,
  DBGrids,DB;

type
  TfraDiminishing = class(TfraDisplay)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Splitter2: TSplitter;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Panel10: TPanel;
    BitBtn2: TBitBtn;
    pnlFormSlLoan: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel6: TPanel;
    Panel7: TPanel;
    DBGrid3: TDBGrid;
    pnlFormSlPayment: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel9: TPanel;
    BitBtn1: TBitBtn;
    Splitter1: TSplitter;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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
  fraDiminishing: TfraDiminishing;

implementation

uses ModuleDB;
{$R *.dfm}


procedure TfraDiminishing.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
     inherited;
    modDb.tblCustomer.Close;
    modDb.tblCustomer.Open;

    modDb.dsetSlLoan.Close;
    modDb.dsetSlLoan.CommandText := ' SELECT * FROM LOAN WHERE type = 1 ';
    modDb.dsetSlLoan.Open;
    modDb.dsetSlLoan.Active;
    modDb.tblSlLoanPayment.Close;
    modDb.tblSlLoanPayment.Open;
    modDb.tblSlLoanPayment.Active;
    modDb.dsetSlPayment.Close;
    modDb.dsetSlPayment.Open;
    modDb.dsetSlPayment.Active;
end;


procedure TfraDiminishing.BitBtn3Click(Sender: TObject);
begin
  inherited;
    modDB.dsetSlLoantimestamp.Value := Date;
    modDb.dsetSlLoantype.Value :=1;
   if  modDB.dsetSlLoan.State in [dsInsert,dsEdit] then  modDB.dsetSlLoan.Post;
   pnlFormSlLoan.Visible := false;
end;

procedure TfraDiminishing.BitBtn4Click(Sender: TObject);
begin
  inherited;
   pnlFormSlLoan.Visible := false;
      if  modDB.dsetSlLoan.State in [dsInsert,dsEdit] then  modDB.dsetSlLoan.Cancel;
end;

procedure TfraDiminishing.BitBtn5Click(Sender: TObject);
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

procedure TfraDiminishing.BitBtn6Click(Sender: TObject);
begin
  inherited;
   if  modDB.dsetSlPayment.State in [dsInsert,dsEdit] then  modDB.dsetSlPayment.Cancel;
   pnlFormSlPayment.Visible := false;
end;

procedure TfraDiminishing.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
    inherited;
    modDb.tblCustomer.Close;
    modDb.dsetSlLoan.Close;
    modDb.dsetSlPayment.Close;
end;

procedure TfraDiminishing.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
    inherited;
  modDb.qryCustomer.Requery;
end;



procedure TfraDiminishing.BitBtn1Click(Sender: TObject);
begin
  inherited;
  pnlFormSlPayment.Visible := true;
  modDb.dsetSlPayment.Append;
end;

procedure TfraDiminishing.BitBtn2Click(Sender: TObject);
begin
  inherited;
  pnlFormSlLoan.Visible := true;
  modDb.dsetSlLoan.Append;
end;

end.
