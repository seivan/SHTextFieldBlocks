#import "SHTestsSuper.h"
#import "SHFastEnumerationProtocols.h"

@interface SHTestsIntegration : SHTestsSuper

@end

@implementation SHTestsIntegration

-(void)testSH_setShouldBeginEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    STAssertEqualObjects(self.textField, textField, nil);
    didAssert = YES;
    return didAssert;
  };
  [self.textField SH_setShouldBeginEditingBlock:block];
  [self.textField becomeFirstResponder];
  STAssertTrue(didAssert, nil);
}

-(void)testSH_setDidBeginEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldBlock block = ^(UITextField * textField) {
    STAssertEqualObjects(self.textField, textField, nil);
    didAssert = YES;
  };
  [self.textField SH_setDidBeginEditingBlock:block];
  
  [self.textField becomeFirstResponder];
  STAssertTrue(didAssert, nil);
}

-(void)testSH_setShouldEndEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    STAssertEqualObjects(self.textField, textField, nil);
    didAssert = YES;
    return didAssert;
    
  };
  [self.textField SH_setShouldEndEditingBlock:block];
  [self.textField becomeFirstResponder];
  [self.textField resignFirstResponder];
  STAssertTrue(didAssert, nil);
  
}

-(void)testSH_setDidEndEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldBlock block = ^(UITextField * textField) {
    STAssertEqualObjects(self.textField, textField, nil);
    didAssert = YES;
    
  };
  [self.textField SH_setDidEndEditingBlock:block];
  [self.textField becomeFirstResponder];
  [self.textField resignFirstResponder];
  STAssertTrue(didAssert, nil);
  
  
}

-(void)testSH_setShouldChangeCharactersInRangeWithReplacementStringBlock;{
  __block BOOL didAssert    = NO;
  NSString * expectedString = @"S";

  
  SHTextFieldRangeReplacementBlock block = ^(UITextField * textField, NSRange range, NSString * string) {
    STAssertEqualObjects(self.textField, textField, nil);
    STAssertEquals(range, NSMakeRange(0, 0), nil);
    STAssertEqualObjects(string, expectedString, nil);
    didAssert = YES;
    return didAssert;
  };
  
  [self.textField SH_setShouldChangeCharactersInRangeWithReplacementStringBlock:block];
  
    [tester enterText:expectedString intoViewWithAccessibilityLabel:self.textField.accessibilityLabel];
    STAssertTrue(didAssert, nil);



  
  
  
}

-(void)testSH_setShouldClearBlock;{
  __block BOOL didAssert = NO;

  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    STAssertEqualObjects(self.textField, textField, nil);
    didAssert = YES;
   return didAssert;
  };
  
 [self.textField SH_setShouldClearBlock:block];
 self.textField.clearButtonMode = UITextFieldViewModeAlways;
 [tester enterText:@"SEIVAN" intoViewWithAccessibilityLabel:self.textField.accessibilityLabel];
  [tester tapViewWithAccessibilityLabel:@"Clear text"];
  STAssertTrue(didAssert, nil);
}

-(void)testSH_setShouldReturnBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    didAssert = YES;
    return didAssert;
    
  };
  
  [self.textField SH_setShouldReturnBlock:block];
  [self.textField becomeFirstResponder];
  [tester tapViewWithAccessibilityLabel:@"RETURN"];
  
  STAssertTrue(didAssert, nil);
  
  
}
@end
