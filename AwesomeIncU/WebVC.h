//
//  WebVC.h
//  AwesomeIncU
//
//  Created by Will Oldham on 5/21/14.
//  Copyright (c) 2014 WILLOLDHAM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebVC : UIViewController <UITextFieldDelegate, UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *myWebView;

@property (weak, nonatomic) IBOutlet UITextField *urlField;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activity;

@end
