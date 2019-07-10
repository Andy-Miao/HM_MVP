//
//  HMTextPresenter.h
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HMPresenterProtocol.h"
#import "HMText.h"

@protocol HMTextPresenterProtocol <NSObject>

- (void)setText:(NSString *)text;

@end

@interface HMTextPresenter : NSObject <HMPresenterProtocol>
@property (nonatomic, weak) NSObject<HMTextPresenterProtocol> *view;
@property (nonatomic, weak) UIViewController *viewController;
@property (nonatomic) HMText *text;

- (instancetype)initWithView:(UIView<HMTextPresenterProtocol> *)view;
- (void)presentWithModel:(HMText *)model viewController:(UIViewController *)viewController;
- (void)present;

@end
