//
//  SelectWeekView.h
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/8.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectWeekView : UIView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@end
