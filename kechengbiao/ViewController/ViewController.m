//
//  ViewController.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/7.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "ViewController.h"
#import "ViewController+Configuration.h"
#import "CourseCell.h"
#import "TagReusableView.h"
#import "UIColor+Utility.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self initProperties];
  [self configureView];
}

#pragma mark - IBAction Methods

- (IBAction)titleButtonClicked:(id)sender {
  [self popSelectView];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  NSLog(@"Section Count:31");
  return 31;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  CourseCell *courseCell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"course" forIndexPath:indexPath];
  courseCell.model = self.array[indexPath.row - 12];
  NSLog(@"CellForRow: %ld", (long)indexPath.row);
  
  return courseCell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
  TagReusableView *tag = [collectionView dequeueReusableSupplementaryViewOfKind:@"number" withReuseIdentifier:@"num" forIndexPath:indexPath];
  tag.num.text = [NSString stringWithFormat:@"%ld", indexPath.row + 1];
  NSLog(@"viewForKind: %ld", (long)indexPath.row);
  
  return tag;
}

#pragma mark - Private Methods

- (void)popSelectView {
  if (!_isShow) {
    [self.view addSubview:_selectWeekView];
    _isShow = YES;
  } else {
    [_selectWeekView removeFromSuperview];
    _isShow = NO;
  }
  
  NSLog(@"%d", _isShow);
}

@end
