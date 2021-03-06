//
//  YULIBOViewController.m
//  YLBProUI
//
//  Created by ProBobo on 03/26/2020.
//  Copyright (c) 2020 ProBobo. All rights reserved.
//

#import "YULIBOViewController.h"
#import "YULIBOOCShowAlertController.h"

@interface YULIBOViewController ()
@property(nonatomic, strong) NSMutableArray *dataArray;
@end

static NSString * const kNormalCell = @"kNormalCell";

@implementation YULIBOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = UIColor.whiteColor;
//    self.title = @"功能列表";
    self.navigationItem.title = @"功能列表";
    self.tableView.ylb_y = YLBStatusBarHeight + YLBNavigationBarHeight;
    self.tableView.ylb_height = self.view.ylb_height - (YLBStatusBarHeight + YLBNavigationBarHeight);
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kNormalCell];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [@[
            @{
                @"name":@"弹框",
                @"vc":@"YULIBOOCShowAlertController"
            },
            @{
                @"name":@"UILabel布局",
                @"vc":@"YULIBOShowLabelController"
            },
            @{
                @"name":@"Swift布局",
                @"vc":@"_TtC16YLBProUI_Example25YULIBOShowAlertController"
            },
            @{
                @"name":@"View布局",
                @"vc":@"YULIBOShowLayoutController"
            },
            @{
                @"name":@"选取照片",
                @"vc":@"YULIBOPhotoController"
            },
        ] mutableCopy];
    }
    return _dataArray;
}

- (UITableViewStyle)getUITableViewStyle {
    return UITableViewStylePlain;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kNormalCell];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSDictionary *dict = [self.dataArray objectAtIndex:indexPath.row];
    cell.textLabel.text = dict[@"name"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDictionary *dict = [self.dataArray objectAtIndex:indexPath.row];
    if (indexPath.row == 2) {
        NSString *string = NSStringFromClass([YULIBOShowAlertController class]);
        UIViewController *vc = [[NSClassFromString(string) alloc] init];
        vc.title = dict[@"name"];
        [self.navigationController pushViewController:vc animated:YES];
        return;
    }
    
    UIViewController *vc = [[NSClassFromString(dict[@"vc"]) alloc] init];
    vc.title = dict[@"name"];
    [self.navigationController pushViewController:vc animated:YES];


}

@end
