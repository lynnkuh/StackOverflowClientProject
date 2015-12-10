//
//  OAuthWebViewController.h
//  StackOverflowClient
//
//  Created by Regular User on 12/7/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^OAuthWebViewControllerComletion)();

@interface OAuthWebViewController : UIViewController

@property (copy, nonatomic) OAuthWebViewControllerComletion completion;

@end