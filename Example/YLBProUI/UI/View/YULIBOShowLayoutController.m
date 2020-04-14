//
//  YULIBOShowLayoutController.m
//  YLBProUI_Example
//
//  Created by yulibo on 2020/4/14.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YULIBOShowLayoutController.h"
#import <YLBProUI/YLBHorizontalView.h>

@interface YULIBOShowLayoutController ()

@end

@implementation YULIBOShowLayoutController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    YLBHorizontalView *horizontalView = [YLBHorizontalView createViewWithSuperViewFrame:self.view.frame height:200 leftSpace:10 rightSpace:10];
    horizontalView.ylb_y = 200;
    horizontalView.backgroundColor = UIColor.cyanColor;
    [self.view addSubview:horizontalView];
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
