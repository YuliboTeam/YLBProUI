//
//  YLBLabelImageButton.m
//  YLBProUI_Example
//
//  Created by yulibo on 2020/3/26.
//  Copyright © 2020 ProBobo. All rights reserved.
//

#import "YLBLabelImageButton.h"

@interface YLBLabelImageButton ()

@end

@implementation YLBLabelImageButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupCurrentView];
    }
    return self;
}

- (void)setupCurrentView {
    [super setupCurrentView];
    
    _ylbTitleLable = [[UILabel alloc] init];
    _ylbTitleLable.userInteractionEnabled = NO;
    [self addSubview:_ylbTitleLable];
    
    _ylbImage = [[UIImageView alloc] init];
    _ylbImage.userInteractionEnabled = NO;
    [self addSubview:_ylbImage];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
}
@end
