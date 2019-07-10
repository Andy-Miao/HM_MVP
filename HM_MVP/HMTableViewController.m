//
//  HMTableViewController.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMTableViewController.h"

@interface HMTableViewController ()

@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation HMTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presenter = [[HMTimelineTableViewPresenter alloc] initWithView: self.myTableView];
    self.presenter.viewController = self;
    
}
@end
