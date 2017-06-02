//
//  ThemeManagement.m
//  NightMode
//
//  Created by 威盛电气 on 2017/6/2.
//  Copyright © 2017年 GG. All rights reserved.
//

#import "ThemeManagement.h"
static ThemeManagement *themeMangement;

@implementation ThemeManagement
+(instancetype)shareManagement{
    if (themeMangement == nil) {
        themeMangement = [[ThemeManagement alloc]init];
        themeMangement.isDarkTheme = NO;
    }
    return themeMangement;
}
@end
