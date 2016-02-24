//
//  MainViewController.m
//  Chakhna
//
//  Created by Vantage Point analytics on 2/24/16.
//  Copyright © 2016 BMS. All rights reserved.
//

#import "MainViewController.h"
#import "MainListTableViewCell.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.profilePicture.profileID = self.fbProfileID;
    
    NSArray * namearr = [self.fbProfileName componentsSeparatedByString:@" "];
    self.profileNameLbl.text = [NSString stringWithFormat:@"Hey, %@!",namearr[0]];
    
    
    [self setUpUI];

}


- (void)setUpUI
{
    
    
    [self.inputTextFiled.layer setCornerRadius:15];
    [self.inputTextFiled.layer setBorderWidth:1.0];
    [self.inputTextFiled.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.inputTextFiled setClipsToBounds:YES];
    
    [self.tempimgView.layer setCornerRadius:65];
    [self.tempimgView.layer setBorderWidth:1.0];
    [self.tempimgView setClipsToBounds:YES];
    
    [self.profilePicture.layer setCornerRadius:65];
    [self.profilePicture.layer setBorderWidth:1.0];
    [self.profilePicture setClipsToBounds:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - UITableviewDelegates & DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 3;    //count number of row from counting array hear cataGorry is An Array
}




- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"MyIdentifier";
    
    MainListTableViewCell *cell = (MainListTableViewCell*)[tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    
    switch (indexPath.row) {
        case 0:
            cell.imgView.image = [UIImage imageNamed:@"nonveg.png"];
             cell.title.text = @"I Love non-veg";
            
         
            
            cell.backgroundColor = [UIColor orangeColor];


            break;
            
        case 1:
            cell.imgView.image = [UIImage imageNamed:@"veg.png"];

             cell.title.text= @"Crazy Vegeterian";
               cell.backgroundColor = [UIColor colorWithRed:116.0/255.0 green:168.0/255.0 blue:27.0/255.0 alpha:1.0];

            break;
            
        case 2:
            
            cell.imgView.image = [UIImage imageNamed:@"all.png"];

            cell.title.text = @"OK with all stuff";
            cell.backgroundColor = [UIColor colorWithRed:202.0/255.0 green:157.0/255.0 blue:19.0/255.0 alpha:1.0];

            break;
            
        default:
            break;
    }
    
  
  
    return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGRect frame= tableView.frame;
    
    CGFloat cellHeight = frame.size.height/3;
    
    return cellHeight;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [self performSelector:@selector(reloadCell) withObject:self afterDelay:1.0f];
}

- (void)reloadCell
{
    [self.mainTableview reloadData];
}


@end
