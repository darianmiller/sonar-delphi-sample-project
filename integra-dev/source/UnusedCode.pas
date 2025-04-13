unit UnusedCode;

{$HINTS OFF}

interface

const
  CUnusedConstant = 12345;

type
  TUnusedType = class
  private
    FUnusedField: Boolean;
    function GetUnusedProperty: Boolean; // Considered used, since TUnusedType.UnusedProperty references it

  public
    procedure UnusedMethod;
    property UnusedProperty: Boolean read GetUnusedProperty;
  end;

implementation

function UnusedLocalFunction: Boolean;
var
  UnusedLocalVariable: Integer;
begin
  Result := True;
end;

function TUnusedType.GetUnusedProperty: Boolean;
begin
  Result := False;
end;

procedure TUnusedType.UnusedMethod;
begin
  WriteLn('Dead code!');
end;

end.
