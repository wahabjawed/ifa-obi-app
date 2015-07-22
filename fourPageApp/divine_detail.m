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
    
    NSLog(@"the value is: %@",self.bg_name);
    
    [[self.navigationController navigationBar]setBackgroundImage:[UIImage imageNamed:@"basic_top"] forBarMetrics:UIBarMetricsDefault];
    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
        
        if([UIScreen mainScreen].bounds.size.height == 568)
        {
            imageName = [self.bg_name stringByAppendingString:@"_568"];
            
        } else
        {
            imageName = [self.bg_name stringByAppendingString:@"_480"];
        }
        
    }
    
    [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:imageName]]];
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
