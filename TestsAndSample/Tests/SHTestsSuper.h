

#import <XCTest/XCTest.h>
#import "KIF.h"
#import "SHTestCaseAdditions.h"
#import "SHTextFieldBlocks.h"



@interface SHTestsSuper : KIFTestCase
@property(nonatomic,strong) UIViewController * vc;
@property(nonatomic,strong) UITextField      * textField;
@end

