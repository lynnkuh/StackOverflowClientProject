//
//  User.m
//  StackOverflowClient
//
//  Created by Regular User on 12/9/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import "User.h"

@implementation User

-(id)initWithDisplayName:(NSString*)displayName profileImageURL:(NSURL*)profileImageURL link:(NSURL*)link reputation:(int)reputation userID:(int)userID acceptRate:(int)acceptRate {
    
    if (self = [super init])
    {
        // Initializselation code here
        [self setDisplayName:displayName];
        [self setProfileImageURL:profileImageURL];
        [self setLink:link];
        [self setReputation:reputation];
        [self setUserID:userID];
        [self setAcceptRate:acceptRate];
        
    }
    return self;
}

@end
