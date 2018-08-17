//
//  ddViewController.h
//  CrazyCY
//
//  Created by Sherry on 2018/8/17.
//  Copyright © 2018年 Sherry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "eeViewController.h"
@interface ddViewController : UIViewController{
    
    IBOutlet UITextField *tf;
    eeViewController *ee;
}
- (IBAction)dd:(id)sender;

@end
