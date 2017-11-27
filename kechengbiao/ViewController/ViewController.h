//
//  ViewController.h
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/7.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SelectWeekView.h"

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, strong) SelectWeekView *selectWeekView;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, assign) CGFloat addWidth;
@property (nonatomic, copy) NSArray *colors;
@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, assign) BOOL isShow;


@end

