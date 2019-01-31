//
//  nextFourVC.m
//  naviPop
//
//  Created by 小事科技 on 2019/1/30.
//  Copyright © 2019年 申文峰. All rights reserved.
//

#import "nextFourVC.h"
#import "UINavigationController+PopCount.h"
#import "nextFiveVC.h"
@interface nextFourVC ()

@end

@implementation nextFourVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)pushToNextView{
    nextFiveVC * vc = [[nextFiveVC alloc]init];
    NSInteger i = self.pushCount;
    i++;
    vc.pushCount = i;
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

-(void)popBtnToView{
    [self.navigationController popWithCount:[self.textField.text integerValue]];
    
    
}

@end
