//
//  ProblemViewController.m
//  One
//
//  Created by scjy on 16/3/3.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "ProblemViewController.h"
#import "ShareViewController.h"
#import <AFHTTPSessionManager.h>
#import "NetworkEngine.h"
@interface ProblemViewController ()

@end

@implementation ProblemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //导航栏右按钮
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(rightBarAction)];
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
    
    
    //请求网络数据
//    [self requestModel];
    
    
    
    
    
    
}

//右按钮分享
- (void)rightBarAction{
    
    
    ShareViewController *sharevc = [[ShareViewController alloc] init];
    [self.navigationController pushViewController:sharevc animated:YES];
    
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
