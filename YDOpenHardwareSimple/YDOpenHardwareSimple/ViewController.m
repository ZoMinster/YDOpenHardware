//
//  ViewController.m
//  YDOpenHardwareSimple
//
//  Created by 张旻可 on 16/2/2.
//  Copyright © 2016年 YD. All rights reserved.
//

#import "ViewController.h"

#import <YDOpenHardwareCore/YDOpenHardwareMgr.h>

@interface ViewController ()


- (IBAction)toThirdPartVC:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toThirdPartVC:(id)sender {
    [[YDOpenHardwareMgr sharedMgr] toThirdPartVC];
}
@end
