//
//  Question.m
//  StackOverflowClient
//
//  Created by Regular User on 12/9/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import "Question.h"


@implementation Question

-(id)initWithTitle:(NSString*)title owner:(User*)owner questionID:(int)questionID viewCount:(int)viewCount score:(int)score isAnswered:(BOOL)isAnswered {
    if (self = [super init])
    {
        // Initializselation code here
        [self setTitle:title];
        [self setOwner:owner];
        [self setQuestionID:questionID];
        [self setViewCount:viewCount];
        [self setScore:score];
        [self setIsAnswered:isAnswered];
        
    }
    return self;
}

@end
