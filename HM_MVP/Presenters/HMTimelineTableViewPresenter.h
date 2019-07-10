//
//  HMTimelineTableViewPresenter.h
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "HMPresenterProtocol.h"

@interface HMTimelineTableViewPresenter : NSObject <UITableViewDataSource, UITableViewDelegate,HMPresenterProtocol>

@property (nonatomic, strong)  UITableView *view;
@property (nonatomic, strong)  UITableViewController *viewController;

- (instancetype)initWithView:(UITableView *)view;

@end
