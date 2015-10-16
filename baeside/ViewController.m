//
//  ViewController.m
//  baeside
//
//  Created by 犬飼 貴仁 on 2015/10/15.
//  Copyright © 2015年 T.Inukai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad");
    
    AppDelegate *delegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    //delegate.viewController = self;
    [delegate setViewController:self];
    
    @try {
        if (delegate.deviceToken != nil) {
            [_txtDeviceToken setText:delegate.deviceToken];
        }else{
            [_txtDeviceToken setText:@"トークン未取得"];
        }
    }
    @catch (NSException *exception) {
        NSLog(@"エラー：%@", exception);
    }
    @finally {
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateDiviceToken:(NSString*)deviceToken{
    @try {
        NSLog(@"updateDiviceToken:%@", deviceToken);
        if (_txtDeviceToken != nil) {
            NSLog(@"setDeviceToken");
            [_txtDeviceToken setText:deviceToken];
        }
    }
    @catch (NSException *exception) {
        NSLog(@"エラー！ %@", exception);
    }
}

@end
