//
//  divine.m
//  fourPageApp
//
//  Created by Avialdo on 26/06/2015.
//  Copyright (c) 2015 Avialdo. All rights reserved.
//

#import "divine.h"
#import "divine_detail.h"

@interface divine ()

@end

@implementation divine{
    NSString *buttonValue;
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
    // Do any additional setup after loading the view.
    [[self.navigationController navigationBar]setBackgroundImage:[UIImage imageNamed:@"basic_top"] forBarMetrics:UIBarMetricsDefault];
    
    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
        
        if([UIScreen mainScreen].bounds.size.height == 568)
        {
            [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"divine_home_568"]]];
        } else
        {
            [self.myView setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"divine_home_480"]]];
        }
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)alafia_action:(id)sender {
    buttonValue = @"ALAFIA_Details";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (IBAction)ejife_action:(id)sender
{
    buttonValue = @"EJIFE_Details";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (IBAction)etawa_action:(id)sender {
    buttonValue = @"ETAWA_Details";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (IBAction)okanran_action:(id)sender {
    buttonValue = @"OKANRAN_Details";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (IBAction)oyeku_action:(id)sender {
    buttonValue = @"OYEKU_Details";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"detail_screeen"])
    {
        divine_detail *d = segue.destinationViewController;
        d.bg_name = buttonValue;
    }
}
@end
