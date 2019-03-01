//
//  UINavigationController+PopCount.m
//  HuLuJianYi
//
//  Created by 申文峰 on 2019/1/30.
//  Copyright © 2019年 yudeyuan. All rights reserved.
//

#import "UINavigationController+PopCount.h"

@implementation UINavigationController (PopCount)


/**
 向上返回几次返回
 
 @param popCount 次数
 */
-(void)popWithCount:(NSInteger)popCount{
    NSInteger pushCount = self.viewControllers.count -1 ;
    if (popCount > pushCount) {
        popCount = pushCount;
    }
    
    UIViewController *popViewController = self.viewControllers[pushCount - popCount];
    
    for (UIViewController *temp in self.viewControllers) {
        
        if ([temp isKindOfClass: [popViewController class]]) {
            [self popToViewController:temp animated:YES];
        }
    }
}

@end
