//
//  MainTableViewController.m
//  Code_ZCW_iOS_PassValue
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "MainTableViewController.h"
#import "OneViewController.h"
#import "DelegateOneViewController.h"
#import "BlockOneViewController.h"
#import "NotificationOneViewController.h"
#import "SingletonOneViewController.h"

@interface MainTableViewController ()
@property (nonatomic, strong)NSArray *array;


@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _array = [NSArray arrayWithObjects:@"正向传值",@"代理传值",@"Block传值",@"通知传值",@"单例传值", nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  60;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = _array[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row == 0) {
        [self.navigationController pushViewController:[[OneViewController alloc]init] animated:YES];
    }else if (indexPath.row == 1){
        [self.navigationController pushViewController:[[DelegateOneViewController alloc]init] animated:YES];
    }else if (indexPath.row == 2){
        [self.navigationController pushViewController:[[BlockOneViewController alloc]init] animated:YES];
    }else if (indexPath.row == 3){
        [self.navigationController pushViewController:[[NotificationOneViewController alloc]init] animated:YES];
    }else if (indexPath.row == 4){
        [self.navigationController pushViewController:[[SingletonOneViewController alloc]init] animated:YES];
    }
}

@end
