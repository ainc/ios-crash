//
//  UISamplesVC.m
//  AwesomeIncU
//
//  Created by Will Oldham on 5/22/14.
//  Copyright (c) 2014 WILLOLDHAM. All rights reserved.
//

#import "UISamplesVC.h"

@interface UISamplesVC ()

@end

@implementation UISamplesVC

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    [UIView animateWithDuration:1 animations:^{
        CGRect frame = self.myImageView.frame;
        frame.origin.y += 50;
        self.myImageView.frame = frame;
    } completion:^(BOOL finished) {
        CGRect frame = self.myImageView.frame;
        frame.origin.y -= 50;
        self.myImageView.frame = frame;
    }];
    
}

@end
