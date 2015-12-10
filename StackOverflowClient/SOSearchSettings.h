//
//  SOSearchSettings.h
//  StackOverflowClient
//
//  Created by Regular User on 12/9/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Activity,
    Votes,
    Creation,
    Relevance
} Sort ;

typedef enum {
    Decending,
    Ascending
} Order;


@interface SOSearchSettings : NSObject

@property Sort sort;
@property Order order;

+(SOSearchSettings * _Nonnull) sharedService;

-(NSString *) getSortParameterForUrl;
-(NSString *) getOrderParameterForUrl;

@end
