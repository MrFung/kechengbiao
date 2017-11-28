//
//  CourseCell.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/23.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "CourseCell.h"
#import "UIColor+Utility.h"

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

- (void)setModel:(CourseModel *)model {
  _model = model;
  _course.text = model.courseName;
  _course.textAlignment = NSTextAlignmentLeft;
  _course.font = [UIFont systemFontOfSize:11];
  _course.numberOfLines = 0;
  _course.backgroundColor = [UIColor colorWithHexString:@"E4E4E4"];
  self.backgroundColor = [UIColor whiteColor];
  
  if (![model.colors isEqualToString:@"F5F5F5"]) {
    _course.textColor = [UIColor whiteColor];
    _course.alpha = 0.65;
    _course.backgroundColor = [UIColor colorWithHexString:model.colors];
  }
}

@end
