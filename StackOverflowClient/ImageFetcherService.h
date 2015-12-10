//
//  ImageFetcherService.h
//  StackOverflowClient
//
//  Created by Regular User on 12/9/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Constants.h"

@interface ImageFetcherService : NSObject

@interface ImageFetcherService : NSObject
+(void)fetchImageInBackgroundFromUrl:(NSURL * _Nonnull)url completionHandler:(kNSImageCompletionHandler)completionHandler;

@end


