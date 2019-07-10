//
//  HMText.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMText.h"

@implementation HMText

- (instancetype)init {
    if (self = [super init]) {
        
        if (arc4random_uniform(2)>0) {
            self.text = @"在繁杂的世界中，我知道你和我一样，期待极简的生活方式，我相信你是向往温暖、善良、美好的人，希望能将生活过成诗。  ——  一个荒诞不经的追梦人(苗哥)";
        } else {
            self.text = @"我们常出门，去寻找诗和远方，要么身体已走，灵魂却还留在原地煎熬；要么灵魂已走，身体还要呆在原地百般求饶。赫尔岑曾说：生活的终极目的就是生命本身。在读到池莉的《生命在阅读中高贵与优雅》才明白：『阅读的目的不为别的，其实就是开启心智，成熟情商，接触困惑，享受生命。 ——  一个荒诞不经的追梦人(苗哥)";
        }
    }
    return self;
}
@end
