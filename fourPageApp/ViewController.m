//
//  ViewController.m
//  fourPageApp
//
//  Created by Avialdo on 26/06/2015.
//  Copyright (c) 2015 Avialdo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[self.navigationController navigationBar]setBackgroundImage:[UIImage imageNamed:@"background_top"] forBarMetrics:UIBarMetricsDefault];
    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
        
        if([UIScreen mainScreen].bounds.size.height == 568)
        {
            [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background_pattern_568"]]];
        } else
        {
            [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background_pattern_480"]]];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
