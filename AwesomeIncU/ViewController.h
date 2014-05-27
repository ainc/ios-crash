//
//  ViewController.h
//  AwesomeIncU
//
//  Created by Will Oldham on 5/21/14.
//  Copyright (c) 2014 WILLOLDHAM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController < UITextFieldDelegate >

@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@property (weak, nonatomic) IBOutlet UILabel *MyLabel;

- (IBAction)myButtonPressed:(id)sender;

@end
