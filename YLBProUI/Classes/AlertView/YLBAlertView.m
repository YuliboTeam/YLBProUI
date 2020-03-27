//
//  YLBAlertView.m
//  YLBProUI_Example
//
//  Created by yulibo on 2020/3/27.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBAlertView.h"
#import <YLBCommon/YLBCommon.h>

@interface YLBAlertView ()
@property(nonatomic, strong) UIView *contentView;
@property(nonatomic, strong) UIView *bgView;
@property(nonatomic, assign) BOOL isAddContentView;
@end

@implementation YLBAlertView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

+ (instancetype)createAlertView {
    YLBAlertView *alert = [[YLBAlertView alloc] initWithFrame:CGRectMake(0, 0, YLB_SCREEN_WIDTH, YLB_SCREEN_HEIGHT)];
    return alert;
    
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.isTouchEnable = YES;
        self.bgView.frame = self.bounds;
        [self addSubview:self.bgView];
        
        [self setUpSubviews];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.bgView.frame = self.bounds;
    
}
#pragma mark - 初始化
- (void)setUpSubviews {
    self.bgView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
}

- (UIView *)bgView {
    if (!_bgView) {
        _bgView = [[UIView alloc] init];
        _bgView.userInteractionEnabled = NO;
    }
    return _bgView;
}
#pragma mark - dealloc
- (void)dealloc {
    
}
#pragma mark - 显示弹框
- (void)showView:(UIView *)view {
    if (!_isAddContentView) {
        _isAddContentView = YES;
        _contentView = view;
        if (_contentView) {
            _contentView.center = CGPointMake(self.ylb_width/2.0, self.ylb_height/2.0);
            _contentView.userInteractionEnabled = YES;
            [self addSubview:_contentView];
        }
        
        [UIApplication.sharedApplication.delegate.window addSubview:self];
    }
}
#pragma mark - 移除弹框
- (void)hideView {
    [_contentView removeFromSuperview];
    _contentView = nil;
    _isAddContentView = NO;
    [self removeFromSuperview];
}
#pragma mark - 设置弹框背景颜色
- (void)setBackgroundViewColor:(UIColor *)color {
    self.bgView.backgroundColor = color;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (!_isTouchEnable) {
        return;
    }
    UITouch *touch = [touches anyObject];
    if (_contentView && _contentView == touch.view) {
        return;
    }
    [self hideView];
}

@end
