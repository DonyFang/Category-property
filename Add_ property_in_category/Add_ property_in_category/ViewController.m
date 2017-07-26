//
//  ViewController.m
//  Add_ property_in_category
//
//  Created by 方冬冬 on 2017/7/26.
//  Copyright © 2017年 方冬冬. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Extension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"给category添加一个新的属性";
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-300)/2, 100, 300, 50)];
    label.labelName = @"这是一个label的新属性";
    label.textColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = label.labelName;
    [self.view addSubview:label];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
