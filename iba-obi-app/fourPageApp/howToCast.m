//
//  howToCast.m
//  fourPageApp
//
//  Created by Avialdo on 12/07/2015.
//  Copyright (c) 2015 Avialdo. All rights reserved.
//

#import "howToCast.h"

@interface howToCast ()

@end

@implementation howToCast

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
    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
        
        if([UIScreen mainScreen].bounds.size.height == 568)
        {
            [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background_pattern_568"]]];
        }
        else
        {
            [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"background_pattern_568"]]];
        }
    }
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.myTextView.showsVerticalScrollIndicator = true;
    self.myTextView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    
    // To set the text //
    //self.myTextView.text = @"hello hanuman sir";
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
