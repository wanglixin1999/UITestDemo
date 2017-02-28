//
//  ViewController.h
//  UITest
//
//  Created by wanglixin on 2016/12/5.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

-(void) userLogin;

- (IBAction)jumpAction:(UIButton *)sender;




@end

