//
//  HMTools.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/7/3.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMTimeline.h"
#import "HMText.h"
#import "HMImage.h"
#import "HMImage.h"

@implementation HMTimeline

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.posts = [NSMutableArray array];
        for (NSUInteger i = 0 ; i < 20; i ++) {
            NSArray *classes = @[@"HMText",@"HMImage",@"HMImages"];
            [self.posts addObject:[NSClassFromString(classes[arc4random_uniform(3)]) new]];
        }
    }
    return self;
}

@end
