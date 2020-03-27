//
//  YLBImageButton.h
//  YLBProUI_Example
//
//  Created by yulibo on 2020/3/27.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBBaseButton.h"

NS_ASSUME_NONNULL_BEGIN

@protocol YLBImageButtonDelegate <NSObject>

@optional

@end

@interface YLBImageButton : YLBBaseButton
@property(nonatomic, strong) UILabel *titleLabel;
@property(nonatomic, strong) UIImageView *imageView;

@property(nonatomic, weak) id<YLBImageButtonDelegate> delegate;
/**
 设置button和imageView的坐标
 */
- (void)setButtonRect:(CGRect)buttonRect imageViewRect:(CGRect)imageViewRect;

@end

NS_ASSUME_NONNULL_END
