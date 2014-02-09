//
//  RandViewController.h
//  TotallyRandom
//
//  Created by Development on 12/23/13.
//  Copyright (c) 2013 com.funnel. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@protocol RandViewController
-(NSInteger) generateRandomNumber;
-(NSString *) getTitle;
@end

@interface RandViewController : NSObject

@end
