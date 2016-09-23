//
//  DelegateTwoViewController.h
//  Code_ZCW_iOS_PassValue
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DelegateTwoViewControllerDelegate <NSObject>
- (void)getString:(NSString *)string;
@end

@interface DelegateTwoViewController : UIViewController
@property (nonatomic,weak) id<DelegateTwoViewControllerDelegate> delegate;
@end
