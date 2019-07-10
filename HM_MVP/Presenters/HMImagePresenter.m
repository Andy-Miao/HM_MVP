//
//  HMImagePresenter.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMImagePresenter.h"

@implementation HMImagePresenter

- (instancetype)initWithView:(UIView<HMImageProtocol> *)view
{
    if (self = [self init]) {
        self.view = view;
    }
    
    return self;
}

- (void)presentWithModel:(HMImage *)model viewController:(UIViewController *)viewController
{
    self.photo = model;
    self.viewController = viewController;
    [self present];
}

- (void)present
{
    [self.view setImage:self.photo.image];
}


@end
