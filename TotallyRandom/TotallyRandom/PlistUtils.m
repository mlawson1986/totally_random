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


/*
 plistName is the name of the list we're going to return. It's a required string
 path is the local directory path to get to the file. It's optional and can be passed NULL or nil
 
 */
+ (NSArray *) getPlistForName:(NSString *)plistFileName atLocalPath:(NSString *)path {
    
    NSString *localPath;
    NSArray *plist = nil;
    if(path == nil || path == NULL){
        localPath = @"./";
    }
    else{
        localPath = path;
    }
    NSString *truePath = [[NSBundle mainBundle] pathForResource:path ofType:@"plist"];
    plist = [NSArray arrayWithContentsOfFile:truePath];
    if(plist == nil){
        NSLog(@"Unable to load plist");
    }
    return plist;
}
@end
