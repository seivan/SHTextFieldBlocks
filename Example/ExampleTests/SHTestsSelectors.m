#import "SHTestsSuper.h"



@interface SHTestsSelectors : SHTestsSuper

@end

@implementation SHTestsSelectors

-(void)testSH_setShouldBeginEditingBlock;{
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    return YES;
  };
  [self.textField SH_setShouldBeginEditingBlock:block];
  STAssertEqualObjects(self.textField.SH_blockShouldBeginEditing, block, nil);
  [self.textField SH_setShouldBeginEditingBlock:nil];
  STAssertNil(self.textField.SH_blockShouldBeginEditing, nil);
}

-(void)testSH_setDidBeginEditingBlock;{
  SHTextFieldBlock block = ^(UITextField * textField) {

  };
  [self.textField SH_setDidBeginEditingBlock:block];
  STAssertEqualObjects(self.textField.SH_blockDidBeginEditing, block, nil);
  
  [self.textField SH_setDidBeginEditingBlock:nil];
  STAssertNil(self.textField.SH_blockDidBeginEditing, nil);

}

-(void)testSH_setShouldEndEditingBlock;{
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    return YES;
  };

  [self.textField SH_setShouldEndEditingBlock:block];
  STAssertEqualObjects(self.textField.SH_blockShouldEndEditing, block, nil);
  
  [self.textField SH_setShouldEndEditingBlock:nil];
  STAssertNil(self.textField.SH_blockShouldEndEditing, nil);

}

-(void)testSH_setDidEndEditingBlock;{
  SHTextFieldBlock block = ^(UITextField * textField) {
    
  };
  [self.textField SH_setDidEndEditingBlock:block];
  STAssertEqualObjects(self.textField.SH_blockDidEndEditing, block, nil);
  
  [self.textField SH_setDidEndEditingBlock:nil];
  STAssertNil(self.textField.SH_blockDidEndEditing, nil);

  
}

-(void)testSH_setShouldChangeCharactersInRangeWithReplacementStringBlock;{
  SHTextFieldRangeReplacementBlock block = ^(UITextField * textField, NSRange range, NSString * string) {
    return YES;
  };
  
  [self.textField SH_setShouldChangeCharactersInRangeWithReplacementStringBlock:block];
  STAssertEqualObjects(self.textField.SH_blockShouldChangeCharactersInRangeWithReplacementString, block, nil);
  
  
  [self.textField SH_setShouldChangeCharactersInRangeWithReplacementStringBlock:nil];
  STAssertNil(self.textField.SH_blockShouldChangeCharactersInRangeWithReplacementString, nil);

  
}

-(void)testSH_setShouldClearBlock;{
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    return YES;
  };

  [self.textField SH_setShouldClearBlock:block];
  STAssertEqualObjects(self.textField.SH_blockShouldClear, block, nil);
  
  [self.textField SH_setShouldClearBlock:nil];
  STAssertNil(self.textField.SH_blockShouldClear,nil);
}

-(void)testSH_setShouldReturnBlock;{
  SHTextFieldPredicateBlock block = ^(UITextField * textField) {
    return YES;
  };
  
  [self.textField SH_setShouldReturnBlock:block];
  STAssertEqualObjects(self.textField.SH_blockShouldReturn, block, nil);
  
  [self.textField SH_setShouldReturnBlock:nil];
  STAssertNil(self.textField.SH_blockShouldReturn,nil);

  
}


@end