//
//  ViewController.m
//  TestDemo
//
//  Created by wsg on 16/3/4.
//  Copyright © 2016年 wsg. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerB.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)click:(id)sender {
    AppDelegate * app = [UIApplication sharedApplication].delegate;
    app.shouldChangeOrientation = YES;
    ViewControllerB * VC = [[ViewControllerB alloc] init];
    
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:VC];
    [self.navigationController presentViewController:nav animated:YES completion:nil];
    
}


@end
