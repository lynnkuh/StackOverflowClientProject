//
//  User.h
//  StackOverflowClient
//
//  Created by Regular User on 12/9/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface User : NSObject
@property NSString *displayName;
@property NSURL *profileImageURL;
@property UIImage *profileImage;
@property NSURL *link;
@property int reputation;
@property int userID;
@property int acceptRate;

-(id)initWithDisplayName:(NSString*)displayName profileImageURL:(NSURL*)profileImageURL link:(NSURL*)link reputation:(int)reputation userID:(int)userID acceptRate:(int)acceptRate;

@end

