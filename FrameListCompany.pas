unit FrameListCompany;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameReportReceivables, ExtCtrls, FrameDisplay, Grids, DBGrids,
  ComCtrls, Mask, DBCtrls, StdCtrls, Buttons, ToolWin, DB;

type
  TfraListCompany = class(TfraDisplay)
    pnlGrid: TPanel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    dsCompany: TDataSource;
    Panel1: TPanel;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    btnNew: TBitBtn;
    edtSearchKey: TEdit;
    pnlForm: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    procedure btnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Initialize(); override;
    procedure CleanupBeforeExit(); override;
    procedure Refresh();override;
    procedure edtSearchKeyChange(Sender: TObject);
    procedure EnablePrimaryBtn(status :Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraListCompany: TfraListCompany;

implementation

uses ModuleDB;

{$R *.dfm}

procedure TfraListCompany.btnDeleteClick(Sender: TObject);
begin
  inherited;
      if MessageDlg('Delete current selection. Are you sure?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes  then
        modDB.qryCompany.Delete;

end;

procedure TfraListCompany.btnNewClick(Sender: TObject);
begin
  inherited;
  pnlForm.Visible := true;
  EnablePrimaryBtn(false);
  modDb.qryCompany.Append;
end;

procedure TfraListCompany.BitBtn3Click(Sender: TObject);
begin
  inherited;
    modDB.qryCompanytimestamp.Value := Date;
    if  modDB.qryCompany.State in [dsInsert,dsEdit] then  modDB.qryCompany.Post;
    pnlForm.Visible := false;

  EnablePrimaryBtn(true);

end;

procedure TfraListCompany.BitBtn4Click(Sender: TObject);
begin
  inherited;
   if  modDB.qryCompany.State in [dsInsert,dsEdit] then  modDB.qryCompany.Cancel;
   pnlForm.Visible := false;

  EnablePrimaryBtn(true);

end;

procedure TfraListCompany.btnEditClick(Sender: TObject);
begin
  inherited;
  pnlForm.Visible := true;
  EnablePrimaryBtn(false);
  modDb.qryCompany.Edit;
end;

procedure TfraListCompany.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
  inherited;
  moddb.qryCompany.Close;
  moddb.qryCompany.SQL[2] :=' WHERE company_id > 0';
  modDb.qryCompany.Open;
  pnlForm.Visible := false;
end;

procedure TfraListCompany.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
    inherited;
end;

procedure TfraListCompany.edtSearchKeyChange(Sender: TObject);
begin
  inherited;
  if edtSearchKey.Text <> '' then
  begin
      moddb.qryCompany.close;
      moddb.qryCompany.SQL[2] :=' WHERE name LIKE ''%'+edtSearchKey.Text +'%'' or address LIKE ''%'+edtSearchKey.Text +'%''';
      moddb.qryCompany.open;
      moddb.qryCompany.requery();
       end
  else
  begin
      moddb.qryCompany.close;
      moddb.qryCompany.SQL[2] :=' WHERE company_id > 0 ';
      moddb.qryCompany.open;
      moddb.qryCompany.requery();
  end;

end;

procedure TfraListCompany.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
    inherited;
end;

procedure TfraListCompany.EnablePrimaryBtn(status :Boolean);
begin
  {Screen Refresh code will be added in the child frames.} ;
  btnNew.Enabled := status;
  btnEdit.Enabled := status;
  btnDelete.Enabled := status;
end;

end.
