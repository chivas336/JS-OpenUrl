//
//  StealthViewControllerHelper.m
//  SchemaForPush
//
//  Created by axiBug on 15/10/27.
//  Copyright © 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import "StealthViewControllerHelper.h"

@implementation StealthViewControllerHelper

+ (void)currentViewControllerPushViewController:(UIViewController *)viewController
{
    UIWindow *rootWindow = [[UIApplication sharedApplication].windows firstObject];
    NSEnumerator *frontToBackWindows = [UIApplication.sharedApplication.windows reverseObjectEnumerator];
    for (UIWindow *window in frontToBackWindows){
        BOOL windowOnMainScreen = window.screen == UIScreen.mainScreen;
        BOOL windowIsVisible = !window.hidden && window.alpha > 0;
        BOOL windowLevelNormal = window.windowLevel == UIWindowLevelNormal;
        
        if (windowOnMainScreen && windowIsVisible && windowLevelNormal) {
            rootWindow = window;
            break;
        }
    }
    
    UIViewController *rootNavigationController = [rootWindow rootViewController];
    if([rootNavigationController isKindOfClass:[UINavigationController class]]){
        
        UIViewController *visibleVC = [(UINavigationController *)rootNavigationController visibleViewController];
        
        [visibleVC.navigationController pushViewController:viewController animated:YES];
    }


}

@end
