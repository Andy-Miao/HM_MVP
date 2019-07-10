//
//  HMImage.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMImage.h"

@implementation HMImage

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSUInteger index = arc4random_uniform(8) + 1;
        self.image = [UIImage imageNamed:[NSString stringWithFormat:@"cat%ld",index]];
    }
    return self;
}

- (instancetype)initWithImage:(UIImage *)image {
    
    if (self = [super init]) {
        self.image = image;
    }
    return self;
}
@end
