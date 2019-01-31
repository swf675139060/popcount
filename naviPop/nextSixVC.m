//
//  nextSixVC.m
//  naviPop
//
//  Created by 小事科技 on 2019/1/30.
//  Copyright © 2019年 申文峰. All rights reserved.
//

#import "nextSixVC.h"
#import "UINavigationController+PopCount.h"
#import "nextTwoVC.h"
@interface nextSixVC ()

@end

@implementation nextSixVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)pushToNextView{
  
    
}

-(void)popBtnToView{
    [self.navigationController popWithCount:[self.textField.text integerValue]];
    
    
}

@end
