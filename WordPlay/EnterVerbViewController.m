//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Vikas Bhakta on 9/30/14.
//  Copyright (c) 2014 Richmond. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterPrepositionViewController.h"

@interface EnterVerbViewController ()
@property (strong, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    EnterPrepositionViewController *enterPrepositionViewController = segue.destinationViewController;
    enterPrepositionViewController.adjective = self.adjective;
    enterPrepositionViewController.verb = self.verbTextField.text;
    enterPrepositionViewController.name  = self.name;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    BOOL rValue = NO;

    if(self.verbTextField.text.length){
        rValue = YES;
    }

    return rValue;
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
