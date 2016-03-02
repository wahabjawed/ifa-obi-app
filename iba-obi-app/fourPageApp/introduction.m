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

    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)])
    {
        if([UIScreen mainScreen].bounds.size.height == 568)
        {
            [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background_pattern_568"]]];
        }
        else
        {
            [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background_pattern_480"]]];
        }
    }
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.myTextView.showsVerticalScrollIndicator = true;
    self.myTextView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    
    
    
    // To set the text //
    // self.myTextView.text = @"hello hanuman sir";
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end