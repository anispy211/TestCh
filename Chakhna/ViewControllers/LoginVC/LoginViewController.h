//
//  ViewController.h
//  Chakhna
//
//  Created by Vantage Point analytics on 2/24/16.
//  Copyright © 2016 BMS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>


@interface LoginViewController : UIViewController<FBLoginViewDelegate>

@property (weak, nonatomic) IBOutlet FBLoginView *loginButton;

@end

