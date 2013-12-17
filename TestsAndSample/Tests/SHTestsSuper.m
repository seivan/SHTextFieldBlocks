

#import "SHTestsSuper.h"


@implementation SHTestsSuper

-(void)setUp; {
  self.vc        = UIViewController.new;
  [UIApplication sharedApplication].keyWindow.rootViewController = self.vc;
  [[UIApplication sharedApplication].keyWindow makeKeyAndVisible];

  self.vc.view.backgroundColor = [UIColor redColor];
  self.textField = UITextField.new;
  self.textField.accessibilityLabel = @"Damn place holder";
  [self.vc.view addSubview:self.textField];
  self.textField.frame = CGRectMake(50, 50, 200, 50);


}

@end

