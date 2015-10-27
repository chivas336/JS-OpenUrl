//
//  ClickView.m
//  SchemaForPush
//
//  Created by axiBug on 15/10/27.
//  Copyright © 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import "ClickView.h"

@implementation ClickView

- (IBAction)openSchema:(UIButton *)sender {
    
    NSURL *viewUserURL = [NSURL URLWithString:[NSString stringWithFormat:@"%@://%@",HostURLScheme,AppURLPushScheme]];
    [[UIApplication sharedApplication] openURL:viewUserURL];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
