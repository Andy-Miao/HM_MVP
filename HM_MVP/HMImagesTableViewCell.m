//
//  HMImagesTableViewCell.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMImagesTableViewCell.h"

@interface HMImagesTableViewCell ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@end

@implementation HMImagesTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
     self.presenter = [[HMImagesPresenter alloc] initWithView:self.collectionView];
}


@end
