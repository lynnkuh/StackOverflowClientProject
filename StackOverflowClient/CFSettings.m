//
//  CFSettings.m
//  StackOverflowClient
//
//  Created by Regular User on 12/9/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import "CFSettings.h"

@implementation CFSettings

#pragma mark - Class Methods
+(CFSettings * )sharedSettings{
    static CFSettings *sharedService;
    if (!sharedService){
        sharedService = [[CFSettings alloc] init];
        return sharedService;
    }
    return sharedService;
}


#pragma mark - API Endpoint Settings
+(SOSearchSettings * )SOSearch{
    return  [SOSearchSettings sharedService];
}

#pragma mark - Instance Methods

#pragma mark - Initiializer
-(id)init
{
    if (self = [super init])
    {
        // Initializselation code her
        
    }
    return self;
}

@end
