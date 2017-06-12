//
//  ViewController.m
//  MyScrollView
//
//  Created by Jimmy Hoang on 2017-06-12.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    MyScrollView* scrollView = [[MyScrollView alloc] initWithFrame:CGRectMake(0, 0, 640, 1136)];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:scrollView];
    
    UIView* redBox = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redBox.backgroundColor = [UIColor redColor];
    [scrollView addSubview:redBox];
    
    UIView* greenBox = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenBox.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:greenBox];
    
    UIView* blueBox = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueBox.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:blueBox];
    
    UIView* yellowBox = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowBox.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:yellowBox];
    
}




@end
