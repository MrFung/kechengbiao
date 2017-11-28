//
//  UIScreen+Utility.h
//  kechengbiao
//
//  Created by 郭枫 on 2017/11/28.
//  Copyright © 2017年 郭枫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (Utility)

+ (BOOL)is35Inch;
+ (BOOL)is4Inch;
+ (BOOL)is47Inch;
+ (BOOL)is55Inch;
+ (BOOL)is58Inch;

+ (CGRect)bounds;
+ (CGSize)screenSize;
+ (CGPoint)screenCenterPoint;

+ (CGFloat)topSafeAreaSpace;
+ (CGFloat)bottomSafeAreaSpace;

+ (CGFloat)statusAndNavigationBarHeight;
+ (CGFloat)tabBarHeight;

@end
