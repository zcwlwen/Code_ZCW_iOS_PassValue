//
//  OneViewController.m
//  Code_ZCW_iOS_PassValue
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

@interface OneViewController ()

@property (nonatomic, copy)NSString *userName;
@property (nonatomic, copy)NSString *userAge;
@property (nonatomic, copy)NSString *userSex;


@property (nonatomic, strong)UIButton *pushBtn;
@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"OneViewController";
    self.view.backgroundColor = [UIColor grayColor];
    
    _pushBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    _pushBtn.frame = CGRectMake(0, 0, 100, 60);
    _pushBtn.center = self.view.center;
    [_pushBtn setTitle:@"PUSH" forState:UIControlStateNormal];
    [_pushBtn addTarget:self action:@selector(clickEvent) forControlEvents:UIControlEventTouchUpInside];
    _pushBtn.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_pushBtn];
    
    
    
    _userName = @"ZCW";
    _userAge = @"20";
    _userSex = @"man";
    
   
    // Do any additional setup after loading the view.
}

- (void)clickEvent{
    //初始化一个实例，给实例中的属性赋值，这样就实现了OneVC的值传递给TwoVC
    TwoViewController *vc = [[TwoViewController alloc]init];
    vc.userName = _userName;
    vc.userAge  = _userAge;
    vc.userSex  = _userSex;
    [self.navigationController pushViewController:vc animated:YES];
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
