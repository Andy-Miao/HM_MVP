//
//  HMImageViewController.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMImageViewController.h"

@interface HMImageViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation HMImageViewController

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.presenter = [HMImagePresenter new];
    self.presenter.view = self;
    self.presenter.viewController = self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.presenter present];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setImage:(UIImage *)image
{
    self.imageView.image = image;
}
@end
