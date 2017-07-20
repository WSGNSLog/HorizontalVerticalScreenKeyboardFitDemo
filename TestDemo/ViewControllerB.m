//
//  ViewControllerB.m
//  TestDemo
//
//  Created by wsg on 16/3/4.
//  Copyright © 2016年 wsg. All rights reserved.
//

#import "ViewControllerB.h"
#import "AppDelegate.h"
@interface ViewControllerB ()

@end

@implementation ViewControllerB

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(50, 100, 300, 30)];
    lab.text = @"比如果然是个发热发热时";
    [self.view addSubview:lab];
    
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 200, 100, 20);
    [btn setTitle:@"back" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UITextField * filed = [[UITextField alloc] initWithFrame:CGRectMake(lab.frame.origin.x, 40, 200, 44)];
    filed.backgroundColor = [UIColor yellowColor];
    filed.placeholder = @"this is a textField";
    [self.view addSubview:filed];
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeybord)];
    [self.view addGestureRecognizer:tap];
    
    
    
}

-(void)dismissKeybord
{
    [self.view endEditing:YES];
}

-(void)back
{
    AppDelegate * app = [UIApplication sharedApplication].delegate;
    app.shouldChangeOrientation = NO;
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

-(BOOL)shouldAutorotate
{
    return YES;
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}



@end
