//
//  DemoUI2ViewController.m
//  Demo
//
//  Created by Lycodes_Dong on 7/1/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "DemoUI2ViewController.h"
#import "GetValueViewController.h"

@interface DemoUI2ViewController ()

@end

@implementation DemoUI2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"Demo2"]) {
        
        GetValueViewController *getValueViewController = [segue destinationViewController];
        
        [getValueViewController setMyLabelValue:self.myTextField.text];
        
    }
    
}


@end
