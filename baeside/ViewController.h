//
//  ViewController.h
//  baeside
//
//  Created by 犬飼 貴仁 on 2015/10/15.
//  Copyright © 2015年 T.Inukai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *txtDeviceToken;

- (void)updateDiviceToken:(NSString*)deviceToken;


@end

