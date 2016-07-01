//
//  GetValueViewController.m
//  Demo
//
//  Created by Lycodes_Dong on 7/1/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "GetValueViewController.h"

@interface GetValueViewController ()

@end

@implementation GetValueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setMyLabelValue:(NSString *)string {

    valueString = string;

}

- (IBAction)getValue:(id)sender {

    self.myLabel.text = valueString;

}

@end
