//
//  ViewController.m
//  XHFullscreenPopGesture
//
//  Created by Chen on 2017/3/12.
//  Copyright © 2017年 Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.title = @"FirstPage";
    
    //跳转btn
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 100, 44)];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn setTitle:@"Jump" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(Jump) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)Jump{

    UIViewController *vc = [[UIViewController alloc]init];
    vc.navigationItem.title = @"SecondPage";
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
