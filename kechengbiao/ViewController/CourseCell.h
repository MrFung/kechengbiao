//
//  CourseCell.h
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/23.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CourseModel.h"

@interface CourseCell : UICollectionViewCell

@property (nonatomic, strong) UILabel *course;
@property (nonatomic, strong) CourseModel *model;

@end
