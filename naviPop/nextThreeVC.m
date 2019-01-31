//
//  nextThreeVC.m
//  naviPop
//
//  Created by 小事科技 on 2019/1/30.
//  Copyright © 2019年 申文峰. All rights reserved.
//

#import "nextThreeVC.h"
#import "UINavigationController+PopCount.h"
#import "nextFourVC.h"
@interface nextThreeVC ()

@end

@implementation nextThreeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)pushToNextView{
    nextFourVC * vc = [[nextFourVC alloc]init];
    NSInteger i = self.pushCount;
    i++;
    vc.pushCount = i;
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

-(void)popBtnToView{
    [self.navigationController popWithCount:[self.textField.text integerValue]];
    
    
}

@end
