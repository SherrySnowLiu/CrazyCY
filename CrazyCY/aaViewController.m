//
//  aaViewController.m
//  CrazyCY
//
//  Created by Sherry on 2018/8/17.
//  Copyright © 2018年 Sherry. All rights reserved.
//

#import "aaViewController.h"

@interface aaViewController ()

@end

@implementation aaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)aa:(id)sender {
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
                                                                  bb = [self.storyboard instantiateViewControllerWithIdentifier:@"bb"];
                                                                          [self.view addSubview:bb.view];
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
