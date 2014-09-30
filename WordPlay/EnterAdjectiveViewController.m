//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Vikas Bhakta on 9/30/14.
//  Copyright (c) 2014 Richmond. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"
@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ResultsViewController *resultsViewController = segue.destinationViewController;
    resultsViewController.adjective = self.adjectiveTextField.text;
    resultsViewController.name  = self.name;
}

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
