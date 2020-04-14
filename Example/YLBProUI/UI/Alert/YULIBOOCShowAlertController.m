//
//  YULIBOOCShowAlertController.m
//  YLBProUI_Example
//
//  Created by yulibo on 2020/4/14.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YULIBOOCShowAlertController.h"
#import <YLBProUI/YLBProUI.h>

@interface YULIBOOCShowAlertController ()

@property(nonatomic, strong) YLBAlertView *alertView;
@end

@implementation YULIBOOCShowAlertController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *clickButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    clickButton.center = CGPointMake(self.view.ylb_width/2.0, self.view.ylb_height/2.0);
    clickButton.backgroundColor = UIColor.cyanColor;
    [clickButton setTitle:@"显示弹框" forState:UIControlStateNormal];
    [clickButton addTarget:self action:@selector(clickButtonMethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clickButton];
}

- (void)clickButtonMethod:(id)sender {
    [self showAlertView];
}

- (void)showAlertView {
    UIColor *bgColor = [UIColor colorWithWhite:0 alpha:0.4];
    UIView *showView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 300)];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    titleLabel.center = CGPointMake(showView.ylb_width/2.0, showView.ylb_height/2.0);
    titleLabel.text = @"弹框页";
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [showView addSubview:titleLabel];
    showView.backgroundColor = UIColor.whiteColor;
    showView.layer.cornerRadius = 10;
    
    YLBAlertView *alertView = [YLBAlertView createAlertView];
    _alertView = alertView;
    [alertView setBackgroundViewColor:bgColor];
    [alertView showView:showView alignment:YLBAlertViewAlignmentCenter];
    __weak __typeof(self)weakSelf = self;
    alertView.hideViewBlock = ^{
        weakSelf.alertView = nil;//全局变量需要手动释放设置为nil，局部变量可以不设置为nil
    };
}

@end
