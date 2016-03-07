//
//  ThingView.m
//  One
//
//  Created by scjy on 16/3/7.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "ThingView.h"
#define kweight [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height
@implementation ThingView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customView];
    }
    return self;
}

-(void)customView{

    
    self.ThingImge = [[UIImageView alloc] initWithFrame:CGRectMake(10, 70, kweight - 20, 440)];
    self.ThingImge.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.ThingImge];
    
    
    self.ThingName = [[UILabel alloc] initWithFrame:CGRectMake(10, 525, 90, 60)];
    self.ThingName.text = @"东西名字";
    self.ThingName.font = [UIFont systemFontOfSize:20];
    [self addSubview: self.ThingName];
    
    
    self.ThingDescribe = [[UILabel alloc] initWithFrame:CGRectMake(10, 580, 210, 40)];
    self.ThingDescribe.text = @"东西描述";
    self.ThingDescribe.numberOfLines=0;
    [self addSubview: self.ThingDescribe];

    
    self.Thingtime = [[UILabel alloc] initWithFrame:CGRectMake(220, 550, 100, 40)];
    self.Thingtime.text = @"时间";
    [self addSubview: self.Thingtime];
    
    
    
    

}

@end
