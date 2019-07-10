//
//  HMImages.h
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMImages : NSObject

@property (nonatomic, strong) NSMutableArray *images;

- (instancetype)initWithName:(NSString *)imagesName;
@end
