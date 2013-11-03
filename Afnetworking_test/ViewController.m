//
//  ViewController.m
//  Afnetworking_test
//
//  Created by Han Shi on 2013-10-31.
//  Copyright (c) 2013 Han Shi. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)Test:(UIButton *)sender
{
    //sending request to php layer
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:[NSString stringWithFormat:@"http://localhost:8888/afnetworking_test.php?format=json"]
      parameters:nil
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSLog(@"%@", responseObject);
         }
         failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"Error Retrieving JSON" message:[NSString stringWithFormat:@"%@", error] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
             [av show];
         }];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
