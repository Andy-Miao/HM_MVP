//
//  HMPresenterProtocol.h
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HMPresenterProtocol
- (void)setView:(NSObject *)view;
- (void)setViewController:(UIViewController *)viewController;

@optional
- (void)present;
- (void)presentWithModel:(id)model viewController:(UIViewController *)viewController;


@end
