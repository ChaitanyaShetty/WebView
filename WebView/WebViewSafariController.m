//
//  WebViewSafariController.m
//  WebView
//
//  Created by chaitanya on 20/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import "WebViewSafariController.h"

@interface WebViewSafariController ()

@end

@implementation WebViewSafariController

- (void)viewDidLoad {
    [super viewDidLoad];
    _myWebView.delegate = self;
//    NSString *strVedio = @"<video controls> <source src=\"video2.mp4\"> </video>";
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"video2" ofType:@"video2""video2"];
//    [_myWebView loadHTMLString:strVedio baseURL:[NSURL fileURLWithPath:path]];
//    
//
    NSURL *videopath = [[NSBundle mainBundle]URLForResource:@"video2" withExtension:@"mp4"];
    NSURLRequest *req = [NSURLRequest requestWithURL:videopath];
    [self.myWebView loadRequest:req];
    
    
//
//    NSString *documentDirectory = @"/Users/chaitanya/Documents/ios/";
//    NSString *htmlFilePath = [documentDirectory stringByAppendingPathComponent:@"RyPress - Quality Software Tutorials.html"];
//    NSString *htmlContents = [NSString stringWithContentsOfFile:htmlFilePath encoding:NSUTF8StringEncoding error:NULL];
//    [_myWebView loadHTMLString:htmlContents baseURL:nil];
//    
    
    
    //[_myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL     URLWithString:@"http://www.apple.com"]]];
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.apple.com"]];
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
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
