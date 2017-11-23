//
//  CourseModel.h
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/23.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CourseModel : NSObject

@property (nonatomic, copy) NSString *courseName;
@property (nonatomic, strong) NSString *colors;
@property (nonatomic, assign) NSInteger weekDay;
@property (nonatomic, assign) NSInteger end;
@property (nonatomic, assign) NSInteger start;

@end
