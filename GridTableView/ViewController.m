//
//  ViewController.m
//  GridTableView
//
//  Created by xiangchenyu on 14-5-10.
//  Copyright (c) 2014年 com.alibaba-inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self initWebView];
    [self loadWebViewHtml];
}

- (void) initWebView
{
    CGRect rectMainScreen = [[UIScreen mainScreen] bounds];
    self.webView = [[UIWebView alloc] initWithFrame:CGRectMake(rectMainScreen.origin.x, rectMainScreen.origin.y, rectMainScreen.size.width, rectMainScreen.size.height)];
    [self.view addSubview:self.webView];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) loadWebViewHtml
{
    NSString *htmlPath = [[NSBundle mainBundle]pathForResource:@"index" ofType:@"html"];
    NSURL *htmlUrl = [NSURL fileURLWithPath:htmlPath];
    [self.webView loadRequest:[NSURLRequest requestWithURL:htmlUrl]];
}
@end
