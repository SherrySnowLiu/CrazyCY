//
//  ccViewController.h
//  CrazyCY
//
//  Created by Sherry on 2018/8/17.
//  Copyright © 2018年 Sherry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ddViewController.h"
@interface ccViewController : UIViewController{
    
    IBOutlet UITextField *tf;
    ddViewController *dd;
}
- (IBAction)cc:(id)sender;

@end
