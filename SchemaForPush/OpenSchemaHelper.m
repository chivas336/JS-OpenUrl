//
//  OpenSchemaHelper.m
//  SchemaForPush
//
//  Created by axiBug on 15/10/27.
//  Copyright © 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import "OpenSchemaHelper.h"
#import "NextViewController.h"
#import <JLRoutes.h>


@implementation OpenSchemaHelper


+ (void)load
{
    [JLRoutes addRoute:AppURLPushScheme handler:^BOOL(NSDictionary *parameters) {
        NextViewController *viewController = [[NextViewController alloc] init];
        [StealthViewControllerHelper currentViewControllerPushViewController:viewController];
        return YES;
    }];
    
}



@end
