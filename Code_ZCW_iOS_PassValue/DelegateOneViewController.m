//
//  DelegateOneViewController.m
//  Code_ZCW_iOS_PassValue
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "DelegateOneViewController.h"
#import "DelegateTwoViewController.h"

@interface DelegateOneViewController ()<DelegateTwoViewControllerDelegate>
@property (nonatomic,strong)UILabel *label;
@property (nonatomic,strong)UIButton *btn;


@end

@implementation DelegateOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 200, 40)];
    [self.view addSubview:_label];
    // Do any additional setup after loading the view.
    _btn = [UIButton buttonWithType:UIButtonTypeSystem];
    _btn.frame = CGRectMake(0, 0, 200, 50);
    _btn.center = self.view.center;
    [_btn setTitle:@"Push" forState:UIControlStateNormal];
    _btn.backgroundColor = [UIColor grayColor];
    [_btn addTarget:self action:@selector(pushEvent) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_btn];
}
- (void)pushEvent{
    DelegateTwoViewController *vc = [[DelegateTwoViewController alloc]init];
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getString:(NSString *)string{
    _label.text = string;
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
