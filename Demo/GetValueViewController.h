//
//  GetValueViewController.h
//  Demo
//
//  Created by Lycodes_Dong on 7/1/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GetValueViewController : UIViewController{

    NSString *valueString;

}

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (void)setMyLabelValue:(NSString *)string;

@end
