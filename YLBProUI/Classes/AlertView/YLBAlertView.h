//
//  YLBAlertView.h
//  YLBProUI_Example
//
//  Created by yulibo on 2020/3/27.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YLBAlertView : UIView

@property(nonatomic, assign) BOOL isTouchEnable;

+ (instancetype)createAlertView;

- (void)showView:(UIView *)view;
- (void)hideView;
- (void)setBackgroundViewColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
