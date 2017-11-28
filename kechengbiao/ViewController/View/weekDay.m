//
//  weekDay.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/23.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "weekDay.h"
#import "UIColor+Utility.h"

@implementation weekDay

- (instancetype)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    [self setUp];
    self.backgroundColor = [UIColor colorWithHexString:@"F2F2F2"];
  }
  return self;
}

- (void)setUp {
  CGFloat width = CGRectGetWidth(self.frame);
  CGFloat height = CGRectGetHeight(self.frame);
  _day = [[UILabel alloc] initWithFrame:CGRectMake(0, 5, width, height / 3)];
  _day.textColor = [UIColor colorWithHexString:@"777777"];
  _day.textAlignment = NSTextAlignmentCenter;
  _week = [[UILabel alloc] initWithFrame:CGRectMake(0, height / 3 + 5, width, height / 3 * 2 - 5)];
  _week.textAlignment = NSTextAlignmentCenter;
  _week.textColor = [UIColor colorWithHexString:@"777777"];
  self.layer.borderWidth = 1;
  self.layer.borderColor = [UIColor colorWithHexString:@"F2F2F2"].CGColor;
  self.clipsToBounds = true;
  [self addSubview:_day];
  [self addSubview:_week];
}

- (void)setDay:(NSString *)Day week:(NSString *)Week {
  _day.text = Day;
  _week.text = Week;
}

@end
