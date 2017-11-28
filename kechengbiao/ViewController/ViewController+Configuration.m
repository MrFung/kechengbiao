//
//  ViewController+Configuration.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/27.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "ViewController+Configuration.h"
#import "CourseCollectionViewLayout.h"
#import "CourseCell.h"
#import "TagReusableView.h"
#import "weekDay.h"
#import "CourseModel.h"
#import "UIScreen+Utility.h"

@implementation ViewController (Configuration)

- (void)initProperties {
  self.isShow = NO;
  self.addWidth = ([UIScreen mainScreen].bounds.size.width - 30) / 7.0;
  self.colors = @[@"1B83B4",@"6D9525",@"C58525",@"4161B7",@"AF4271",@"7053AB",@"60A779",@"CB5253"];
  
  [self setModel];
  [self setWeekAndDays];
}

- (void)configureView {
  [self configureCollectionView];
  [self configureSelectWeekView];
}

#pragma mark - Private Methods

- (void)configureSelectWeekView {
  self.selectWeekView = [[SelectWeekView alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 100, 64, 200, 250)];
  self.selectWeekView.backgroundColor = [UIColor colorWithWhite:0 alpha:0];
}

- (void)configureCollectionView {
  CourseCollectionViewLayout *course = [[CourseCollectionViewLayout alloc] init];
  //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"MrFung.JPG"]];
  self.view.backgroundColor = [UIColor whiteColor];
  
  course.width = self.addWidth;
  course.height = (CGRectGetHeight([UIScreen mainScreen].bounds) - 64 - 45) / 9.7;
  course.array = self.array;
  
  self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 64 + 45 + [UIScreen topSafeAreaSpace], CGRectGetWidth([UIScreen mainScreen].bounds), CGRectGetHeight([UIScreen mainScreen].bounds)) collectionViewLayout:course];
  //self.collectionView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"MrFung.JPG"]];
  self.collectionView.backgroundColor = [UIColor whiteColor];
  self.collectionView.showsVerticalScrollIndicator = NO;

  self.collectionView.dataSource = self;
  self.collectionView.delegate = self;
  
  [self.collectionView registerClass:[CourseCell class] forCellWithReuseIdentifier:@"course"];
  [self.collectionView registerClass:[TagReusableView class] forSupplementaryViewOfKind:@"number" withReuseIdentifier:@"num"];
  
  self.collectionView.bounces = NO;
  
  [self.view addSubview:self.collectionView];
}

- (void)setModel {
  self.array = [NSMutableArray array];
  CourseModel *model;
  NSInteger j = 1;
  NSArray *team = @[@1,@2,@3,@4,@1,@2,@3,@4,@5,@1,@2,@3,@4,@5,@1,@2,@3,@5,@7];
  
  for (NSInteger i = 1; i <= 19; i++) {
    if (i > 4 && i <= 9) {
      j = 3;
    } else if (i > 9 && i <=14) {
      j = 5;
    } else if (i > 14) {
      j = 9;
    }
    model = [[CourseModel alloc] init];
    model.end = j + 1;
    NSInteger random = arc4random_uniform(7);
    model.colors = self.colors[random];
    if (i == 13 || i == 14 || i == 15) {
      model.end = j + 3;
      //model.colors = @"F5F5F5";
    }
    if (i == 18) {
      model.end = j + 2;
    }
    model.start = j;
    model.weekDay = [team[i - 1] intValue];
    model.courseName = @"iOS开发@JT301";
    
    [self.array addObject:model];
  }
}

- (void)setWeekAndDays {
  NSArray *weekStr = @[@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"];
  //NSArray *arrWeek = [NSArray arrayWithObjects:@"星期日",@"星期一",@"星期二",@"星期三",@"星期四",@"星期五",@"星期六", nil];
  NSDate *date = [NSDate date];
  NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  NSDateComponents *comps = [[NSDateComponents alloc] init];
  NSInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
  comps = [calendar components:unitFlags fromDate:date];
  NSInteger week = [comps weekday] - 1;
  NSInteger month = [comps month];
  NSInteger day = [comps day];
  
  weekDay *flag;
  CGFloat height = 45;
  CGFloat x = 37;
  NSInteger startDay = day - week + 1;
  NSInteger starkWeek = 0;
  
  flag = [[weekDay alloc] initWithFrame:CGRectMake(0, 64 + [UIScreen topSafeAreaSpace], 37, height)];
  flag.alpha = 0.8;
  [flag setDay:[NSString stringWithFormat:@"%ld月", (long)month] week:@" "];
  [self.view addSubview:flag];
  
  for (NSInteger i = 1; i <= 7; i ++) {
    x --;
    flag = [[weekDay alloc] initWithFrame:CGRectMake(x, 64 + [UIScreen topSafeAreaSpace], self.addWidth, height)];
    x += self.addWidth;
    flag.alpha = 0.9;
    
    [flag setDay:[NSString stringWithFormat:@"%ld", (long)startDay] week:weekStr[starkWeek]];
    startDay ++;
    starkWeek ++;
    
    [self.view addSubview:flag];
  }
}

@end
