//
//  ViewController.m
//  NightMode
//
//  Created by 威盛电气 on 2017/6/2.
//  Copyright © 2017年 GG. All rights reserved.
//

#import "ViewController.h"
#import "NightfModelViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NightfModelViewController *night = [NightfModelViewController new];
    [self presentViewController:night animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
