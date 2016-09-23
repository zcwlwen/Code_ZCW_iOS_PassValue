//
//  DelegateTwoViewController.m
//  Code_ZCW_iOS_PassValue
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "DelegateTwoViewController.h"

@interface DelegateTwoViewController ()

@property (nonatomic ,strong)UIButton *btn;
@property (nonatomic ,strong)UITextField *textfiled;


@end

@implementation DelegateTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _textfiled = [[UITextField alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 60)];
//    _textfiled.backgroundColor = [UIColor grayColor];
    _textfiled.placeholder = @"输入你要传的值";
    
    _btn = [UIButton buttonWithType:UIButtonTypeSystem];
    _btn.frame = CGRectMake(0, 0, 100, 60);
    _btn.backgroundColor = [UIColor grayColor];
    [_btn setTitle:@"POP" forState:UIControlStateNormal];
    _btn.center = self.view.center;
    [_btn addTarget:self action:@selector(btnEvent) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:_textfiled];
    [self.view addSubview:_btn];
}

- (void)btnEvent{
    
    //这一步一般是在B跳转到A的方法中实现的，我是在B中创建了一个Button,让这个通知代理在Button中跳转方法中实现。
    if ([self.delegate respondsToSelector:@selector(getString:)]) {
        // 加入if语句就是先判断在界面A中是否有getStrin这个方法，当有这个方法的时候，才进行代理传值。
        [self.delegate getString:_textfiled.text];
    }
     [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
