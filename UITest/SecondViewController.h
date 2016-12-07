//
//  SecondViewController.h
//  UITest
//
//  Created by wanglixin on 2016/12/5.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
- (IBAction)backAction:(UIButton *)sender;


/**
 *  定义了一个changeColor的Block。这个changeColor必须带一个参数，这个参数的类型必须为id类型的
 *  无返回值
 *  @param id
 */
typedef void(^changeColor)(id);
/**
 *  用上面定义的changeColor声明一个Block,声明的这个Block必须遵守声明的要求。
 */
@property (nonatomic, copy) changeColor backgroundColor;

@end
