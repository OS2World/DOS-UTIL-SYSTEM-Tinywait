program Tinywait;
{
        This program simply waits for x number of seconds then ends.
        Great in batch files.  Dos Version
        This code is Public domain, do what you want with it, just don't
        bug me about it.  Written by: Tiny
}
uses
{$IFDEF OS2}
  Use32,
{$ENDIF}
  crt;

var
  w_time : word;
  code : integer;

procedure Help;
begin
 WriteLn(' '); WriteLn(' ');
    WriteLn('--TinyWait v1.0--');
    WriteLn('Usage:  wait <seconds>');
    WriteLn('waits <seconds> seconds');
end;

begin
  if (paramcount <> 1) then
  begin
    Help;
    Halt (1);
  end;

  val (paramstr(1), w_time, code);
  if (code <> 0) then
  begin
    Help;
    halt (1);
  end;

  WriteLn('--TinyWait v1.0--');
  Write('Waiting...');
  delay (w_time*1000);
  WriteLn(' ');

end.
