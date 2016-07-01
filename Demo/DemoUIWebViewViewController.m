//
//  DemoUIWebViewViewController.m
//  Demo
//
//  Created by Lycodes_Dong on 7/1/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "DemoUIWebViewViewController.h"

@implementation DemoUIWebViewViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"https://www.apple.com/tw/"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.myWebView loadRequest:request];

}

@end
