//
//  PlistUtils.h
//  TotallyRandom
//
//  Created by Development on 12/25/13.
//  Copyright (c) 2013 com.funnel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlistUtils : NSObject
+ (NSArray *) getPlistForName:(NSString *)plistName atLocalPath:(NSString *)path;
@end
