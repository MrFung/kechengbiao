//
//  CourseCollectionViewLayout.m
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/27.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import "CourseCollectionViewLayout.h"
#import "CourseModel.h"

struct Tag {
  NSInteger weekDay;
  NSInteger start;
  NSInteger end;
}tag;

@implementation CourseCollectionViewLayout

- (CGSize)collectionViewContentSize {
  return CGSizeMake(self.collectionView.frame.size.width, _height * 14);
}

- (NSArray <UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
  NSMutableArray *attributes = [NSMutableArray array];
  CGFloat minY = CGRectGetMinY(rect);
  CGFloat maxY = CGRectGetMaxY(rect);
  CGFloat temp = _height;
  
  NSInteger tagMinY = 1;
  NSInteger tagMaxY;
  
  while (minY > temp) {
    tagMinY ++;
    temp += _height;
  }
  
  tagMaxY = tagMinY;
  
  while (maxY > temp) {
    tagMaxY ++;
    temp += _height;
  }
  
  for (NSInteger i = tagMinY; i <= tagMaxY; i ++) {
    NSIndexPath *path = [NSIndexPath indexPathForRow:i - 1 inSection:0];
    [attributes addObject:[self layoutAttributesForSupplementaryViewOfKind:@"number" atIndexPath:path]];
  }
  
  NSInteger j = 12;
  CourseModel *model;
  NSInteger p = 0;
  
  for (NSInteger i = tagMinY; i <= tagMaxY; i ++) {
    for (NSInteger k = p; k < _array.count; k ++) {
      model = _array[k];
      if (model.start == i || model.end == i) {
        NSIndexPath *path = [NSIndexPath indexPathForRow:j inSection:0];
        tag.weekDay = model.weekDay;
        tag.start = model.start;
        tag.end = model.end;
        [attributes addObject:[self layoutAttributesForItemAtIndexPath:path]];
        j ++;
        p ++;
      }
    }
  }
  
  return attributes;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath {
  UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
  attributes.frame = CGRectMake(37 + _width * (tag.weekDay - 1), _height * (tag.start - 1), _width, _height * (tag.end - tag.start + 1));
  
  return attributes;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForSupplementaryViewOfKind:(NSString *)elementKind atIndexPath:(NSIndexPath *)indexPath {
  UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:elementKind withIndexPath:indexPath];
  attributes.frame = CGRectMake(0, _height * indexPath.row, 37, _height);
  
  return attributes;
}

@end
