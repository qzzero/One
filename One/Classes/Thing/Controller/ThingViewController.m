//
//  ThingViewController.m
//  One
//
//  Created by scjy on 16/3/3.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "ThingViewController.h"
#import <AFHTTPSessionManager.h>
#import "NetworkEngine.h"
#import "ShareViewController.h"
#import "ThingView.h"
#import "ThingModel.h"
#import <UIImageView+WebCache.h>



@interface ThingViewController ()

@property(nonatomic, strong)ThingView *OneThing;



@end

@implementation ThingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

     self.view.backgroundColor = [UIColor whiteColor];
    
    //导航栏右按钮
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(rightBarAction)];
    self.navigationItem.rightBarButtonItem = rightBarButton;

    
    
    //请求网络数据
    [self requestModel];
    
    self.OneThing = [[ThingView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:_OneThing];
    
}

//右分享按钮

- (void)rightBarAction{
    
    ShareViewController *sharevc = [[ShareViewController alloc] init];
    [self.navigationController pushViewController:sharevc animated:1];
    
}

//3.实现代理方法
- (void)networkDidStartLoading:(NetworkEngine *)networkEngine{
    NSLog(@"网络请求开始");
}
- (void)networkDidFinishLoading:(NetworkEngine *)networkEngine withResponseObject:(id)responseObject{
    NSLog(@"%@", responseObject);
}



#pragma mark ------网络请求解析 获得数据
- (void)requestModel{
    
    NSString *str = @"http://bea.wufazhuce.com/OneForWeb/one/o_f?strDate=2016-03-05&strRow=1";
    
    
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    [sessionManager GET:str parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"%lld",downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        
        NSDictionary *rootDic=responseObject;
        
        NSDictionary *dic=rootDic[@"entTg"];
        
        
        self.OneThing.ThingDescribe.text = dic[@"strTc"];
        self.OneThing.Thingtime.text = dic[@"strTm"];
        self.OneThing.ThingName.text = dic[@"strTt"];
        [self.OneThing.ThingImge sd_setImageWithURL:[NSURL URLWithString:@"http://pic.yupoo.com/hanapp/Fhu0PDJP/tjgxZ.jpg"] placeholderImage:nil];
        
        
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
