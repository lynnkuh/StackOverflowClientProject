//
//  SOSearchAPIService.m
//  StackOverflowClient
//
//  Created by Regular User on 12/10/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import "SOSearchAPIService.h"
#import "JSONAPIRequestService.h"
#import "SOSearchSettings.h"

@implementation SOSearchAPIService

NSString *kSOAPIBaseURL = @"https://api.stackexchange.com/2.2/";

#pragma mark class methods


#pragma mark private Methods

#pragma mark public Methods


+(void )searchWithTearm:(NSString * _Nonnull)searchTermParam withCompletion:(kNSDictionaryCompletionHandler _Nonnull)completionHandler {
    [self searchWithTearm:searchTermParam pageNumber:1 withCompletion:completionHandler];
}

+(void) searchWithTearm:(NSString * _Nonnull)searchTermParam pageNumber:(int)pageNumberParam withCompletion:(kNSDictionaryCompletionHandler _Nonnull)completionHandler {
    
    NSString *searchUrlString = [NSString stringWithFormat:@"%@search", kSOAPIBaseURL];
    NSString *sortParam = [[SOSearchSettings sharedService ] getSortParameterForUrl ];
    NSString *orderParam = [[SOSearchSettings sharedService ] getOrderParameterForUrl];
    NSString *pageNumber;
    
    if (pageNumberParam > 0) {
        pageNumber = [NSString stringWithFormat:@"%d", pageNumberParam];
    } else {
        pageNumber = [NSString stringWithFormat:@"%d", 1];
    }
    
    NSMutableDictionary *parameters = [[NSMutableDictionary alloc] init];
    [parameters setObject:pageNumber forKey:@"page"];
    [parameters setObject:sortParam forKey:@"sort"];
    [parameters setObject:orderParam forKey:@"order"];
    [parameters setObject:searchTermParam forKey:@"intitle"];
    [parameters setObject:@"stackoverflow" forKey:@"site"];
    
    [JSONAPIRequestService getRequestWithURL:searchUrlString parameters:(NSDictionary*)parameters withCompletion:^(id _Nullable data, NSError * _Nullable error) {
        if (error != nil) {
            completionHandler(nil, error);
            return ;
        }
        
        if ([data isKindOfClass:[NSDictionary class]]) {
            completionHandler((NSDictionary * ) data, nil);
            return;
        }
        
        NSError *dictionaryError = [NSError errorWithDomain:@"TYPE ERROR: Converting response object to Dictionary" code:-1 userInfo:nil];
        completionHandler(nil, dictionaryError);
    }];
}

+(void) searchSimilarWithTearm:(NSString * _Nonnull)searchTermParam pageNumber:(int)pageNumberParam withCompletion:(kNSDictionaryCompletionHandler _Nonnull)completionHandler {
    
    NSString *searchUrlString = [NSString stringWithFormat:@"%@similar", kSOAPIBaseURL];
    NSString *sortParam = [[SOSearchSettings sharedService] getSortParameterForUrl];
    NSString *orderParam = [[SOSearchSettings sharedService] getOrderParameterForUrl];
    NSString *pageNumber;
    if (pageNumberParam > 0) {
        pageNumber = [NSString stringWithFormat:@"%d", pageNumberParam];
    } else {
        pageNumber = [NSString stringWithFormat:@"%d", 1];
    }
    
    NSMutableDictionary *parameters = [[NSMutableDictionary alloc] init];
    [parameters setObject:pageNumber forKey:@"page"];
    [parameters setObject:sortParam forKey:@"sort"];
    [parameters setObject:orderParam forKey:@"order"];
    [parameters setObject:searchTermParam forKey:@"title"];
    [parameters setObject:@"stackoverflow" forKey:@"site"];
    
    [JSONAPIRequestService getRequestWithURL:searchUrlString parameters:(NSDictionary*)parameters withCompletion:^(id _Nullable data, NSError * _Nullable error) {
        if (error != nil) {
            completionHandler(nil, error);
            return ;
        }
        
        
        
        if ([data isKindOfClass:[NSDictionary class]]) {
            completionHandler((NSDictionary * ) data, nil);
            return;
        }
        
        NSError *dictionaryError = [NSError errorWithDomain:@"TYPE ERROR: Converting response object to Dictionary" code:-1 userInfo:nil];
        completionHandler(nil, dictionaryError);
    }];
}


@end
