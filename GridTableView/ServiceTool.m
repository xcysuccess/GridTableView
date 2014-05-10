//
//  ServiceTool.m
//  GridTableView
//
//  Created by xiangchenyu on 14-5-10.
//  Copyright (c) 2014年 com.alibaba-inc. All rights reserved.
//

#import "ServiceTool.h"

@implementation ServiceTool

+(ServiceTool*) sharedManager
{
    static ServiceTool *sharedManagerInstance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        sharedManagerInstance = [[self alloc] init];
    });
    return sharedManagerInstance;
};

-(void) setViewControllerOffset20 : (UIViewController*) viewController
{
    if ([[[UIDevice currentDevice]systemVersion]floatValue]>=7.0) {
        
        viewController.edgesForExtendedLayout = UIRectEdgeNone;
        
    }
}
@end
