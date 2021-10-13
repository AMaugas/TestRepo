unit UMainFormTest;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TMainFormTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', '1,2')]
    [TestCase('TestB', '3,4')]
    procedure Test2(const AValue1: Integer; const AValue2: Integer);
  end;

implementation

procedure TMainFormTest.Setup;
begin

end;

procedure TMainFormTest.TearDown;
begin
end;

procedure TMainFormTest.Test1;
begin

//  assert.AreEqual(0, 1);
end;

procedure TMainFormTest.Test2(const AValue1: Integer; const AValue2: Integer);
begin

{$IFDEF COUCOU}

  Log(TLogLevel.Information,
    'Coucou!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');

{$ENDIF}

end;

initialization

TDUnitX.RegisterTestFixture(TMainFormTest);

end.
