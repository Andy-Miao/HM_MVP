//
//  HMImages.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMImages.h"
#import "HMImage.h"

@implementation HMImages

- (instancetype)init
{
    self = [super init];
    if (self) {
        int index = arc4random_uniform(2);
        NSArray *imagesName = @[@"cat", @"canada_spring"];
        [self loadImagesName:imagesName[index]];
    }
    return self;
}

- (instancetype)initWithName:(NSString *)imagesName {
    
    if (self = [super init]) {
        [self loadImagesName:imagesName];
    }
    return self;
}

- (void)loadImagesName:(NSString *)imagesName {
    
    self.images = [NSMutableArray array];
    for (NSUInteger i = 1 ; i < 10; i ++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%@%zd",imagesName,i]];
        [self.images addObject:[[HMImage alloc ]initWithImage:image]];
    }
}
@end
