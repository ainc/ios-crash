//
//  ViewController.m
//  AwesomeIncU
//
//  Created by Will Oldham on 5/21/14.
//  Copyright (c) 2014 WILLOLDHAM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)myButtonPressed:(id)sender {
    self.MyLabel.text = self.myTextField.text;
    [self.myTextField resignFirstResponder];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    self.MyLabel.text = self.myTextField.text;
    [self.myTextField resignFirstResponder];
    return YES;
}

@end

