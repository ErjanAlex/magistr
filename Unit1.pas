unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.ColorGrd,
  Vcl.ActnMan, Vcl.ActnColorMaps, CPort,Unit2, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  VCLTee.TeeDBCrossTab;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    Label10: TLabel;
    Label11: TLabel;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Label23: TLabel;
    Label24: TLabel;
    Timer2: TTimer;
    Timer3: TTimer;
    ComPort1: TComPort;
    Button3: TButton;
    ComDataPacket1: TComDataPacket;
    Button4: TButton;
    Label28: TLabel;
    Label29: TLabel;
    Memo2: TMemo;
    Memo1: TMemo;
    Label26: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Panel4: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    DBCrossTabSource1: TDBCrossTabSource;
    procedure Timer2Timer(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComDataPacket1Packet(Sender: TObject; const Str: string);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Humidity,Light:Array of integer;
  M: array of array of integer;
  k,jesus,minO,MaxO,minV,maxV:integer;
  stroka:string;
  conard:bool;
  procedure final();
  procedure perevod();

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if (Trim(Edit1.Text) = '') or (Trim(Edit2.Text) = '') then
ShowMessage('Некоректный ввод!')
else begin
minV:=StrToInt(Edit1.Text);
maxV:=StrToInt(Edit2.Text);
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if (Trim(Edit3.Text) = '') or (Trim(Edit4.Text) = '') then
ShowMessage('Некоректный ввод!')
else begin
minO:=StrToInt(Edit3.Text);
maxO:=StrToInt(Edit4.Text);
end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ComPort1.Connected := not ComPort1.Connected;
conard:=true;
panel4.Visible:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
ComPort1.Connected := false;
conard:= false;
panel4.Visible:= false;
end;

procedure perevod();
var i,x,y,z:integer;
    kapa:string;
begin
i:=1;
x:=0;
y:=0;
z:=0;
 jesus := length(stroka);
 jesus := jesus div 10;
 setLength(M,jesus,3);

while stroka[i] <> '*' do begin
if stroka[i] = ' ' then begin
  z:=StrToInt(kapa);
  M[x,y]:=z;
  inc(y);
  z:=0;
  kapa:='';
  inc(i);
  end;
while stroka[i] <> ' ' do
begin
  if stroka[i] = '*' then begin
  z:=StrToInt(kapa);
  M[x,y]:=z;
  inc(x);
  y:=0;
  z:=0;
  kapa:='';
  inc(i);

  end;
   if i >= length(stroka) then begin
   final();
   exit;
   end;
  kapa:= kapa + stroka[i];
  inc(i);
end;
end;
end;


procedure final();
var i,j:integer;
ek:string;
begin

 for i := 0 to jesus-1 do  begin
    for j := 0 to 2 do begin
      ek:=ek + ' ' + IntToStr(M[i,j]);
    end;
    Form1.Memo2.Lines.Insert(i,ek);
    ek:= '';
     if i = jesus-1 then
     Form1.Memo2.Lines.Insert(i+1,('------------'));
 end;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
//combobox4.Items := comport1.Port.Chars[0];
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
if combobox1.ItemIndex = 1 then
begin
  label4.Caption := '108';
end;
if combobox1.ItemIndex = 0 then
begin
  label4.Caption := '223';
end;
if combobox1.ItemIndex = 2 then
begin
  label4.Caption := '517';
end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
if combobox2.ItemIndex = 1 then
begin
  label12.Caption := '108';
end;
if combobox2.ItemIndex = 0 then
begin
  label12.Caption := '223';
end;
if combobox2.ItemIndex = 2 then
begin
  label12.Caption := '517';
end;
end;

procedure TForm1.ComboBox3Change(Sender: TObject);
begin
if combobox3.ItemIndex = 1 then
begin
  label18.Caption := '108';
end;
if combobox3.ItemIndex = 0 then
begin
  label18.Caption := '223';
end;
if combobox3.ItemIndex = 2 then
begin
  label18.Caption := '517';
end;
end;

procedure TForm1.ComDataPacket1Packet(Sender: TObject; const Str: string);
begin
memo1.Lines.Add(IntToStr(k) + ') ' + Str);
stroka:=Str;
inc(k);
perevod();
if M<>nil then
begin
//Обновление 1-ой панели
if combobox1.ItemIndex = 0 then
begin
label5.Caption:= IntToStr(M[0,0]);
label6.Caption:= IntToStr(M[0,1]);
end;

if combobox1.ItemIndex = 1 then
begin
label5.Caption:= IntToStr(M[1,0]);
label6.Caption:= IntToStr(M[1,1]);
end;

if combobox1.ItemIndex = 2 then
begin
label5.Caption:= IntToStr(M[2,0]);
label6.Caption:= IntToStr(M[2,1]);
end;


if StrToInt(label5.Caption)>maxV then begin
label22.Caption:='Высокая влажность!!!';
label22.Font.Color := cLred;
end else if StrToInt(label5.Caption)<minV then begin
label22.Caption:='Низкая влажность!!!';
label22.Font.Color := cLred;
end else
label22.Caption:='';

if StrToInt(label6.Caption)>maxO then begin
label32.Caption:='Высокая освещенность!!!';
label32.Font.Color := cLred;
end else if StrToInt(label6.Caption)<minO then begin
label32.Caption:='Низкая освещенность!!!';
label32.Font.Color := cLred;
end else
label32.Caption:='';




//Обновление 2-ой панели
if combobox2.ItemIndex = 0 then
begin
label13.Caption:= IntToStr(M[0,0]);
label14.Caption:= IntToStr(M[0,1]);
end;



if combobox2.ItemIndex = 1 then
begin
label13.Caption:= IntToStr(M[1,0]);
label14.Caption:= IntToStr(M[1,1]);
end;




if combobox2.ItemIndex = 2 then
begin
label13.Caption:= IntToStr(M[2,0]);
label14.Caption:= IntToStr(M[2,1]);
end;



if StrToInt(label13.Caption)>maxV then begin
label25.Caption:='Высокая влажность!!!';
label25.Font.Color := cLred;
end else if StrToInt(label13.Caption)<minV then begin
label25.Caption:='Низкая влажность!!!';
label25.Font.Color := cLred;
end else
label25.Caption:='';

if StrToInt(label14.Caption)>maxO then begin
label33.Caption:='Высокая освещенность!!!';
label33.Font.Color := cLred;
end else if StrToInt(label14.Caption)<minO then begin
label33.Caption:='Низкая освещенность!!!';
label33.Font.Color := cLred;
end else
label33.Caption:='';


//Обновление 3-ей панели
if combobox3.ItemIndex = 0 then
begin
label19.Caption:= IntToStr(M[0,0]);
label20.Caption:= IntToStr(M[0,1]);
end;



if combobox3.ItemIndex = 1 then
begin
label19.Caption:= IntToStr(M[1,0]);
label20.Caption:= IntToStr(M[1,1]);
end;




if combobox3.ItemIndex = 2 then
begin
label19.Caption:= IntToStr(M[2,0]);
label20.Caption:= IntToStr(M[2,1]);
end;
end;


if StrToInt(label19.Caption)>maxV then begin
label27.Caption:='Высокая влажность!!!';
label27.Font.Color := cLred;
end else if StrToInt(label19.Caption)<minV then begin
label27.Caption:='Низкая влажность!!!';
label27.Font.Color := cLred;
end else
label27.Caption:='';

if StrToInt(label20.Caption)>maxO then begin
label34.Caption:='Высокая освещенность!!!';
label34.Font.Color := cLred;
end else if StrToInt(label20.Caption)<minO then begin
label34.Caption:='Низкая освещенность!!!';
label34.Font.Color := cLred;
end else
label34.Caption:='';

    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('UPDATE Light SET Info='+IntToStr(M[0,1])+', DateT=NOW() WHERE ID = 1 ');
    ADOQuery3.ExecSQL;
    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('UPDATE Light SET Info='+IntToStr(M[1,1])+', DateT=NOW() WHERE ID = 2 ');
    ADOQuery3.ExecSQL;
    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('UPDATE Light SET Info='+IntToStr(M[2,1])+', DateT=NOW() WHERE ID = 3 ');
    ADOQuery3.ExecSQL;

    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('UPDATE Humidity SET Info='+IntToStr(M[0,0])+', DateT=NOW() WHERE ID = 1 ');
    ADOQuery3.ExecSQL;
    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('UPDATE Humidity SET Info='+IntToStr(M[1,0])+', DateT=NOW() WHERE ID = 2 ');
    ADOQuery3.ExecSQL;
    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('UPDATE Humidity SET Info='+IntToStr(M[2,0])+', DateT=NOW() WHERE ID = 3 ');
    ADOQuery3.ExecSQL;


    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('INSERT INTO LightHistory (Info,DateT,NumberA) VALUES ("'+IntToStr(M[0,1])+'",NOW(),223)');
    ADOQuery3.ExecSQL;
    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('INSERT INTO LightHistory (Info,DateT,NumberA) VALUES ("'+IntToStr(M[1,1])+'",NOW(),108)');
    ADOQuery3.ExecSQL;
    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('INSERT INTO LightHistory (Info,DateT,NumberA) VALUES ("'+IntToStr(M[2,1])+'",NOW(),517)');
    ADOQuery3.ExecSQL;

    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('INSERT INTO HumidityHistory (Info,DateT,NumberA) VALUES ("'+IntToStr(M[0,0])+'",NOW(),223)');
    ADOQuery3.ExecSQL;
    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('INSERT INTO HumidityHistory  (Info,DateT,NumberA) VALUES ("'+IntToStr(M[1,0])+'",NOW(),108)');
    ADOQuery3.ExecSQL;
    Adoquery3.SQL.Clear;
    ADOquery3.SQL.Add('INSERT INTO HumidityHistory  (Info,DateT,NumberA) VALUES ("'+IntToStr(M[2,0])+'",NOW(),517)');
    ADOQuery3.ExecSQL;


    ADoquery1.Active := false;
    ADoquery1.Active := true;
    ADoquery2.Active := false;
    ADoquery2.Active := true;

end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in ['0'..'9', #8])then Key:=#0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
combobox1.ItemIndex := 0;
combobox2.ItemIndex := 1;
combobox3.ItemIndex := 2;

setLength(Light,3);
setLength(Humidity,3);
k:=0;

minV:=StrToInt(Edit1.Text);
minO:=StrToInt(Edit3.Text);
maxV:=StrToInt(Edit2.Text);
maxO:=StrToInt(Edit4.Text);
end;

procedure TForm1.N2Click(Sender: TObject);
begin
form2.show;
form2.visible := true;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
MessageDlg('Разработчик: Бобин Илья Евгеньевич                             По всем вопросам: bobin-1998@mail.ru',mtInformation,[mbOk],0);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if conard = true then begin
label28.Caption:= 'Ардуино подключено! Данные обновляются и передаются в БД.';
label28.Font.Color := cLgreen;
end
else begin
label28.Caption:= 'Ардуино не подключено! Данные не обновляются и не передаются в БД.';
label28.Font.Color := cLred;
end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var timeTea:TdateTime;
begin
timeTea := Now;
label24.Caption := DateToStr(timeTea)+ ' ' +TimeToStr(timeTea);
end;

end.
