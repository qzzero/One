//
//  MainViewController.m
//  One
//
//  Created by scjy on 16/3/3.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "MainViewController.h"
#import "ShareViewController.h"
#import <AFHTTPSessionManager.h>
#import "NetworkEngine.h"
#import "MainModel.h"
#import "MainView.h"


@interface MainViewController ()

@property (nonatomic, retain)NSArray *partitionarray;
@property (nonatomic, retain)NSMutableArray *allarray;

@property(nonatomic, strong) MainView *mainView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //导航栏右按钮
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(rightBarAction)];
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
    
    
    //请求网络数据
    [self requestModel];
    
    
    self.mainView=[[MainView alloc]initWithFrame:self.view.frame];
    
    
    [self.view addSubview:self.mainView];
    
    
    
    
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




#pragma mark ------网络请求解析 获得数据

- (void)requestModel{
    
    NSString *str = @"http://bea.wufazhuce.com/OneForWeb/one/getHpinfo?strLastUpdateDate=2016-02-24+09%3A46%3A35&strDate=2016-03-05";
    
    
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    sessionManager.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    
    
    [sessionManager GET:str parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"%lld",downloadProgress.totalUnitCount);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        NSDictionary *rootDic=responseObject;
        
        NSDictionary *dic=rootDic[@"hpEnity"];
        
        MainModel *model=[[MainModel alloc]init];
        
        [model setValuesForKeysWithDictionary:dic];
        
        
        [_allarray addObject:model];
        
        
        
        
        
        
        
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
