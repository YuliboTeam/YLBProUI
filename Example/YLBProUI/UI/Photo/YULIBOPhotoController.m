//
//  YULIBOPhotoController.m
//  YLBProUI_Example
//
//  Created by yulibo on 2020/8/13.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YULIBOPhotoController.h"

@interface YULIBOPhotoController ()<
UIImagePickerControllerDelegate
,UINavigationControllerDelegate
>
@property (nonatomic, strong) UIImagePickerController *imagePickerController;
@end

@implementation YULIBOPhotoController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    [self setupSubviews];
}

//- (void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//    //设置当前导航条背景色
//    self.navigationController.navigationBar.barTintColor = UIColor.whiteColor;
//    [self.navigationController setNavigationBarHidden:YES animated:animated];
//}

- (void)setupSubviews {
    UIButton *button = [[UIButton alloc] init];
    button.frame = CGRectMake(0, 0, 200, 50);
    button.center = CGPointMake(self.view.ylb_width/2.0, self.view.ylb_height/2.0);
    button.backgroundColor = UIColor.cyanColor;
    [button addTarget:self action:@selector(buttonMethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

#pragma mark - Click

- (void)buttonMethod:(id)sender {
    [self selectImageFromAlbum];
}

#pragma mark -从相册获取图片或视频-
- (void)selectImageFromAlbum{
    self.imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:self.imagePickerController animated:YES completion:nil];
}

#pragma mark -getter方法-
- (UIImagePickerController *)imagePickerController{
    if (!_imagePickerController){
        UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
        imagePickerController.delegate = self;
        imagePickerController.allowsEditing = NO;//允许用户编辑照片
        imagePickerController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;//转场动画
        _imagePickerController = imagePickerController;
    }
    return _imagePickerController;
}

#pragma mark -UIImagePickerControllerDelegate-
//适用获取所有媒体资源，只需判断资源类型
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    NSLog(@"选择完毕-----info:%@", info);
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - 第一:实现navigationController代理

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated

{

    UIButton *cusbtn = [[UIButton alloc]initWithFrame:CGRectMake(0,0,50,30)];

    [cusbtn setTitle:@"返回" forState:(UIControlStateNormal)];

    cusbtn.backgroundColor = [UIColor redColor];

    [cusbtn addTarget:self action:@selector(click) forControlEvents:(UIControlEventTouchUpInside)];

    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithCustomView:cusbtn];

    [viewController.navigationItem setRightBarButtonItem:btn animated:NO];

}

#pragma mark - 第二:实现click方法即可完成;self.imagePicker为弱引用

- (void)click{

    [self imagePickerControllerDidCancel:self.imagePickerController];

}

@end
