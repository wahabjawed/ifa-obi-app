//
//  dicine_detail.h
//  fourPageApp
//
//  Created by Avialdo on 27/06/2015.
//  Copyright (c) 2015 Avialdo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface divine_detail : UIViewController

@property (weak,nonatomic) NSString *imageName;
@property (weak,nonatomic) NSString *innerText;
@property (weak, nonatomic) IBOutlet UIView *myView;
@property (strong, nonatomic) IBOutlet UITextView *myTextView;
@property (strong, nonatomic) IBOutlet UIImageView *myImageView;

@end
