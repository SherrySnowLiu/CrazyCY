//
//  bbViewController.m
//  CrazyCY
//
//  Created by Sherry on 2018/8/17.
//  Copyright © 2018年 Sherry. All rights reserved.
//

#import "bbViewController.h"

@interface bbViewController ()

@end

@implementation bbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)bb:(id)sender {
    [tf resignFirstResponder];
    if ([tf.text isEqualToString:@"声东击西"]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"恭喜你，闯关成功" message:@"声东击西" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"下一关" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                                  //响应事件
                                                                  NSLog(@"action = %@", action);
                                                              }];
        UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction * action) {
                                                                 //响应事件
                                                                 NSLog(@"action = %@", action);
                                                             }];
        
        [alert addAction:defaultAction];
        [alert addAction:cancelAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    }else if ([tf.text isEqualToString:@"111"]){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"111恭喜你，闯关成功" message:@"声东击西" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"下一关"style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            //响应事件
            NSLog(@"action = %@", action);
            CATransition *t = [CATransition animation];
            t.duration = 2;
            t.subtype = kCATransitionFromBottom;
            t.type = kCATransitionMoveIn;
            cc = [self.storyboard instantiateViewControllerWithIdentifier:@"cc"];
            [self.view addSubview:cc.view];
            [self.view.layer addAnimation:t forKey:nil];
        }];
        UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction * action) {
                                                                 //响应事件
                                                                 NSLog(@"action = %@", action);
                                                             }];
        
        [alert addAction:defaultAction];
        [alert addAction:cancelAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
@end
