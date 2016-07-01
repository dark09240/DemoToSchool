//
//  GetImage.h
//  Demo
//
//  Created by Lycodes_Dong on 7/1/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface GetImage : NSObject

+ (void)getImageWithTarget:(id)target Action:(SEL)action URL:(NSString *)urlstring;

+ (UIImage *)getImageWithURL:(NSString *)urlstring;

+ (float)setImageHeightWith:(UIImage *)image Width:(float)width;

@end
