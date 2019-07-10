//
//  HMTextViewController.h
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMTextPresenter.h"

@interface HMTextViewController : UIViewController <HMTextPresenterProtocol>
@property (nonatomic,strong) HMTextPresenter *presenter;

@end
