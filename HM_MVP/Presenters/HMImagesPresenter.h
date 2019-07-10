//
//  HMImagesPresenter.h
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HMPresenterProtocol.h"
#import "HMImages.h"

@interface HMImagesPresenter : NSObject<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, HMPresenterProtocol>

@property (nonatomic, weak) UICollectionView *view;
@property (nonatomic, weak) UIViewController *viewController;
@property (nonatomic) HMImages *photoList;
- (instancetype)initWithView:(UICollectionView *)view;
- (void)presentWithModel:(HMImages *)model viewController:(UIViewController *)viewController;
- (void)present;

@end
