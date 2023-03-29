unit FrameListVendor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FrameReportReceivables, ExtCtrls, FrameDisplay, Mask, DBCtrls,
  StdCtrls, DB, ComCtrls, ToolWin, Grids, DBGrids, Buttons;

type
  TfraListVendor = class(TfraDisplay)
    pnlForm: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    dsVendor: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel2: TPanel;
    btnEdit: TBitBtn;
    btnDelete: TBitBtn;
    btnNew: TBitBtn;
    edtSearchKey: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure EnablePrimaryBtn(status :Boolean);
    procedure BitBtn4Click(Sender: TObject);
    procedure Initialize(); override;
    procedure CleanupBeforeExit(); override;
    procedure Refresh();override;
    procedure edtSearchKeyChange(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraListVendor: TfraListVendor;

implementation


uses ModuleDB;

{$R *.dfm}

procedure TfraListVendor.BitBtn1Click(Sender: TObject);
begin
  inherited;
  modDB.qryCompany.Delete;
end;

procedure TfraListVendor.BitBtn2Click(Sender: TObject);
begin
  inherited;
 modDb.qryVendor.Append;
end;

procedure TfraListVendor.BitBtn3Click(Sender: TObject);
begin
  inherited;
  modDB.qryVendortimestamp.Value := Date;
   if  modDB.qryVendor.State in [dsInsert,dsEdit] then  modDB.qryVendor.Post;

  pnlForm.Visible := false;
  EnablePrimaryBtn(true);

end;

procedure TfraListVendor.BitBtn4Click(Sender: TObject);
begin
  inherited;
   if  modDB.qryVendor.State in [dsInsert,dsEdit] then  modDB.qryVendor.Cancel;
    EnablePrimaryBtn(true);
end;

procedure TfraListVendor.btnDeleteClick(Sender: TObject);
begin
  inherited;
   if MessageDlg('Delete current selection. Are you sure?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes  then
        modDB.qryVendor.Delete;

end;

procedure TfraListVendor.btnEditClick(Sender: TObject);
begin
  inherited;

  pnlForm.Visible := true;
  EnablePrimaryBtn(false);
  modDb.qryVendor.Edit;
end;


procedure TfraListVendor.btnNewClick(Sender: TObject);
begin
  inherited;
  pnlForm.Visible := true;
  EnablePrimaryBtn(false);
  modDb.qryVendor.Append;
end;

procedure TfraListVendor.EnablePrimaryBtn(status :Boolean);
begin
  {Screen Refresh code will be added in the child frames.} ;
  btnNew.Enabled := status;
  btnEdit.Enabled := status;
  btnDelete.Enabled := status;
end;


procedure TfraListVendor.Initialize();
begin
  {Initialization code will be added in the child frames.} ;
  inherited;

  moddb.qryVendor.Close;
  moddb.qryVendor.SQL[2] :=' WHERE vendor_id > 0';
  modDb.qryVendor.Open;
  pnlForm.Visible := false;
end;

procedure TfraListVendor.CleanupBeforeExit();
begin
  {Cleanup code will be added in the child frames.} ;
    inherited;
end;

procedure TfraListVendor.edtSearchKeyChange(Sender: TObject);
begin
  inherited;
 if edtSearchKey.Text <> '' then
  begin
      moddb.qryVendor.close;
      moddb.qryVendor.SQL[2] :=' WHERE name LIKE ''%'+edtSearchKey.Text +'%'' or address LIKE ''%'+edtSearchKey.Text +'%''';
      moddb.qryVendor.open;
      moddb.qryVendor.requery();
       end
  else
  begin
      moddb.qryVendor.close;
      moddb.qryVendor.SQL[2] :=' WHERE vendor_id > 0 ';
      moddb.qryVendor.open;
      moddb.qryVendor.requery();
  end;
end;

procedure TfraListVendor.Refresh();
begin
  {Screen Refresh code will be added in the child frames.} ;
    inherited;
end;


end.
