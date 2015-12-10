//
//  Error.h
//  StackOverflowClient
//
//  Created by Regular User on 12/8/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kStackOverFlowErrorDomain;

typedef enum : NSUInteger {
    StackOverFlowBadJSON,
    StackOverFlowConnectionDown,
    StackOverFlowTooManyAttempts,
    StackOverFlowInvalidParameter,
    StackOverFlowNeedAuthentication,
    StackOverFlowGeneralError
} StackOverFlowErrorCodes;
