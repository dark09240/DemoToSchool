//
//  ViewController.m
//  Demo
//
//  Created by Lycodes_Dong on 7/1/16.
//  Copyright © 2016 Dong. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushStoryBoard:(id)sender {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"SB2" bundle:nil];
    
    UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"TestViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (IBAction)xibChangePage:(id)sender {

    TableViewController *tableViewController = [[TableViewController alloc]initWithNibName:@"TableViewController" bundle:nil];
    
    [self.navigationController pushViewController:tableViewController animated:YES];

}

@end
