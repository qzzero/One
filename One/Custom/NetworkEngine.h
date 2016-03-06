//
//  NetworkEngine.h
//  UINetworkRequest
//
//  Created by SCJY on 15/12/23.
//  Copyright © 2015年 SCJY. All rights reserved.
//

#import <Foundation/Foundation.h>

//3.创建一个网络请求类型的枚举
typedef enum{
    NetworkEngineTypeGET,  //GET网络请求
    NetworkEngineTypePOST,  //POST网络请求
    NetworkEngineTypePUT,   //PUT网络请求
    NetworkEngineTypeDELETE   //DELETE网络请求
}NetworkEngineType;


//只需要让代理协议知道有NetworkEngine这个类，而不需要编译NetworkEngine里边的内容
@class NetworkEngine;
//1.创建网络请求的代理
@protocol NetworkEngineDelegate <NSObject>
//网络请求开始
- (void)networkDidStartLoading:(NetworkEngine *)networkEngine;
- (void)networkDidFinishLoading:(NetworkEngine *)networkEngine withResponseObject:(id)responseObject;
@end


@interface NetworkEngine : NSObject

//2.创建初始化方法，传入网络请求的必要数据
/*
 第一个参数urlString：网络请求的网址
 第二个参数parameters：POST类型的网络请求需要传入的参数列表
 第三个参数delegate：遵循网络请求协议的类
 第四个参数networkType：网络请求类型
 */

+ (instancetype)networkEngineWithURLString:(NSString *)urlString parameters:(NSDictionary *)parameters requestDelegate:(id<NetworkEngineDelegate>)delegate httpMethodType:(NetworkEngineType)networkType;
//4.开始网络请求
- (void)startRequestNetwork;

@end
