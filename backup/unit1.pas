unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure RadioButton5Change(Sender: TObject);
    procedure RadioButton6Change(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation
uses Unit2;
{$R *.lfm}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
begin
Unit2.Form2.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
Var km,ml:real;
begin
If radiobutton1.Checked then
begin
km:=StrToFloat(Edit1.Text);
ml:= km*0.62;
Edit7.Text:= FloattoStr(ml);
end;

if RadioButton2.Checked then
begin
ml:= StrToFloat(Edit2.text);
km:= ml/0.62;
Edit7.Text:= FloattoStr(km);
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
Var km,m:real;
begin
If radiobutton3.Checked then
begin
km:=StrToFloat(Edit3.Text);
m:= km * 1000;
Edit8.Text:= FloattoStr(m);
end;

if RadioButton4.Checked then
begin
m:= StrToFloat(Edit4.text);
km:= m / 1000;
Edit8.Text:= FloattoStr(km);
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
Var m,ml:real;
begin
If radiobutton5.Checked then
begin
m:=StrToFloat(Edit5.Text);
ml:= m / 1609;
Edit9.Text:= FloattoStr(ml);
end;

if RadioButton6.Checked then
begin
ml:= StrToFloat(Edit6.text);
m:= ml * 1609;
Edit9.Text:= FloattoStr(m);
end;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit7.Clear;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Edit3.Clear;
Edit4.Clear;
Edit8.Clear;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Edit5.Clear;
Edit6.Clear;
Edit9.Clear;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
if not (Key in [#8, '0'..'9',',']) then
begin
MessageDlg('Введите положительное число',mtInformation,[mbOk],0);
Key:=#0;
end;
end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
Edit1.Enabled:=True;
Edit2.Enabled:=False;
Edit7.Enabled:=True;
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
Edit1.Enabled:=False;
Edit2.Enabled:=True;
Edit7.Enabled:=True;
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
Edit3.Enabled:=True;
Edit4.Enabled:=False;
Edit8.Enabled:=True;
end;

procedure TForm1.RadioButton4Change(Sender: TObject);
begin
Edit3.Enabled:=False;
Edit4.Enabled:=True;
Edit8.Enabled:=True;
end;

procedure TForm1.RadioButton5Change(Sender: TObject);
begin
Edit5.Enabled:=True;
Edit6.Enabled:=False;
Edit9.Enabled:=True;
end;

procedure TForm1.RadioButton6Change(Sender: TObject);
begin
Edit5.Enabled:=False;
Edit6.Enabled:=True;
Edit9.Enabled:=True;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
Close;
end;
end.

