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
    NSString *innerText;
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
    innerText = @"This Sign Indicates:\n\nAuspiciousness\nAll Energies Are Open\nEverything Is Flowing\nUrges One To Move Forward\nStay Focus & Centered\n\nHowever:\n\nOpenness May Lead To Instability\nBe Aware Of Being Fickle\nBeing Too Focus Can Be Limiting\nBe Prepared For Disruption\n\nNote: You May Choose To Learn What The Characteristic Of This Are By Exploring The Intermediate and Advance Divination";
    
    imageName = @"ALAFIA";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (IBAction)ejife_action:(id)sender
{
    innerText = @"This Sign Indicates:\n\nAuspiciousness\nBalance & Stability\nGrounded Energies\nMaintains Vitality\nBalance Between Light & Dark\nDefinite & Confidence\n\nNote: You May Choose To Learn What The Characteristic Of This Are By Exploring The Intermediate and Advance Divination";
    
    imageName = @"EJIFE";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (IBAction)etawa_action:(id)sender {
    innerText = @"This Sign Indicates:\n\nUncertainty\nAn Element Of Contraction\nA Seed Of Doubt\nSomething May Be Hidden\nSharpen Ones Perception\nOne May Lack Resources\n\nHowever:\n\nStay Aware & Be Prepared\nYou May Cast Again To Be Sure\n\nNote: You May Choose To Learn What The Characteristic Of This Are By Exploring The Intermediate and Advance Divination";
    
    imageName = @"ETAWA";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (IBAction)okanran_action:(id)sender {
    innerText = @"This Sign Indicates:\n\nBlockages\nContracting Energies\nFaint Light Along The Path\nShutting Down Or Waning\nStruggles Could Be Present\nLack Of Commitment\n\nHowever:\n\nBe Aware Of Obstacles\nApply Effort & Dedication\n\nNote: You May Choose To Learn What The Characteristic Of This Are By Exploring The Intermediate and Advance Divination";
    
    imageName = @"OKANRAN";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (IBAction)oyeku_action:(id)sender {
    innerText = @"This Sign Indicates:\nProtection or BlockagesUnseen\nForces At Play\nPotential Damaging Elements\nUnknown Obstruction\nVeil Of Darkness\nMay Be Growth Opportunity\n\nHowever:\n\nStay Aware & Be Prepared\nOne May Ask Babalawo For Clarity\n\nNote: You May Choose To Learn What The Characteristic Of This Are By Exploring The Intermediate and Advance Divination";
    
    imageName = @"OYEKU";
    [self performSegueWithIdentifier:@"detail_screeen" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"detail_screeen"])
    {
        divine_detail *d = segue.destinationViewController;
        d.innerText = innerText;
        d.imageName = imageName;
    }
}
@end
