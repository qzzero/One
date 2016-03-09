//
//  aboutViewController.m
//  One
//
//  Created by scjy on 16/3/8.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "aboutViewController.h"

#import "ShareViewController.h"
#import "NetworkEngine.h"
#import <AFHTTPSessionManager.h>
#import "aboutView.h"
#import <UIImageView+WebCache.h>

#define kweight [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height



@interface aboutViewController ()

@end

@implementation aboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.title = @"关于";
    
    //请求网络数据
    [self requestModel];
    
    self.navigationController.automaticallyAdjustsScrollViewInsets=YES;
    
}

//3.实现代理方法
- (void)networkDidStartLoading:(NetworkEngine *)networkEngine{
    NSLog(@"网络请求开始");
}
- (void)networkDidFinishLoading:(NetworkEngine *)networkEngine withResponseObject:(id)responseObject{
    NSLog(@"%@", responseObject);
}

- (void)requestModel{
    
  //
        NSString *str = @"http://m.wufazhuce.com/about?from=ONEApp?ONEApp";
    
    
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    sessionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [sessionManager GET:str parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
       NSLog(@"%lld",downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        
      
        UIWebView *webview=[[UIWebView alloc]initWithFrame:self.view.frame];
        NSURLRequest *requate=[[NSURLRequest alloc]initWithURL:[NSURL URLWithString:str]];
        [webview loadRequest:requate];
        [self.view addSubview:webview];
        
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
    
    
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
