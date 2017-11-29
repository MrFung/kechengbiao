//
//  SelectWeekView.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/8.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "SelectWeekView.h"
#import "WeekCell.h"
#import "UIColor+Utility.h"
#import "UIScreen+Utility.h"

@implementation SelectWeekView

- (instancetype)initWithFrame:(CGRect)frame {
  if (self = [super initWithFrame:frame]) {
    _width = CGRectGetWidth(self.bounds);
    _height = CGRectGetHeight(self.bounds);
    [self setUp];
  }
  return self;
}

#pragma mark

- (void)setUp {
  _tableView = [[UITableView alloc] initWithFrame:CGRectMake(6, [UIScreen topSafeAreaSpace], _width - 12, _height - 12 -40)];
  _tableView.dataSource = self;
  _tableView.delegate = self;
  _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
  [_tableView registerClass:[WeekCell class] forCellReuseIdentifier:@"WeekCellIdentifier"];
  
  UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
  button.frame = CGRectMake(6, _height - 50, _width - 12, 40);
  button.layer.borderColor = [UIColor colorWithHexString:@"EEEEEE"].CGColor;
  button.layer.backgroundColor = [UIColor whiteColor].CGColor;
  button.layer.borderWidth = 1;
  button.layer.cornerRadius = 5;
  button.layer.masksToBounds = YES;
  [button setTitle:@"修改当前周" forState:UIControlStateNormal];
  [button setTitleColor:[UIColor colorWithHexString:@"45E745"] forState:UIControlStateNormal];
  [self addSubview:_tableView];
  [self addSubview:button];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 25;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  WeekCell *weekCell = [tableView dequeueReusableCellWithIdentifier:@"WeekCellIdentifier" forIndexPath:indexPath];
  weekCell.week.text = [NSString stringWithFormat:@"第%ld周", indexPath.row + 1];
  
  return weekCell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return 30;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  
}

@end
