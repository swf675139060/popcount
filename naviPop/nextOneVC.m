//
//  nextOneVC.m
//  naviPop
//
//  Created by 小事科技 on 2019/1/30.
//  Copyright © 2019年 申文峰. All rights reserved.
//

#import "nextOneVC.h"
#import "UINavigationController+PopCount.h"
#import "nextTwoVC.h"
@interface nextOneVC ()

@end

@implementation nextOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(void)pushToNextView{
    nextTwoVC * vc = [[nextTwoVC alloc]init];
    NSInteger i = self.pushCount;
    i++;
    vc.pushCount = i;
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

-(void)popBtnToView{
    [self.navigationController popWithCount:[self.textField.text integerValue]];
    
    
}

@end
