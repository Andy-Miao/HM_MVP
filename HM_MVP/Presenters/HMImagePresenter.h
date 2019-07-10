//
//  HMImagePresenter.h
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HMImage.h"
#import "HMPresenterProtocol.h"
#import <UIKit/UIKit.h>

@protocol  HMImageProtocol

- (void)setImage:(UIImage *)image;

@end

@interface HMImagePresenter : NSObject<HMPresenterProtocol>

@property (nonatomic, weak) NSObject<HMImageProtocol> *view;
@property (nonatomic) HMImage *photo;
@property (nonatomic, weak) UIViewController *viewController;

- (instancetype)initWithView:(UIView<HMImageProtocol> *)view;
- (void)presentWithModel:(HMImage *)model viewController:(UIViewController *)viewController;
- (void)present;
@end
