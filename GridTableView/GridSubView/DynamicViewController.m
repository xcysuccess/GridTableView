//
//  DynamicViewController.m
//  GridTableView
//
//  Created by xiangchenyu on 14-5-10.
//  Copyright (c) 2014年 com.alibaba-inc. All rights reserved.
//

#import "DynamicViewController.h"
#import "OCGumbo+Query.h"

@implementation DynamicViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self initViewController];
    }
    return self;
}
//https://github.com/zootreeves/Objective-C-HMTL-Parser
- (void) initViewController
{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"index" ofType:@"html"];
    NSString *html = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    OCGumboDocument *document = [[OCGumboDocument alloc] initWithHTMLString : html];
    
    //Basic Usage:
    NSLog(@"\n==================Basic Usage=====================");
    NSLog(@"document:%@", document);
    NSLog(@"has doctype: %d", document.hasDoctype);
    NSLog(@"publicID: %@", document.publicID);
    NSLog(@"systemID:%@", document.systemID);
    NSLog(@"title:%@", document.title);
    NSLog(@"childNodes:%@", document.body.childNodes);
    NSLog(@"documentElement:%@", document.rootElement);
    NSLog(@"head:%@", document.head);
    NSLog(@"body:%@", document.body);
    
    OCGumboElement *element = document.body;
    NSArray *arrayChildNodes = element.childNodes;
    NSLog(@"%d",arrayChildNodes.count);
    
    NSString *nsstr = element.tagName;
    
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
