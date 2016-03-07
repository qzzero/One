//
//  IndividualViewController.m
//  One
//
//  Created by scjy on 16/3/3.
//  Copyright © 2016年 乔自朋. All rights reserved.
//
//个人

#import "IndividualViewController.h"
#import "IndividualView.h"

#define kweight [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height

@interface IndividualViewController ()

@end

@implementation IndividualViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
   
    UIButton *loginbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    loginbtn.frame = CGRectMake(-0.8, 65, kweight + 2, 50);
    [loginbtn setTitle:@"立即登录" forState:UIControlStateNormal];
    [loginbtn setBackgroundColor:[UIColor whiteColor]];
    [loginbtn.layer setBorderColor:[UIColor blackColor].CGColor];
    [loginbtn.layer setBorderWidth:1];
    [loginbtn.layer setMasksToBounds:YES];
    loginbtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [loginbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [loginbtn addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginbtn];
    
    
    UIButton *settingbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    settingbtn.frame = CGRectMake(-0.8, 115, kweight + 2, 50);
    [settingbtn setTitle:@"设置" forState:UIControlStateNormal];
//    [settingbtn setBackgroundColor:[UIColor whiteColor]];
//    [settingbtn.layer setBorderColor:[UIColor blackColor].CGColor];
//    [settingbtn.layer setBorderWidth:1];
//    [settingbtn.layer setMasksToBounds:YES];
    [settingbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [settingbtn addTarget:self action:@selector(setting:) forControlEvents:UIControlEventTouchUpInside];
    settingbtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.view addSubview:settingbtn];
    
    
    UIButton *aboutbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    aboutbtn.frame = CGRectMake(-0.8, 165, kweight + 2 , 50);
    [aboutbtn setTitle:@"关于" forState:UIControlStateNormal];
    [aboutbtn setBackgroundColor:[UIColor whiteColor]];
    [aboutbtn.layer setBorderColor:[UIColor blackColor].CGColor];
    [aboutbtn.layer setBorderWidth:1];
    [aboutbtn.layer setMasksToBounds:YES];
    [aboutbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [aboutbtn addTarget:self action:@selector(about:) forControlEvents:UIControlEventTouchUpInside];
    aboutbtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.view addSubview:aboutbtn];
    
    
    UILabel *APPlable = [[UILabel alloc] initWithFrame:CGRectMake(10, 215, kweight - 20, 40)];
    APPlable.text = @"推荐应用";
    APPlable.textColor = [UIColor blackColor];
    APPlable.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:APPlable];
    
    
    
    
    
    
}

- (void)login:(UIButton *)btn{






}

- (void)setting:(UIButton *)btn{
    
    
    
    
    
    
}

- (void)about:(UIButton *)btn{



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
