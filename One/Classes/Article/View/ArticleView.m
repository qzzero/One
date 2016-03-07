//
//  ArticleView.m
//  One
//
//  Created by scjy on 16/3/7.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "ArticleView.h"

@implementation ArticleView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customView];
    }
    return self;
}

- (void)customView{
    
    self.timeLable = [[UILabel alloc] initWithFrame:CGRectMake(20, 70, 80, 30)];
    self.timeLable.textColor = [UIColor blackColor];
    self.timeLable.text = @"name";
    self.timeLable.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.timeLable];
    
    
    
    
    
    

    /**
     *  self.sessionLable=[[UILabel alloc]initWithFrame:CGRectMake(10, 65,120 , 24)];
     self.sessionLable.textColor = [UIColor blackColor];
     self.sessionLable.text=@"发布次数";
     self.sentencelabel.textAlignment = NSTextAlignmentCenter;
     [self addSubview:self.sessionLable];
     */



}




@end

