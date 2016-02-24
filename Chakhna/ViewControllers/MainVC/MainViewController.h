//
//  MainViewController.h
//  Chakhna
//
//  Created by Vantage Point analytics on 2/24/16.
//  Copyright © 2016 BMS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>


@interface MainViewController : UIViewController <FBLoginViewDelegate>
@property (nonatomic,strong) NSString * fbProfileID;
@property (nonatomic,strong) NSString * fbProfileName;
@property (weak, nonatomic) IBOutlet UITableView * mainTableview;
@property (weak, nonatomic) IBOutlet UIImageView * tempimgView;
@property (weak, nonatomic) IBOutlet FBProfilePictureView * profilePicture;
@property (weak, nonatomic) IBOutlet UILabel * profileNameLbl;

@property (weak, nonatomic) IBOutlet UITextField * inputTextFiled;

@end
