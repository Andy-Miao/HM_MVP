//
//  HMTimelineTableViewPresenter.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMTimelineTableViewPresenter.h"
#import "HMTimeline.h"
#import "HMTextTableViewCell.h"
#import "HMImageTableViewCell.h"
#import "HMImagesTableViewCell.h"
#import "HMImageViewController.h"
#import "HMTextViewController.h"

@interface HMTimelineTableViewPresenter()
@property (nonatomic) HMTimeline *timeline;
@end

@implementation HMTimelineTableViewPresenter

- (instancetype)init
{
    if (self = [super init]) {
        self.timeline = [HMTimeline new];
    }
    
    return self;
}

- (instancetype)initWithView:(UITableView *)view
{
    if (self = [self init]) {
        self.view = view;
        self.view.delegate = self;
        self.view.dataSource = self;
    }
    
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.timeline.posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id post = self.timeline.posts[indexPath.row];
    
    NSString *identifier = [NSString stringWithFormat:@"%@TableViewCell", NSStringFromClass([post class])];
    
    id cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if ([cell respondsToSelector:@selector(presenter)]) {
        NSObject<HMPresenterProtocol> *presenter = [cell presenter];
        [presenter presentWithModel:post viewController:self.viewController];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160.f;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id post = self.timeline.posts[indexPath.row];
    if ([post isKindOfClass:[HMImage class]]) {
        HMImageViewController *imageViewController = [[self.viewController storyboard] instantiateViewControllerWithIdentifier: NSStringFromClass([HMImageViewController class])];
        imageViewController.presenter.photo = post;
        [[self.viewController navigationController] pushViewController:imageViewController animated:YES];
    } else if ([post isKindOfClass:[HMText class]]) {
        HMTextViewController *textViewController = [[self.viewController storyboard] instantiateViewControllerWithIdentifier: NSStringFromClass([HMTextViewController class])];
        textViewController.presenter.text = post;
        [[self.viewController navigationController] pushViewController:textViewController animated:YES];
    }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
