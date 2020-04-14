//
//  YLBHorizontalView.m
//  YLBProUI_Example
//
//  Created by yulibo on 2020/4/14.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBHorizontalView.h"
#import <YLBCommon/YLBCommon.h>

@interface YLBHorizontalView()
@property(nonatomic, assign) CGFloat leftSpace;
@property(nonatomic, assign) CGFloat rightSpace;
@end

@implementation YLBHorizontalView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)createViewWithSuperViewFrame:(CGRect)superViewFrame height:(CGFloat)height leftSpace:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace {
    YLBHorizontalView *view = [[YLBHorizontalView alloc] initWithSuperViewFrame:superViewFrame height:height leftSpace:leftSpace rightSpace:rightSpace];
    return view;
}

- (instancetype)initWithSuperViewFrame:(CGRect)superViewFrame height:(CGFloat)height leftSpace:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace {
    self = [super initWithFrame:superViewFrame];
    if (self) {
        self.leftSpace = leftSpace;
        self.rightSpace = rightSpace;
        self.frame = CGRectMake(leftSpace, 0, superViewFrame.size.width - leftSpace - rightSpace, height);
    }
    return self;
}
@end