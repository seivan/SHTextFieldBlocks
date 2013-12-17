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
-(IBAction)pushSecond:(id)sender;
@end

@implementation SHFirstViewController
-(IBAction)pushSecond:(id)sender; {
  [self performSegueWithIdentifier:@"second" sender:nil];
}
-(void)viewDidLoad; {
  [super viewDidLoad];

}


@end
