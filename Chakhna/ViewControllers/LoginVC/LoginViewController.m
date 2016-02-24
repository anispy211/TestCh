//
//  ViewController.m
//  Chakhna
//
//  Created by Vantage Point analytics on 2/24/16.
//  Copyright © 2016 BMS. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.loginButton.delegate = self;
    self.loginButton.readPermissions = @[@"public_profile", @"email"];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - FBLoginView Delegate method implementation

-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView{
  //  self.lblLoginStatus.text = @"You are logged in.";
    
//   / [self toggleHiddenState:NO];
}


-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user{
    NSLog(@"%@", user);
//    self.profilePicture.profileID = user.id;
//    self.lblUsername.text = user.name;
//    self.lblEmail.text = [user objectForKey:@"email"];
    
    MainViewController * mc = [self.storyboard instantiateViewControllerWithIdentifier:@"MainVC_ID"];
    mc.fbProfileID = user.id;
    mc.fbProfileName = user.name;

    [self showViewController:mc sender:self];
    
    
    
}


-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView{
//    self.lblLoginStatus.text = @"You are logged out";
    
//    [self toggleHiddenState:YES];
}


-(void)loginView:(FBLoginView *)loginView handleError:(NSError *)error{
    NSLog(@"%@", [error localizedDescription]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
