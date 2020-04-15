//
//  YLBLayoutLabelUpDownView.h
//  YLBProUI_Example
//
//  Created by yulibo on 2020/4/14.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YLBLayoutLabelUpDownView : UIView
@property(nonatomic, strong) UILabel *topLabel;
@property(nonatomic, strong) UILabel *bottomLabel;
+ (instancetype)createUpDownLabelViewWithFrame:(CGRect)frame topLabelHeight:(CGFloat)topLabelHeight middleSpace:(CGFloat)middleSpace bottomLabelHeight:(CGFloat)bottomLabelHeight;
- (instancetype)initWithFrame:(CGRect)frame NS_UNAVAILABLE;
- (instancetype)initWithFrame:(CGRect)frame topLabelHeight:(CGFloat)topLabelHeight middleSpace:(CGFloat)middleSpace bottomLabelHeight:(CGFloat)bottomLabelHeight NS_DESIGNATED_INITIALIZER;
@end

NS_ASSUME_NONNULL_END
