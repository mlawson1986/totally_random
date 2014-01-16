//
//  RandAppDelegate.h
//  TotallyRandom
//
//  Created by Development on 12/3/13.
//  Copyright (c) 2013 com.funnel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
