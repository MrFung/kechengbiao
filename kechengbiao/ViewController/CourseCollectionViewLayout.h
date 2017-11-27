//
//  CourseCollectionViewLayout.h
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/27.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CourseCollectionViewLayout : UICollectionViewLayout

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, strong) NSMutableArray *array;

@end
