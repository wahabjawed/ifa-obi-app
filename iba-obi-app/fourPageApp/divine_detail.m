//
//  dicine_detail.m
//  fourPageApp
//
//  Created by Avialdo on 27/06/2015.
//  Copyright (c) 2015 Avialdo. All rights reserved.
//

#import "divine_detail.h"

@interface divine_detail ()

@end

@implementation divine_detail{
    NSString *imageName;
}

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
    self.myImageView.image = [UIImage imageNamed:self.imageName];
    self.myTextView.text = self.innerText;
    self.myTextView.showsVerticalScrollIndicator = true;
    self.myTextView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
