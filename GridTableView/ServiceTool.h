//
//  ServiceTool.h
//  GridTableView
//
//  Created by xiangchenyu on 14-5-10.
//  Copyright (c) 2014年 com.alibaba-inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServiceTool : NSObject

+ (ServiceTool *)sharedManager;

-(void) setViewControllerOffset20 : (UIViewController*) viewController;

@end
