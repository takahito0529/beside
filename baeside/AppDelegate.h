//
//  AppDelegate.h
//  baeside
//
//  Created by 犬飼 貴仁 on 2015/10/15.
//  Copyright © 2015年 T.Inukai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "ViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) NSString *deviceToken;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

- (void)setViewController:(UIViewController*)view;

@end

