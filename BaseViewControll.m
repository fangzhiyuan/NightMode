//
//  BaseViewControll.m
//  NightMode
//
//  Created by 威盛电气 on 2017/6/2.
//  Copyright © 2017年 GG. All rights reserved.
//

#import "BaseViewControll.h"
#import "ThemeManagement.h"
@interface BaseViewControll ()

@end

@implementation BaseViewControll

- (void)viewDidLoad {
    [super viewDidLoad];
    // 进来的时候根据单例的主题，显示相应的主题
    // 在这里我只是简单的改变了一下背景颜色，实际项目中应准备两套颜色
    if ([ThemeManagement shareManagement].isDarkTheme) {
        self.view.backgroundColor = [UIColor grayColor];
    }else{
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    // 添加接收改变主题的通知
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeTheme) name:@"ChangeTheme" object:nil];

}
- (void)changeTheme{
    if ([ThemeManagement shareManagement].isDarkTheme) {
        self.view.backgroundColor = [UIColor grayColor];
    }else{
        self.view.backgroundColor = [UIColor whiteColor];
    }
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
