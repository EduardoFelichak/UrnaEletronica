unit Urna_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.Buttons;


type
  TfrmUrna = class(TForm)
    pnlView: TPanel;
    pnlTeclado: TPanel;
    Label1: TLabel;
    imgJE: TImage;
    pnl1: TPanel;
    btn1: TSpeedButton;
    pnl2: TPanel;
    btn2: TSpeedButton;
    pnl3: TPanel;
    btn3: TSpeedButton;
    pnl4: TPanel;
    btn4: TSpeedButton;
    pnl5: TPanel;
    btn5: TSpeedButton;
    pnl6: TPanel;
    btn6: TSpeedButton;
    pnl7: TPanel;
    btn7: TSpeedButton;
    pnl8: TPanel;
    btn8: TSpeedButton;
    pnl9: TPanel;
    btn9: TSpeedButton;
    pnl0: TPanel;
    btn0: TSpeedButton;
    pnlBranco: TPanel;
    pnlCorrige: TPanel;
    pnlConfirma: TPanel;
    btnBranco: TSpeedButton;
    btnCorrige: TSpeedButton;
    btnConfirma: TSpeedButton;
    edtN1: TEdit;
    edtN2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblNormalPt: TLabel;
    lblNome: TLabel;
    lblPartido: TLabel;
    pnlImg: TPanel;
    imgWillian: TImage;
    imgRicardo: TImage;
    imgVitor: TImage;
    imgEduardo: TImage;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btnCorrigeClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
  private
    procedure testeEdt(num: String);

    { Private declarations }
  public
    { Public declarations }
    procedure ValidarDados();
    procedure ZeraImg();
  end;

var
  frmUrna: TfrmUrna;

implementation

{$R *.dfm}

procedure TfrmUrna.testeEdt(num : String);
var
  n1 : String;
  n2 : String;
begin
  n1 := edtN1.Text;
  n2 := edtN2.Text;

  if n1.Length < 1 then
    edtN1.Text := num
  else
  begin
    edtN2.Text := num;
    ValidarDados();
  end;

end;

procedure TfrmUrna.btn0Click(Sender: TObject);
begin
  testeEdt('0');
end;

procedure TfrmUrna.btn1Click(Sender: TObject);
begin
  testeEdt('1');
end;

procedure TfrmUrna.btn2Click(Sender: TObject);
begin
  testeEdt('2');
end;

procedure TfrmUrna.btn3Click(Sender: TObject);
begin
  testeEdt('3');
end;

procedure TfrmUrna.btn4Click(Sender: TObject);
begin
  testeEdt('4');
end;

procedure TfrmUrna.btn5Click(Sender: TObject);
begin
  testeEdt('5');
end;

procedure TfrmUrna.btn6Click(Sender: TObject);
begin
  testeEdt('6');
end;

procedure TfrmUrna.btn7Click(Sender: TObject);
begin
  testeEdt('7');
end;

procedure TfrmUrna.btn8Click(Sender: TObject);
begin
  testeEdt('8');
end;

procedure TfrmUrna.btn9Click(Sender: TObject);
begin
  testeEdt('9');
end;

procedure TfrmUrna.btnCorrigeClick(Sender: TObject);
begin
  edtN1.Clear;
  edtN2.Clear;
  lblNome.Caption    := '';
  lblPartido.Caption := '';
  ZeraImg();
  pnlImg.Visible := false;
end;

procedure TfrmUrna.ValidarDados;
var
  num : String;
begin
  num := edtN1.Text + edtN2.Text;
  if num.ToInteger = 13 then
  begin
    lblNome.Caption := 'Willian Santin';
    lblPartido.Caption := 'Trainee do Ricardão';
    pnlImg.Visible := true;
    imgWillian.Visible := true;
  end
  else if num.ToInteger = 22 then
  begin
    lblNome.Caption := 'Ricardo Battistella';
    lblPartido.Caption := 'Rei Delas';
    pnlImg.Visible := true;
    imgRicardo.Visible := true;
  end
  else if num.ToInteger = 24 then
  begin
    lblNome.Caption := 'Vitor Albara';
    lblPartido.Caption := 'Trainee do Ricardão';
    pnlImg.Visible := true;
    imgVitor.Visible := true;
  end
  else if num.ToInteger = 03 then
  begin
    lblNome.Caption := 'Eduardo Felichak';
    lblPartido.Caption := 'Trainee do Ricardão';
    pnlImg.Visible := true;
    imgEduardo.Visible := true;
  end;
  end;

procedure TfrmUrna.ZeraImg;
begin
  imgWillian.Visible := false;
  imgRicardo.Visible := false;
  imgVitor.Visible   := false;
  imgEduardo.Visible := false;
end;

end.

