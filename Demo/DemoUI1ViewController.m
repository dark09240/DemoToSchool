//
//  DemoUI1ViewController.m
//  Demo
//
//  Created by Lycodes_Dong on 7/1/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "DemoUI1ViewController.h"

@implementation DemoUI1ViewController

- (IBAction)myButtonClick:(id)sender {
    self.myLabel.text = self.myTextField.text;
}

@end
