//
//  YULIBOShowLabelController.m
//  YLBProUI_Example
//
//  Created by yulibo on 2020/4/14.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YULIBOShowLabelController.h"
#import <YLBProUI/YLBLayoutLabelUpDownView.h>

@interface YULIBOShowLabelController ()

@end

@implementation YULIBOShowLabelController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    YLBLayoutLabelUpDownView *labelView = [YLBLayoutLabelUpDownView createUpDownLabelViewWithFrame:CGRectMake(0, 0, self.view.ylb_width, 50) topLabelHeight:25 middleSpace:0 bottomLabelHeight:25];
    [labelView ylb_becomeCenterInSuperView:self.view];
    labelView.topLabel.text = @"I'm topLabel";
    labelView.bottomLabel.text = @"I'm bottomLabel";
    [self.view addSubview:labelView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
