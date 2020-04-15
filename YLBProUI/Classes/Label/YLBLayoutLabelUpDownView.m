//
//  YLBLayoutLabelUpDownView.m
//  YLBProUI_Example
//
//  Created by yulibo on 2020/4/14.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBLayoutLabelUpDownView.h"
#import <YLBCommon/YLBCommon.h>
@interface YLBLayoutLabelUpDownView ()
@property(nonatomic, assign) CGFloat topLabelHeight;
@property(nonatomic, assign) CGFloat middleSpace;
@property(nonatomic, assign) CGFloat bottomLabelHeight;
@end

@implementation YLBLayoutLabelUpDownView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)createUpDownLabelViewWithFrame:(CGRect)frame topLabelHeight:(CGFloat)topLabelHeight middleSpace:(CGFloat)middleSpace bottomLabelHeight:(CGFloat)bottomLabelHeight {
    YLBLayoutLabelUpDownView *upDwonView = [[YLBLayoutLabelUpDownView alloc] initWithFrame:frame topLabelHeight:topLabelHeight middleSpace:middleSpace bottomLabelHeight:bottomLabelHeight];
    return upDwonView;
}

- (instancetype)initWithFrame:(CGRect)frame topLabelHeight:(CGFloat)topLabelHeight middleSpace:(CGFloat)middleSpace bottomLabelHeight:(CGFloat)bottomLabelHeight {
    self = [super initWithFrame:frame];
    if (self) {
        self.topLabelHeight = topLabelHeight;
        self.middleSpace = middleSpace;
        self.bottomLabelHeight = bottomLabelHeight;
        [self setupUpDownSubviews];
    }
    return self;
}

- (void)setupUpDownSubviews {
    _topLabel = [[UILabel alloc] init];
    _topLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_topLabel];
    
    _bottomLabel = [[UILabel alloc] init];
    _bottomLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_bottomLabel];
    
    _topLabel.frame = CGRectMake(0, 0, self.ylb_width, self.topLabelHeight);
    _bottomLabel.frame = CGRectMake(0, _topLabel.ylb_maxY + self.middleSpace, self.ylb_width, self.bottomLabelHeight);
    
}



@end
