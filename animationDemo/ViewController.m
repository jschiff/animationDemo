//
//  ViewController.m
//  animationDemo
//
//  Created by Jeremy Schiff on 3/8/14.
//  Copyright (c) 2014 Jeremy Schiff. All rights reserved.
//

@import QuartzCore;
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  
  [UIView animateWithDuration:1.0F animations:^{
    CGPoint oldPosition = self.prettySquareView.layer.position;
    CGPoint newPosition = CGPointMake(oldPosition.x, oldPosition.y - 100.0F);
    self.prettySquareView.layer.position = newPosition;
  }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
