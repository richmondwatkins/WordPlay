//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Vikas Bhakta on 9/30/14.
//  Copyright (c) 2014 Richmond. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultsTextView.text = [NSString stringWithFormat:@"%@ - %@ - %@ - %@", self.name, self.adjective, self.verb, self.preposition];
}

self.name = [[UIFont fontWithName:@"Gill Sans" size:16]];
//[textField setFont:font];

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
