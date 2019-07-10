//
//  HMTextPresenter.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMTextPresenter.h"


@implementation HMTextPresenter 

- (instancetype)initWithView:(UIView<HMTextPresenterProtocol> *)view
{
    if (self = [self init]) {
        self.view = view;
    }
    
    return self;
}

- (void)presentWithModel:(HMText *)model viewController:(UIViewController *)viewController
{
    self.text = model;
    self.viewController = viewController;
    [self present];
}

- (void)present
{
    [self.view setText:self.text.text];
}

@end
