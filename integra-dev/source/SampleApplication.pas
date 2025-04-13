unit SampleApplication;

{$HINTS OFF}

{$WARNINGS OFF}

interface

uses
  System.StrUtils,
  UnusedCode;

type
  TSampleApplication = class(TObject)
  private
    FField: NativeInt;
    CreateObj: Boolean;

    public
    constructor Create;
    destructor Cleanup;
    procedure Initialize;
    procedure Run;
  end;

implementation

uses
  System.SysUtils;

function ObjectToString(Obj: TObject): string;
begin
  Result := IfThen(Assigned(Obj), Obj.ToString, 'nil');
end;

constructor TSampleApplication.Create;
begin
  inherited;
end;

destructor TSampleApplication.Cleanup;
begin
  Assert(False, 'This destructor will never actually get called...');
end;

// This line is way too long. Just look at it go, wow! This is crazy, I can't believe that the person writing this comment would be so rude.
procedure TSampleApplication.Initialize;
begin
  FField := 123;
  CreateObj := True;
end;

 procedure TSampleApplication.Run;
 var
   Obj: TObject;
   Int: Integer;
   Str: string;
   AnsiStr: AnsiString;
 begin
   Assert(2 + 2 = 4);

   Int := FField;

   Int := Integer(FField);

   Str := '😋';
   AnsiStr := AnsiString(Str);

   if CreateObj then begin
     obj := TObject.Create;
   end;

   WriteLn('Int = ' + IntToStr(Int));
   WriteLn('AnsiStr = ''' + AnsiStr + '''');
   WriteLn(ObjectToString(Obj))
 end;

end.
