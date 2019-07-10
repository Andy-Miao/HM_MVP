//
//  HMTextTableViewCell.m
//  HM_MVP
//
//  Created by 胡苗 on 2017/6/30.
//  Copyright © 2017年 胡苗. All rights reserved.
//

#import "HMTextTableViewCell.h"

@interface HMTextTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation HMTextTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.presenter = [[HMTextPresenter alloc] initWithView:self];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setText:(NSString *)text {
    self.label.text = text;
}

@end
