//
//  YLBImageButton.m
//  YLBProUI_Example
//
//  Created by yulibo on 2020/3/27.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBImageButton.h"

@implementation YLBImageButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupCurrentView];
    }
    return self;
}

- (void)setupCurrentView {
    [super setupCurrentView];
    
    _ylbImage = [[UIImageView alloc] init];
    _ylbImage.userInteractionEnabled = NO;
    [self addSubview:_ylbImage];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
}

@end
