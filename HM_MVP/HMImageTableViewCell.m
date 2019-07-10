//
//  HMImageTableViewCell.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMImageTableViewCell.h"

@interface HMImageTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@end
@implementation HMImageTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.presenter = [[HMImagePresenter alloc] initWithView:self];
}

- (void)setImage:(UIImage *)image
{
    self.photoImageView.image = image;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
