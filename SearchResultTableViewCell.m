//
//  SearchResultTableViewCell.m
//  StackOverflowClient
//
//  Created by Regular User on 12/10/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import "SearchResultTableViewCell.h"
#import "ImageFetcherService.h"

@interface SearchResultTableViewCell ()

@end

@implementation SearchResultTableViewCell

-(void)setQuestion:(Question *)question {
    self.userNameLabel.text = question.owner.displayName;
    self.titleLabel.text = question.title;
    
    //    NSLog(@"profileImageURL %@", question.owner.profileImageURL.description);
    
    [ImageFetcherService fetchImageInBackgroundFromUrl:question.owner.profileImageURL completionHandler:^(UIImage * _Nullable data, NSError * _Nullable error) {
        
        if (error) {
            
        }
        [self.imageView setImage:data];
    }];
    
}

- (void)awakeFromNib {
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end

