
//
//  ViewController.m
//  APP
//
//  Created by 方正 on 2017/2/17.
//  Copyright © 2017年 fang. All rights reserved.
//

#import "ViewController.h"
#import "FZScannerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(begin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)begin
{
    FZScannerViewController *VC = [[FZScannerViewController alloc] initWithCardName:@"" avatar:nil completion:^(NSString *stringValue) {
        NSLog(@"stringValue==%@",stringValue);
    }];
    [self presentViewController:VC animated:YES completion:nil];
}
////Users/fang/Library/Developer/CoreSimulator/Devices/57DD555D-4D1A-4593-ABB3-F72E98139A9B/data/Containers/Data/Application/F03B8039-DFD5-4067-92A0-EF02D6417CE3/Documents
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{//[NSDictionary new];//
    NSDictionary *dic = @{@"key1":@"qwer",@"key2":@"asdf"};
    //
    NSMutableString *string = [[NSMutableString alloc] init];
    for (NSInteger i = 0; i<100; i++) {
        [string appendFormat:@"qwe"];
    }
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"huidian://%@",@"30521"]];//10020
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url options:dic completionHandler:^(BOOL success) {
            
        }];
    }
}

@end
