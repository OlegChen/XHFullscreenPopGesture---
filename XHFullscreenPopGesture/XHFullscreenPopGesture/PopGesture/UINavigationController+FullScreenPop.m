//
//  UINavigationController+FullScreenPop.m
//  XHFullscreenPopGesture
//
//  Created by Chen on 2017/3/12.
//  Copyright © 2017年 Chen. All rights reserved.
//

#import "UINavigationController+FullScreenPop.h"

@implementation UINavigationController (FullScreenPop)



- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    pan.delegate = self;
    [self.view addGestureRecognizer:pan];
    
    self.interactivePopGestureRecognizer.enabled = NO;
    
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    
    return self.childViewControllers.count > 1;
    
}

@end
