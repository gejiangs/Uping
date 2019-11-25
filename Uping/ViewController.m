//
//  ViewController.m
//  Uping
//
//  Created by gejiangs on 2019/11/25.
//  Copyright © 2019 gejiangs. All rights reserved.
//

#import "ViewController.h"
#import "WXApi.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(loginWithWeixin) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"Login" forState:UIControlStateNormal];
    btn.backgroundColor = UIColor.grayColor;
    [self.view addSubview:btn];
}

-(void)loginWithWeixin
{
    SendAuthReq *req = [[SendAuthReq alloc] init];
    req.scope = @"snsapi_userinfo";
    req.state = @"App";
    [WXApi sendReq:req];
}

@end
