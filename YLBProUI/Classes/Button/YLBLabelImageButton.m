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
    
    _titleLabel = [[UILabel alloc] init];
    _titleLabel.userInteractionEnabled = NO;
    [self addSubview:_titleLabel];
    
    _imageView = [[UIImageView alloc] init];
    _imageView.userInteractionEnabled = NO;
    [self addSubview:_imageView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
}
@end
