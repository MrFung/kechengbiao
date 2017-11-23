//
//  weekDay.h
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/23.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface weekDay : UIView

@property (nonatomic, strong) UILabel *day;
@property (nonatomic, strong) UILabel *week;

- (void)setDay:(NSString *)Day week:(NSString *)Week;

@end
