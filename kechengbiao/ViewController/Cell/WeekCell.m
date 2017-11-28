//
//  WeekCell.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/8.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "WeekCell.h"
#import "UIColor+Utility.h"

@implementation WeekCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
  if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
    self.week = [[UILabel alloc] init];
    _week.textAlignment =NSTextAlignmentCenter;
    _week.textColor = [UIColor colorWithHexString:@"#44acf3"];
    _week.layer.cornerRadius = 5;
    _week.layer.masksToBounds = true;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    [self.contentView addSubview:_week];
  }
  return self;
}

- (void)layoutSubviews {
  _week.frame = CGRectMake(6, 0, CGRectGetWidth(self.contentView.bounds)-12, CGRectGetHeight(self.contentView.bounds));
}

@end
