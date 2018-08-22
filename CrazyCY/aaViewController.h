//
//  aaViewController.h
//  CrazyCY
//
//  Created by Sherry on 2018/8/17.
//  Copyright © 2018年 Sherry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "bbViewController.h"

@interface aaViewController : UIViewController{
    
    IBOutlet UITextField *tf;
    bbViewController *bb;
}
- (IBAction)aa:(id)sender;

@end
