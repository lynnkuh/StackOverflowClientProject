//
//  CFSettings.h
//  StackOverflowClient
//
//  Created by Regular User on 12/9/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SOSearchSettings.h"

@interface CFSettings : NSObject

@property SOSearchSettings *SOSearch;

+(CFSettings * _Nonnull) sharedSettings;

@end
