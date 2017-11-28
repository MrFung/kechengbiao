//
//  BottomBarAdjustView.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/28.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "BottomBarAdjustView.h"
#import "UIScreen+Utility.h"

@implementation BottomBarAdjustView

- (void)awakeFromNib {
  [super awakeFromNib];
  [self adjustHeightForIPhoneX];
}

#pragma mark - Private Methods

- (void)adjustHeightForIPhoneX {
  NSArray *constraints = self.constraints;
  
  for (NSLayoutConstraint *constraint in constraints) {
    if (constraint.firstAttribute == NSLayoutAttributeHeight) {
      constraint.constant = [UIScreen bottomSafeAreaSpace];
    }
  }
}

@end
