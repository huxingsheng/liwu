unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ImgList, MPlayer,IniFiles, StdCtrls, ToolWin,
  ComCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    MediaPlayer1: TMediaPlayer;
    Timer1: TTimer;
    tlb1: TToolBar;
    pnl1: TPanel;
    lbl1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MediaPlayer1Exit(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  total_num: integer;
  cur_num: integer;
  m_total_num: integer;
  m_cur_num: integer;
  strs: array of string;
  cur_str_index: Integer = 0;
  str_count: Integer = 0;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  myinifile:Tinifile;
  Filename: string;
  musicFile: string;
  i: Integer;
begin
  Filename := ExtractFilePath(Paramstr(0))+'set.ini';
  myinifile:=Tinifile.create(Filename);
  try
     total_num := myinifile.Readinteger('data','total_num',0);
     cur_num := myinifile.Readinteger('data','cur_num',0);
     m_total_num := myinifile.Readinteger('music','m_total_num',0);
     m_cur_num := myinifile.Readinteger('music','m_cur_num',0);
  finally
     myinifile.Free;
  end;
  musicFile := ExtractFilePath(Paramstr(0))+'res\music\'+inttostr(m_cur_num)+'.mp3';

  if fileExists(musicFile) then begin 
     self.MediaPlayer1.FileName := musicFile;
     self.MediaPlayer1.Open;
     self.MediaPlayer1.Play;
  end;  
  self.Timer1.Enabled := true;

  Filename :=  ExtractFilePath(Paramstr(0))+'res\string.ini';
  myinifile:=Tinifile.create(Filename);
  try
     str_count :=  myinifile.Readinteger('string','count',0);
     if str_count>0 then begin
        SetLength(strs,str_count);
        for i:=0 to str_count-1 do begin
          strs[i] := myinifile.ReadString('string','str'+inttostr(i),'')
        end;
        Self.lbl1.Caption := '   ';
        cur_str_index := 0;
     end;

  finally
     myinifile.Free;
  end;
  Self.pnl1.Width := Self.Width;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  filePath: string;
  picFilePath: string;
begin
    picFilePath := '';
    filePath := ExtractFilePath(Paramstr(0))+'\res\pic\';
    //showmessage(filePath);
    if cur_num < total_num then begin
       if fileexists(filePath+ inttostr(cur_num)+'.jpg') then
           picFilePath := filePath+ inttostr(cur_num)+'.jpg'
       else if fileexists(filePath+ inttostr(cur_num)+'.JPG') then
           picFilePath := filePath+ inttostr(cur_num)+'.JPG'
       else if fileexists(filePath+ inttostr(cur_num)+'.bmp') then
           picFilePath := filePath+ inttostr(cur_num)+'.bmp';
       if picFilePath <> '' then begin
           self.Image1.Picture.LoadFromFile(picFilePath);
           inc(cur_num);
           Self.Image1.Left := (Self.Width-Self.Image1.Picture.Width) div 2;
           Self.lbl1.Left := Self.Image1.Left+100;
           if((Self.Image1.Picture.Height+self.pnl1.Height+30 <= Self.Height) and (Self.Image1.Picture.Height<Self.Image1.Picture.Width)) then begin
             Self.Image1.Top := (Self.Height - (Self.Image1.Picture.Height+self.pnl1.Height+30)) div 2;
           end
           else begin
             Self.Image1.Top := 0;
           end;
       end;
    end;

    if cur_num = 20 then begin
       Self.Color := clPurple;
    end
    else if cur_num = 40 then begin
       Self.Color := clSkyBlue;
    end
    else if cur_num = 60 then begin
        Self.Color := clNavy;
    end
    else if cur_num = 80 then begin
       Self.Color := clMoneyGreen;
    end;



    if cur_str_index< str_count then begin
      Self.lbl1.Caption := strs[cur_str_index]+ '..............            ' ;
      inc(cur_str_index);
    end;

    if((cur_str_index >= str_count) and (cur_num >= total_num)) then begin
       self.Timer1.Enabled := false;
       //Self.lbl1.Caption := '÷ÌÕ∑£¨520£¨1314£°£°£°£°    ';
    end;

end;

procedure TForm1.MediaPlayer1Exit(Sender: TObject);
begin
  ShowMessage('123456ttt');
end;

procedure TForm1.MediaPlayer1Notify(Sender: TObject);
begin
      ShowMessage('123456ttt111');
end;

end.
