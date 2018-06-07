//
//  ViewController.m
//  ZXDSDKDemo
//
//  Created by 张向东 on 2018/6/1.
//  Copyright © 2018年 张向东. All rights reserved.
//

#import "ViewController.h"
#import <ZXDSDK/ZXDSDK.h>
#import <AFNetworking/AFNetworking.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AFNetworkReachabilityManager *manager = [AFNetworkReachabilityManager manager];
    
    ZXDView *view = [[ZXDView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:view];
    
//    NSString *path = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@""];
//    self.imageView.image = [UIImage imageNamed:@"" inBundle:[NSBundle bundleWithPath:path] compatibleWithTraitCollection:nil];
//
}


@end
