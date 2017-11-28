//
//  TagReusableView.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/8.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "TagReusableView.h"
#import "UIColor+Utility.h"

@implementation TagReusableView

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (instancetype)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    _num = [[UILabel alloc] initWithFrame:self.bounds];
    _num.textColor = [UIColor colorWithHexString:@"777777"];
    _num.textAlignment = NSTextAlignmentCenter;
    _num.backgroundColor = [UIColor colorWithHexString:@"F2F2F2"];
    [self addSubview:_num];
    self.layer.borderWidth = 0.24;
    self.layer.borderColor = [UIColor colorWithHexString:@"F2F2F2"].CGColor;
  }
  return self;
}

@end
