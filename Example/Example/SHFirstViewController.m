//
//  SHViewController.m
//  Example
//
//  Created by Seivan Heidari on 5/14/13.
//  Copyright (c) 2013 Seivan Heidari. All rights reserved.
//



#import "SHFirstViewController.h"
#import "SHTextFieldBlocks.h"

@interface SHFirstViewController ()
@end

@implementation SHFirstViewController

-(void)viewDidLoad; {
  [super viewDidLoad];
  double delayInSeconds = 2.0;
  dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
  dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
      [self performSegueWithIdentifier:@"second" sender:nil];
  });
}


@end
