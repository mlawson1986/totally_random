//
//  RandHomeScreenViewController.h
//  TotallyRandom
//
//  Created by Development on 12/23/13.
//  Copyright (c) 2013 com.funnel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandHomeScreenViewController : UITableViewController
- (void) returnHome;
- (BOOL) loadGeneratorsFromPlist: (NSArray *) genList;
@end


