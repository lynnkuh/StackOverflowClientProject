//
//  SOSearchJSONParser.h
//  StackOverflowClient
//
//  Created by Regular User on 12/10/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constants.h"

@interface SOSearchJSONParser : NSObject

+(void)questionsArrayFromDictionary:(NSDictionary*)dictionary completionHandler:(kNSArrayCompletionHandler)completionHandler;

@end
