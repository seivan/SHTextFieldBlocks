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

-(void)viewDidAppear:(BOOL)animated; {
  [self performSegueWithIdentifier:@"second" sender:nil];
}


@end
