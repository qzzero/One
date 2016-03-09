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
#import "ProblemView.h"
#import "ProblemModel.h"

#define kweight [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height


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
   [self requestModel];
    
    self.navigationController.automaticallyAdjustsScrollViewInsets=YES;
    
    
    
    
}

//右按钮分享
- (void)rightBarAction{
    
    
    ShareViewController *sharevc = [[ShareViewController alloc] init];
    [self.navigationController pushViewController:sharevc animated:YES];
    
}


//3.实现代理方法
- (void)networkDidStartLoading:(NetworkEngine *)networkEngine{
    NSLog(@"网络请求开始");
}
- (void)networkDidFinishLoading:(NetworkEngine *)networkEngine withResponseObject:(id)responseObject{
    NSLog(@"%@", responseObject);
}


#pragma mark --------- 网络请求

- (void)requestModel{


    NSString *str = @"http://bea.wufazhuce.com/OneForWeb/one/getQ_N?strDate=2016-03-03&strRow=2";
    
    
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/plain"];
    
    
    
    
    [sessionManager GET:str parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"%lld",downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);

        
        NSDictionary *dic=responseObject;
        
        
        NSDictionary *rootdic=dic[@"questionAdEntity"];
        
        
        NSString *str=rootdic[@"sWebLk"];
        
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
