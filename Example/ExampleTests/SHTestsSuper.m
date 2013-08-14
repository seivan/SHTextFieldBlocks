

#import "SHTestsSuper.h"


@implementation SHTestsSuper

-(void)setUp; {
  self.vc        = UIViewController.new;
  self.textField = UITextField.new;
  [self.vc.view addSubview:self.textField];
  self.textField.frame = CGRectMake(50, 50, 200, 50);
  [UIApplication sharedApplication].keyWindow.rootViewController = self.vc;
  [[UIApplication sharedApplication].keyWindow makeKeyAndVisible];

}

@end

