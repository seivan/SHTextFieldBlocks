#import "SHTestsSuper.h"


@interface SHTestsIntegration : SHTestsSuper

@end

@implementation SHTestsIntegration

-(void)testSH_setShouldBeginEditingBlock;{
  __block BOOL didAssert = NO;
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    STAssertEqualObjects(self.textField, textField, nil);
    didAssert = YES;
    ;
    return didAssert;
  };
  [self.textField SH_setShouldBeginEditingBlock:block];
  [self.textField becomeFirstResponder];
  
  STAssertTrue(self.textField.SH_blockShouldBeginEditing(self.textField), nil);
  STAssertTrue(didAssert, nil);
}

//-(void)testSH_setDidBeginEditingBlock;{
//  __block BOOL didAssert = NO;
//  SHTextFieldBlock block = ^(UITextField * textField) {
//    STAssertEqualObjects(self.textField, textField, nil);
//    didAssert = YES;
//  };
//  [self.textField SH_setDidBeginEditingBlock:block];
//  
//  self.textField.SH_blockDidBeginEditing(self.textField);
//  STAssertTrue(didAssert, nil);
//}
//
//-(void)testSH_setShouldEndEditingBlock;{
//  __block BOOL didAssert = NO;
//  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
//    STAssertEqualObjects(self.textField, textField, nil);
//    didAssert = YES;
//    ;
//    return didAssert;
//    
//  };
//  
//  [self.textField SH_setShouldEndEditingBlock:block];
//  STAssertTrue(self.textField.SH_blockShouldEndEditing(self.textField), nil);
//  STAssertTrue(didAssert, nil);
//  
//}
//
//-(void)testSH_setDidEndEditingBlock;{
//  __block BOOL didAssert = NO;
//  SHTextFieldBlock block = ^(UITextField * textField) {
//    STAssertEqualObjects(self.textField, textField, nil);
//    didAssert = YES;
//    
//  };
//  [self.textField SH_setDidEndEditingBlock:block];
//  self.textField.SH_blockDidEndEditing(self.textField);
//  STAssertTrue(didAssert, nil);
//  
//  
//}
//
//-(void)testSH_setShouldChangeCharactersInRangeWithReplacementStringBlock;{
//  __block BOOL didAssert = NO;
//  NSString * assertString = @"Seivan";
//  SHTextFieldRangeReplacementBlock block = ^(UITextField * textField, NSRange range, NSString * string) {
//    STAssertEqualObjects(self.textField, textField, nil);
//    STAssertEquals(range, NSMakeRange(0, 0), nil);
//    STAssertEqualObjects(string, assertString, nil);
//    didAssert = YES;
//    return didAssert;
//  };
//  
//  [self.textField SH_setShouldChangeCharactersInRangeWithReplacementStringBlock:block];
//  STAssertTrue(self.textField.SH_blockShouldChangeCharactersInRangeWithReplacementString(self.textField, NSMakeRange(0,0), assertString), nil);
//  STAssertTrue(didAssert, nil);
//  
//  
//}
//
//-(void)testSH_setShouldClearBlock;{
//  __block BOOL didAssert = NO;
//  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
//    didAssert = YES;
//    return didAssert;
//  };
//  
//  [self.textField SH_setShouldClearBlock:block];
//  STAssertTrue(self.textField.SH_blockShouldClear(self.textField), nil);
//  STAssertTrue(didAssert, nil);
//}
//
//-(void)testSH_setShouldReturnBlock;{
//  __block BOOL didAssert = NO;
//  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
//    didAssert = YES;
//    return didAssert;
//    
//  };
//  
//  [self.textField SH_setShouldReturnBlock:block];
//  STAssertTrue(self.textField.SH_blockShouldReturn(self.textField), nil);
//  STAssertTrue(didAssert, nil);
//  
//  
//}
@end
