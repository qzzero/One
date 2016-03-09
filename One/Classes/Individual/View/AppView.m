//
//  AppView.m
//  One
//
//  Created by scjy on 16/3/8.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "AppView.h"

#define kweight [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height

@implementation AppView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self customView];
    }
    return self;
}

-(void)customView{
    self.newbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    
    //推荐应用暂时不想写了

//    self.newbtn.frame = CGRectMake(10, 255, kweight - 10 , 50);
//    [self.newbtn setTitle:@"" forState:UIControlStateNormal];
//    [self.newbtn setBackgroundColor:[UIColor whiteColor]];
//    [self.newbtn.layer setBorderColor:[UIColor orangeColor].CGColor];
//    [self.newbtn.layer setBorderWidth:1];
//    [self.newbtn setBackgroundColor:[UIColor whiteColor]];
//    [self.newbtn.layer setMasksToBounds:YES];
//    [self.newbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [self.newbtn addTarget:self action:@selector(newbtn:) forControlEvents:UIControlEventTouchUpInside];
//    self.newbtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
//    [self addSubview:self.newbtn];
//


}
@end
