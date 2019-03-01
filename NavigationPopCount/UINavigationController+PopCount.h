//
//  UINavigationController+PopCount.h
//  HuLuJianYi
//
//  Created by 申文峰 on 2019/1/30.
//  Copyright © 2019年 yudeyuan. All rights reserved.
//  想上返回次数

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (PopCount)


/**
 向上返回几次返回

 @param popCount 次数
 */
-(void)popWithCount:(NSInteger)popCount;



@end

NS_ASSUME_NONNULL_END
