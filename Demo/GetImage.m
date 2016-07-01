//
//  GetImage.m
//  Demo
//
//  Created by Lycodes_Dong on 7/1/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "GetImage.h"

@implementation GetImage

+ (void)getImageWithTarget:(id)target Action:(SEL)action URL:(NSString *)urlstring {
    
    [[NSNotificationCenter defaultCenter]addObserver:target selector:action name:@"GetImage" object:nil];

    NSURL *url = [NSURL URLWithString:urlstring];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDownloadTask *downloadTask = [session downloadTaskWithRequest:request completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error){
        
        if (error == nil) {
            
            NSData *data = [NSData dataWithContentsOfURL:location];
            
            UIImage *image = [UIImage imageWithData:data];
            
            [[NSNotificationCenter defaultCenter]postNotificationName:@"GetImage" object:image];
            
        }
        
    }];
    
    [downloadTask resume];

}

+ (UIImage *)getImageWithURL:(NSString *)urlstring {
    
    NSURL *url = [NSURL URLWithString:urlstring];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    UIImage *image = [UIImage imageWithData:data];
    
    return image;
    
}

+ (float)setImageHeightWith:(UIImage *)image Width:(float)width {
    
    float height,imageHeight,imageWidth;
    
    imageWidth = image.size.width;
    
    imageHeight = image.size.height;
    
    height = imageHeight * width / imageWidth;
    
    return height;
    
}

@end
