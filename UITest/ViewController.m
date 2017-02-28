//
//  ViewController.m
//  UITest
//
//  Created by wanglixin on 2016/12/5.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "SecondViewController.h"

@interface ViewController ()

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

-(void) userLogin
{
    NSDictionary *dict = @{@"account":@"上海市教委",@"password":@"e10adc3949ba59abbe56e057f20f883e"};
    NSString *url = @"http://192.168.1.32:8081/user/login";
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html",@"application/json", @"text/json", nil];
    
    [manager POST:url parameters:dict progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success:%@",responseObject);
        [self jumpToSecondVC];
//        SecondViewController *svc = [[SecondViewController alloc] init];
//        [self presentViewController:svc animated:YES completion:^{
//            NSLog(@"---over---");
//        }];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error:%@",error);
    }];
}

- (IBAction)jumpAction:(UIButton *)sender {
    [self userLogin];
}

-(void)jumpToSecondVC {
    UIStoryboard *mainStoryboard = [UIStoryboard                                    storyboardWithName:@"Main" bundle:nil];
    UIViewController *vc = [mainStoryboard                                             instantiateViewControllerWithIdentifier:@"secondvc"];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:vc animated:YES completion:^{
        NSLog(@"登录成功!");
    }];
}

@end
