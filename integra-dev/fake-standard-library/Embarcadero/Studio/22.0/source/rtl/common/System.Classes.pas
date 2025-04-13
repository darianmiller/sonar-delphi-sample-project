unit System.Classes;

interface

type
  TPersistent = class(TObject)

  end;

  TComponentClass = class of TComponent;

  TComponent = class(TPersistent, IInterface)
 
  end;

implementation

end.