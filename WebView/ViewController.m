//
//  ViewController.m
//  WebView
//
//  Created by chaitanya on 20/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = false;
    _backlb.enabled = false;
    // Do any additional setup after loading the view, typically from a nib.
    [self.myview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.gmail.com"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
  
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    _backlb.enabled = _myview.canGoBack;

//    [self.activity stopAnimating];
//    self.activity.hidden = YES;
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"search is not found" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:cancel];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
    
}


- (IBAction)backButton:(id)sender {
    if ([_myview canGoBack]) {
        _backlb.enabled = YES;
        [_myview goBack];
    }
}
@end
