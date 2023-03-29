unit FrameListCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameReportReceivables, ExtCtrls, FrameDisplay, StdCtrls, ComCtrls,
  ToolWin, DB, Buttons, Grids, DBGrids, DBCtrls, Mask;

type
  TfraListCustomer = class(TfraDisplay)
    pnlForm: TPanel;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dsCustomer: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel2: TPanel;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    btnNew: TBitBtn;
    edtSearchKey: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Initialize(); override;
    procedure CleanupBeforeExit(); override;
    procedure Refresh();override;
    procedure btnNewClick(Sender: TObject);
    procedure EnablePrimaryBtn(status :Boolean);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtSearchKeyChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraListCustomer: TfraListCustomer;

implementation

uses ModuleDB;

{$R *.dfm}

procedure TfraListCustomer.BitBtn1Click(Sender: TObject);
begin
  inherited;
 modDb.qryCustomer.Delete;
end;

procedure TfraListCustomer.BitBtn2Click(Sender: TObject);
begin
  inherited;
  modDb.qryCustomer.Append;
end;

procedure TfraListCustomer.BitBtn3Click(Sender: TObject);
begin
  inherited;

    modDB.qryCustomertimestamp.Value := Date;
    if  modDB.qryCustomer.State in [dsInsert,dsEdit] then  modDB.qryCustomer.Post;
    pnlForm.Visible := false;
  EnablePrimaryBtn(true);
end;

procedure TfraListCustomer.BitBtn4Click(Sender: TObject);
begin
  inherited;
   if  modDB.qryCustomer.State in [dsInsert,dsEdit] then  modDB.qryCustomer.Cancel;
   pnlForm.Visible := false;
   EnablePrimaryBtn(true);
end;

procedure TfraListCustomer.btnDeleteClick(Sender: TObject);
begin
  inherited;
      if MessageDlg('Delete current selection. Are you sure?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes  then
        modDB.qryCustomer.Delete;

end;

procedure TfraListCustomer.btnEditClick(Sender: TObject);
begin
  inherited;
  pnlForm.Visible := true;
  EnablePrimaryBtn(false);
  modDb.qryCustomer.Edit;
end;

procedure TfraListCustomer.btnNewClick(Sender: TObject);
begin
  inherited;
  pnlForm.Visible := true;
  EnablePrimaryBtn(false);
  modDb.qryCustomer.Append;
end;

procedure TfraListCustomer.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
  inherited;
  moddb.qryCustomer.Close;
  moddb.qryCustomer.SQL[2] :=' WHERE customer_id > 0';
  modDb.qryCustomer.Open;
  pnlForm.Visible := false;
end;

procedure TfraListCustomer.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
    inherited;
end;

procedure TfraListCustomer.edtSearchKeyChange(Sender: TObject);
begin
  inherited;
    if edtSearchKey.Text <> '' then
  begin
      moddb.qryCustomer.close;
      moddb.qryCustomer.SQL[2] :=' WHERE name LIKE ''%'+edtSearchKey.Text +'%'' or address LIKE ''%'+edtSearchKey.Text +'%''';
      moddb.qryCustomer.open;
      moddb.qryCustomer.requery();
       end
  else
  begin
      moddb.qryCustomer.close;
      moddb.qryCustomer.SQL[2] :=' WHERE customer_id > 0 ';
      moddb.qryCustomer.open;
      moddb.qryCustomer.requery();
  end;

end;

procedure TfraListCustomer.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
    inherited;
end;


procedure TfraListCustomer.EnablePrimaryBtn(status :Boolean);
begin
  {Screen Refresh code will be added in the child frames.} ;
  btnNew.Enabled := status;
  btnEdit.Enabled := status;
  btnDelete.Enabled := status;
end;


end.
