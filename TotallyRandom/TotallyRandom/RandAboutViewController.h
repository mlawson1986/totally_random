//
//  RandAboutViewController.h
//  TotallyRandom
//
//  Created by Development on 12/4/13.
//  Copyright (c) 2013 com.funnel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RandHomeScreenViewController.h"

@interface RandAboutViewController : UIViewController
@property (nonatomic) RandHomeScreenViewController * homeDelegate;
@end
@protocol RandAboutViewControllerDelegate <NSObject>

- (void) returnHome;

@end