#import "SHTestsSuper.h"


@interface SHTestsIntegration : SHTestsSuper

@end

@implementation SHTestsIntegration

-(void)testSH_setShouldBeginEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    XCTAssertEqualObjects(self.textField, textField);
    didAssert = YES;
    return didAssert;
  };
  [self.textField SH_setShouldBeginEditingBlock:block];
  [self.textField becomeFirstResponder];
  XCTAssertTrue(didAssert);
}

-(void)testSH_setDidBeginEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldBlock block = ^(UITextField * textField) {
    XCTAssertEqualObjects(self.textField, textField);
    didAssert = YES;
  };
  [self.textField SH_setDidBeginEditingBlock:block];
  
  [self.textField becomeFirstResponder];
  XCTAssertTrue(didAssert);
}

-(void)testSH_setShouldEndEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    XCTAssertEqualObjects(self.textField, textField);
    didAssert = YES;
    return didAssert;
    
  };
  [self.textField SH_setShouldEndEditingBlock:block];
  [self.textField becomeFirstResponder];
  [self.textField resignFirstResponder];
  XCTAssertTrue(didAssert);
  
}

-(void)testSH_setDidEndEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldBlock block = ^(UITextField * textField) {
    XCTAssertEqualObjects(self.textField, textField);
    didAssert = YES;
    
  };
  [self.textField SH_setDidEndEditingBlock:block];
  [self.textField becomeFirstResponder];
  [self.textField resignFirstResponder];
  XCTAssertTrue(didAssert);
  
  
}

-(void)testSH_setShouldChangeCharactersInRangeWithReplacementStringBlock;{
  __block BOOL didAssert    = NO;
  NSString * expectedString = @"S";
  [self.textField becomeFirstResponder];
  [tester waitForTimeInterval:1];
  
  SHTextFieldRangeReplacementBlock block = ^(UITextField * textField, NSRange range, NSString * string) {
    XCTAssertEqualObjects(self.textField, textField);
    XCTAssertEqual(range, NSMakeRange(0, 0));
    XCTAssertEqualObjects(string, expectedString);
    didAssert = YES;
    return didAssert;
  };
  
  [self.textField SH_setShouldChangeCharactersInRangeWithReplacementStringBlock:block];
  
    [tester enterText:expectedString intoViewWithAccessibilityLabel:self.textField.accessibilityLabel];
    XCTAssertTrue(didAssert);
  
  
}


-(void)testSH_setShouldClearBlock;{
  __block BOOL didAssert = NO;
  [self.textField becomeFirstResponder];
  [tester waitForTimeInterval:1];
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    XCTAssertEqualObjects(self.textField, textField);
    didAssert = YES;
   return didAssert;
  };
  
 [self.textField SH_setShouldClearBlock:block];
 self.textField.clearButtonMode = UITextFieldViewModeAlways;
 [tester enterText:@"SEIVAN" intoViewWithAccessibilityLabel:self.textField.accessibilityLabel];
  [tester tapViewWithAccessibilityLabel:@"Clear text"];
  XCTAssertTrue(didAssert);
}

-(void)testSH_setShouldReturnBlock;{
  [self.textField becomeFirstResponder];
  [tester waitForTimeInterval:1];
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    didAssert = YES;
    return didAssert;
    
  };
  
  [self.textField becomeFirstResponder];
  [tester waitForTimeInterval:1];

  [self.textField SH_setShouldReturnBlock:block];
  [tester tapViewWithAccessibilityLabel:@"RETURN"];
  
  XCTAssertTrue(didAssert);
  
  
}
@end
