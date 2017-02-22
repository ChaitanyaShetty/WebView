//
//  ViewController.h
//  WebView
//
//  Created by chaitanya on 20/09/16.
//  Copyright © 2016 chaitanya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIBarButtonItem *backlb;
@property (strong, nonatomic) IBOutlet UIWebView *myview;
//@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activity;

- (IBAction)backButton:(id)sender;

@end

