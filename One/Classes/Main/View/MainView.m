//
//  MainView.m
//  One
//
//  Created by scjy on 16/3/6.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "MainView.h"

#define KWidth self.frame.size.width
#define KHigh self.frame.size.high

@interface MainView()


@property(nonatomic, strong) UILabel *label;
@property(nonatomic, strong) UIImage *image;



@end


@implementation MainView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customView];
    }
    return self;
}
-(void)customView{
    
    self.label=[[UILabel alloc]initWithFrame:CGRectMake(10, 70, 100, 44)];
    
    self.label.text=@"VOL.1244";
    self.label.textColor = [UIColor blackColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    
    [self addSubview:self.label];
    
    
    
    
    
    
    
    
    
}


@end
