//
//  HMImageCollectionViewCell.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMImageCollectionViewCell.h"

@interface HMImageCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation HMImageCollectionViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.presenter = [[HMImagePresenter  alloc] initWithView:self];
}

- (void)setImage:(UIImage *)image
{
    self.imageView.image = image;
}

@end
