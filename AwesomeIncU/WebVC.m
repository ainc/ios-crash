//
//  WebVC.m
//  AwesomeIncU
//
//  Created by Will Oldham on 5/21/14.
//  Copyright (c) 2014 WILLOLDHAM. All rights reserved.
//

#import "WebVC.h"

@interface WebVC ()

@end

@implementation WebVC

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
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.awesomeinc.org/"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.myWebView loadRequest:request];
    
}

-(void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    if(UIInterfaceOrientationIsLandscape(toInterfaceOrientation)){
        float h = self.myWebView.frame.size.height;
        float w = self.myWebView.frame.size.width;
        float x = self.myWebView.frame.origin.x;
        float y = self.myWebView.frame.origin.y;
        CGRect f = CGRectMake(x, y, h, w);
        self.myWebView.frame = f;
    }
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    
    NSURL *url = [[NSURL alloc] initWithString:textField.text];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.myWebView loadRequest:request];
    
    [self.urlField resignFirstResponder];
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)webViewDidStartLoad:(UIWebView *)webView {

    [self.activity startAnimating];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView {

    [self.activity stopAnimating];
    
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
