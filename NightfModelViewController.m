//
//  NightfModelViewController.m
//  NightMode
//
//  Created by 威盛电气 on 2017/6/2.
//  Copyright © 2017年 GG. All rights reserved.
//

#import "NightfModelViewController.h"
#import "ThemeManagement.h"
@interface NightfModelViewController ()

@end

@implementation NightfModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISwitch *switchView = [[UISwitch alloc]initWithFrame:CGRectMake(14.0f, 216.0f, 100.0f, 28.0f)];
    
     switchView.on = YES;//设置初始为ON的一边
    [switchView addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];   // 开关事件切换通知
    [self.view addSubview: switchView];
    
    
}

-(void)switchAction:(id)sender
{
    UISwitch *switchButton = (UISwitch*)sender;
    BOOL isButtonOn = [switchButton isOn];
    if (isButtonOn) {
        NSLog(@"开");
        [ThemeManagement shareManagement].isDarkTheme = YES;
    }else {
        NSLog(@"关");
        [ThemeManagement shareManagement].isDarkTheme = NO;
    }
    // 发送通知 改变主题模式
    [[NSNotificationCenter defaultCenter]postNotificationName:@"ChangeTheme" object:nil];
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
