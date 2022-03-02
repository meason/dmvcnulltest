unit Controller;

interface

uses
  MVCFramework, MVCFramework.Commons,
  Model,
  MVCFramework.Serializer.Commons;

type

  [MVCPath('/api')]
  TMyController = class(TMVCController) 
  public
  protected
    procedure OnBeforeAction(Context: TWebContext; const AActionName: string; var Handled: Boolean); override;
    procedure OnAfterAction(Context: TWebContext; const AActionName: string); override;
  public
    [MVCPath('/customers/($id)')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateCustomer(id: Integer);
  end;

implementation

uses
  System.SysUtils, MVCFramework.Logger, System.StrUtils;



{ TMyController }

procedure TMyController.OnAfterAction(Context: TWebContext;
  const AActionName: string);
begin
  inherited;
//
end;

procedure TMyController.OnBeforeAction(Context: TWebContext;
  const AActionName: string; var Handled: Boolean);
begin
  inherited;
//
end;

procedure TMyController.UpdateCustomer(id: Integer);
var
  M: TTestModel;
begin
  // hard-code for testing
  M := TTestModel.Create;
  M.ID := 1;
  M.Name := 'Jack';
  M.Num := 234;

  try
    Context.Request.BodyFor<TTestModel>(M);

    Render(HTTP_STATUS.OK, ObjectDict(False)
      .Add('data', M)
    );
  finally
    M.Free;
  end;


end;

end.
