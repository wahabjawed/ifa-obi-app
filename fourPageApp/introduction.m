//
//  introduction.m
//  fourPageApp
//
//  Created by Avialdo on 26/06/2015.
//  Copyright (c) 2015 Avialdo. All rights reserved.
//

#import "introduction.h"

@interface introduction ()

@end

@implementation introduction

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[self.navigationController navigationBar]setBackgroundImage:[UIImage imageNamed:@"intro_top"] forBarMetrics:UIBarMetricsDefault];
    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
        
            if([UIScreen mainScreen].bounds.size.height == 568)
            {
                [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"intro_body_568"]]];
            } else
            {
                [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"intro_body_480"]]];
            }
        
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
