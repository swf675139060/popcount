//
//  ViewController.m
//  naviPop
//
//  Created by 小事科技 on 2019/1/30.
//  Copyright © 2019年 申文峰. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationController+PopCount.h"
#import "nextOneVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIButton * btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 40)];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:[NSString stringWithFormat:@"当前push%ld次(点击push)",self.pushCount] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushToNextView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    if (self.pushCount > 0) {
        UITextField * textField = [[UITextField alloc]initWithFrame:CGRectMake(50, 150, 300, 40)];
        textField.placeholder = @"请输入您想返回的次数(数字)";
        textField.backgroundColor = [UIColor grayColor];
        self.textField = textField;
        [self.view addSubview:textField];
        
        UIButton * popBtn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 250, 40)];
        [popBtn setBackgroundColor:[UIColor redColor]];
        [popBtn setTitle:[NSString stringWithFormat:@"根据您输入的返回对应的页面"] forState:UIControlStateNormal];
        [popBtn addTarget:self action:@selector(popBtnToView) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:popBtn];
    }
    

}

-(void)pushToNextView{
    nextOneVC * vc = [[nextOneVC alloc]init];
    NSInteger i = self.pushCount;
    i++;
    vc.pushCount = i;
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

-(void)popBtnToView{
    [self.navigationController popWithCount:[self.textField.text integerValue]];
    
    
}



@end
