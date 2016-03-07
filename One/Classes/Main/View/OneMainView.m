//
//  OneMainView.m
//  One
//
//  Created by scjy on 16/3/6.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "OneMainView.h"

#define kweight [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height


@implementation OneMainView




- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customView];
    }
    return self;
}

-(void)customView{
    
    
    self.sessionLable=[[UILabel alloc]initWithFrame:CGRectMake(10, 65,120 , 24)];
    self.sessionLable.textColor = [UIColor blackColor];
    self.sessionLable.text=@"发布次数";
    self.sentencelabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.sessionLable];
    
    
    
    self.imageView=[[UIImageView alloc]initWithFrame:CGRectMake(10, 100, kweight-20, kweight-40)];
    
    self.imageView.backgroundColor=[UIColor redColor];
    [self addSubview:self.imageView];
    
    
    
    self.name=[[UILabel alloc]initWithFrame:CGRectMake(kweight-130, kweight + 65, 150, 44)];
    
    self.name.text=@"作品名及作者";
    self.name.numberOfLines = 0;
    [self addSubview:self.name];
    
    
    
    
    self.timelabel = [[UILabel alloc] initWithFrame:CGRectMake(5, kweight + 150, 50, 58)];
    self.timelabel.numberOfLines=0;
    self.timelabel.text = @"时间";
    self.timelabel.textColor= [UIColor orangeColor];
    self.timelabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.timelabel];
    
    
    
    
    self.sentencelabel = [[UILabel alloc] initWithFrame:CGRectMake(60, kweight + 130, kweight - 65, 125)];
    self.sentencelabel.text = @"hahahh";
    
    self.sentencelabel.tintColor = [UIColor redColor];
    self.sentencelabel.font = [UIFont systemFontOfSize:15];
    self.sentencelabel.numberOfLines=0;
    self.sentencelabel.backgroundColor=[UIColor lightGrayColor];
   
    [self addSubview:self.sentencelabel];
    
    
    
}




@end
