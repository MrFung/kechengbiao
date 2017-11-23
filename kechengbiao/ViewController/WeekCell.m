//
//  WeekCell.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/8.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "WeekCell.h"

@implementation WeekCell

- (void)awakeFromNib {
  [super awakeFromNib];
  [self configureCell];
}

- (void)configureCell {
  self.week.layer.cornerRadius = 5;
  self.week.layer.masksToBounds = true;
}

@end
