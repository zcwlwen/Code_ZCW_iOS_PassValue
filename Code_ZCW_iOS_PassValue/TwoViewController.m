//
//  TwoViewController.m
//  Code_ZCW_iOS_PassValue
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "TwoViewController.h"


@interface TwoViewController ()
@property (nonatomic,strong)UILabel *value;

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _value = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 60)];
    _value.numberOfLines = 0;
    _value.center = self.view.center;
    [self.view addSubview:_value];
    NSString *getValueFromOneVC = [NSString stringWithFormat:@"userName:%@ userAge:%@ userSex:%@",self.userName,self.userAge,self.userSex];
    _value.text = getValueFromOneVC;
    
    NSLog(@"%@",getValueFromOneVC);
    // Do any additional setup after loading the view.
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
