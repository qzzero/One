//
//  ArticleViewController.m
//  One
//
//  Created by scjy on 16/3/3.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "ArticleViewController.h"
#import "ShareViewController.h"
#import <AFHTTPSessionManager.h>
#import "NetworkEngine.h"
@interface ArticleViewController ()

@end

@implementation ArticleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //导航栏右按钮
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(rightBarAction)];
    self.navigationItem.rightBarButtonItem = rightBarButton;

    
//    [self requestModel];
    
    
    
    
}


//右分享
- (void)rightBarAction{
    
    
    ShareViewController *sharevc = [[ShareViewController alloc] init];
    [self.navigationController pushViewController:sharevc animated:YES];
    
}

//- (void)requestModel{
//
//    NSString *str = @"http://bea.wufazhuce.com/OneForWeb/one/getC_N?strMS=1&strDate=2016-03-05&strRow=1";
//
//
//    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
//    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
//    
//    [sessionManager GET:str parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
//        NSLog(@"%lld",downloadProgress.totalUnitCount);
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"%@",responseObject);
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"%@",error);
//    }];
//
//}


//- (void)networkDidStartLoading:(NetworkEngine *)networkEngine{
//
//    NSLog(@"网络请求开始");
//
//
//}


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
