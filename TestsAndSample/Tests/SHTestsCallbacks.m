
#import "SHTestsSuper.h"

@interface SHTestsCallbacks : SHTestsSuper

@end

@implementation SHTestsCallbacks

-(void)testSH_setShouldBeginEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    XCTAssertEqualObjects(self.textField, textField);
    didAssert = YES;
    ;
    return didAssert;
  };
  [self.textField SH_setShouldBeginEditingBlock:block];
  XCTAssertTrue(self.textField.SH_blockShouldBeginEditing(self.textField));
  XCTAssertTrue(didAssert);
}

-(void)testSH_setDidBeginEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldBlock block = ^(UITextField * textField) {
    XCTAssertEqualObjects(self.textField, textField);
    didAssert = YES;
  };
  [self.textField SH_setDidBeginEditingBlock:block];

  self.textField.SH_blockDidBeginEditing(self.textField);
  XCTAssertTrue(didAssert);
}

-(void)testSH_setShouldEndEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    XCTAssertEqualObjects(self.textField, textField);
    didAssert = YES;
    ;
    return didAssert;

  };
  
  [self.textField SH_setShouldEndEditingBlock:block];
  XCTAssertTrue(self.textField.SH_blockShouldEndEditing(self.textField));
  XCTAssertTrue(didAssert);  
  
}

-(void)testSH_setDidEndEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldBlock block = ^(UITextField * textField) {
    XCTAssertEqualObjects(self.textField, textField);
    didAssert = YES;

  };
  [self.textField SH_setDidEndEditingBlock:block];
  self.textField.SH_blockDidEndEditing(self.textField);
  XCTAssertTrue(didAssert);
  
  
}

-(void)testSH_setShouldChangeCharactersInRangeWithReplacementStringBlock;{
  __block BOOL didAssert = NO;
  NSString * assertString = @"Seivan";
  SHTextFieldRangeReplacementBlock block = ^(UITextField * textField, NSRange range, NSString * string) {
    XCTAssertEqualObjects(self.textField, textField);
    XCTAssertEqual(range, NSMakeRange(0, 0));
    XCTAssertEqualObjects(string, assertString);
    didAssert = YES;
    return didAssert;
  };
  
  [self.textField SH_setShouldChangeCharactersInRangeWithReplacementStringBlock:block];
  XCTAssertTrue(self.textField.SH_blockShouldChangeCharactersInRangeWithReplacementString(self.textField, NSMakeRange(0,0), assertString));
  XCTAssertTrue(didAssert);
  
  
}

-(void)testSH_setShouldClearBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    didAssert = YES;
    return didAssert;
  };
  
  [self.textField SH_setShouldClearBlock:block];
  XCTAssertTrue(self.textField.SH_blockShouldClear(self.textField));
  XCTAssertTrue(didAssert);
}

-(void)testSH_setShouldReturnBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    didAssert = YES;
    return didAssert;

  };
  
  [self.textField SH_setShouldReturnBlock:block];
  XCTAssertTrue(self.textField.SH_blockShouldReturn(self.textField));
  XCTAssertTrue(didAssert);
  
  
}
@end
