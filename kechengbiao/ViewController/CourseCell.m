//
//  CourseCell.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/23.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "CourseCell.h"

@implementation CourseCell

- (instancetype)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    _course = [[UILabel alloc] initWithFrame:CGRectMake(1, 1, CGRectGetWidth(frame) - 2, CGRectGetHeight(frame) - 2)];
    self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
    _course.layer.cornerRadius = 5;
    _course.layer.masksToBounds = YES;
    [self addSubview:_course];
  }
  return self;
}

@end
