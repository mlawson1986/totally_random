//
//  PlistUtils.m
//  TotallyRandom
//
//  Just some helper methods to import plists a little more easily so I'm not clogging up controller method code with this crap
//  Created by Development on 12/25/13.
//  Copyright (c) 2013 com.funnel. All rights reserved.
//

#import "PlistUtils.h"

@implementation PlistUtils
NSPropertyListFormat format;
NSString *errorDescription;
NSString *localPath;
/*
 plistName is the name of the list we're going to return. It's a required string
 path is the local directory path to get to the file. It's optional and can be passed NULL or nil
 
 */
+ (NSArray *) getPlistForName:(NSString *)plistFileName atLocalPath:(NSString *)path {
   
    [self cleanFileName:plistFileName];
    if(path == nil || path == NULL){
        localPath = @"./";
    }
    else{
        localPath = path;
    }
    return NULL;
}
//add .plist to the filename if it's not alreaqdy there
+(void) cleanFileName:(NSString *)fileName {
    if(![fileName hasSuffix:@".plist"]){
        //we'll have to create a new string, so deallocate the old, bring in the new!
        fileName = [fileName stringByAppendingString:@".plist"];
        NSLog(@"Converted: %@",fileName);
    }
    else{
        NSLog(@"No need to convert");
    }
}
@end
