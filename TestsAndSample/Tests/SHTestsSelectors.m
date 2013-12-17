
#import "SHTestsSuper.h"


@interface SHTestsSelectors : SHTestsSuper

@end

@implementation SHTestsSelectors

-(void)testSH_setShouldBeginEditingBlock;{
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    return YES;
  };
  [self.textField SH_setShouldBeginEditingBlock:block];
  XCTAssertEqualObjects(self.textField.SH_blockShouldBeginEditing, block);
  [self.textField SH_setShouldBeginEditingBlock:nil];
  XCTAssertNil(self.textField.SH_blockShouldBeginEditing);
}

-(void)testSH_setDidBeginEditingBlock;{
  SHTextFieldBlock block = ^(UITextField * textField) {

  };
  [self.textField SH_setDidBeginEditingBlock:block];
  XCTAssertEqualObjects(self.textField.SH_blockDidBeginEditing, block);
  
  [self.textField SH_setDidBeginEditingBlock:nil];
  XCTAssertNil(self.textField.SH_blockDidBeginEditing);

}

-(void)testSH_setShouldEndEditingBlock;{
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    return YES;
  };

  [self.textField SH_setShouldEndEditingBlock:block];
  XCTAssertEqualObjects(self.textField.SH_blockShouldEndEditing, block);
  
  [self.textField SH_setShouldEndEditingBlock:nil];
  XCTAssertNil(self.textField.SH_blockShouldEndEditing);

}

-(void)testSH_setDidEndEditingBlock;{
  SHTextFieldBlock block = ^(UITextField * textField) {
    
  };
  [self.textField SH_setDidEndEditingBlock:block];
  XCTAssertEqualObjects(self.textField.SH_blockDidEndEditing, block);
  
  [self.textField SH_setDidEndEditingBlock:nil];
  XCTAssertNil(self.textField.SH_blockDidEndEditing);

  
}

-(void)testSH_setShouldChangeCharactersInRangeWithReplacementStringBlock;{
  SHTextFieldRangeReplacementBlock block = ^(UITextField * textField, NSRange range, NSString * string) {
    return YES;
  };
  
  [self.textField SH_setShouldChangeCharactersInRangeWithReplacementStringBlock:block];
  XCTAssertEqualObjects(self.textField.SH_blockShouldChangeCharactersInRangeWithReplacementString, block);
  
  
  [self.textField SH_setShouldChangeCharactersInRangeWithReplacementStringBlock:nil];
  XCTAssertNil(self.textField.SH_blockShouldChangeCharactersInRangeWithReplacementString);

  
}

-(void)testSH_setShouldClearBlock;{
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    return YES;
  };

  [self.textField SH_setShouldClearBlock:block];
  XCTAssertEqualObjects(self.textField.SH_blockShouldClear, block);
  
  [self.textField SH_setShouldClearBlock:nil];
  XCTAssertNil(self.textField.SH_blockShouldClear);
}

-(void)testSH_setShouldReturnBlock;{
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    return YES;
  };
  
  [self.textField SH_setShouldReturnBlock:block];
  XCTAssertEqualObjects(self.textField.SH_blockShouldReturn, block);
  
  [self.textField SH_setShouldReturnBlock:nil];
  XCTAssertNil(self.textField.SH_blockShouldReturn);

  
}


@end