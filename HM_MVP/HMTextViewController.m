
//
//  HMTextViewController.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMTextViewController.h"

@interface HMTextViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation HMTextViewController


- (void)awakeFromNib
{
    [super awakeFromNib];
    self.presenter = [HMTextPresenter new];
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

- (void)setText:(NSString *)text
{
    self.textView.text = text;
}


@end
