unit Model;

interface

uses
  MVCFramework.ActiveRecord, MVCFramework.Commons, JsonDataObjects,
  MVCFramework.Serializer.Commons, System.Classes,
  System.Generics.Collections, MVCFramework.Nullables, System.SysUtils;

type
  TTestModel = class
  private
    FName: NullableString;
    FNum: NullableInt64;
    FID: NullableInt64;
    procedure SetID(const Value: NullableInt64);
    procedure SetName(const Value: NullableString);
    procedure SetNum(const Value: NullableInt64);
  public
    property ID: NullableInt64 read FID write SetID;
    property Name: NullableString read FName write SetName;
    property Num: NullableInt64 read FNum write SetNum;
  end;

implementation

{ TTestModel }

procedure TTestModel.SetID(const Value: NullableInt64);
begin
  FID := Value;
end;

procedure TTestModel.SetName(const Value: NullableString);
begin
  FName := Value;
end;

procedure TTestModel.SetNum(const Value: NullableInt64);
begin
  FNum := Value;
end;

end.
