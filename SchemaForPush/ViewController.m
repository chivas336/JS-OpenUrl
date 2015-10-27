//
//  ViewController.m
//  SchemaForPush
//
//  Created by axiBug on 15/10/27.
//  Copyright © 2015年 杭州贝宇网络有限公司. All rights reserved.
//

#import "ViewController.h"
#import "ClickView.h"

#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    ClickView *clickView = [[[NSBundle mainBundle] loadNibNamed:@"ClickView" owner:self options:nil] firstObject];
    [self.view addSubview:clickView];
    
    [clickView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.trailing.and.top.mas_equalTo(self.view);
        make.height.mas_equalTo(@(50));
    }];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
