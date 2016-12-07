//
//  UITestTests.m
//  UITestTests
//
//  Created by wanglixin on 2016/12/5.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AFNetworking.h"
#import "ViewController.h"

@interface UITestTests : XCTestCase

@end

@implementation UITestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

//-(void)testLogin {
//    NSDictionary *dict = @{@"account":@"上海市教委",@"password":@"e10adc3949ba59abbe56e057f20f883e"};
//    NSString *url = @"http://192.168.1.32:8081/user/login";
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
//    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/html",@"application/json", @"text/json", nil];
//    [manager POST:url parameters:dict progress:^(NSProgress * _Nonnull uploadProgress) {
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"success");
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"error");
//    }];
//}

-(void)testLoginAPI
{
    ViewController *vc = [[ViewController alloc] init];
    [vc userLogin];
}

@end
