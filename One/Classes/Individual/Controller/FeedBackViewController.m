//
//  FeedBackViewController.m
//  One
//
//  Created by scjy on 16/3/9.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "FeedBackViewController.h"
#import "IndividualViewController.h"

#define kweight [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height

@interface FeedBackViewController ()
@property (nonatomic,retain)UITextField *feedbacktf;
@property (nonatomic,retain)UITextField *tf;
@end

@implementation FeedBackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.title = @"用户反馈";
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(10, 70, kweight - 20, 80)];
    lable.text = @"请简要说明你面临的情况，或者您认为需要改进的地方";
    lable.numberOfLines = 0;
    lable.textColor = [UIColor blackColor];
    lable.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:lable];
    
   self.tf  = [[UITextField alloc] initWithFrame:CGRectMake(10, 160, kweight - 20, 200)];
    self.tf.borderStyle = UITextBorderStyleRoundedRect;
    self.tf.backgroundColor = [UIColor whiteColor];
    self.tf.placeholder = @"请输入你的反馈";
    self.tf.textColor = [UIColor blackColor];
    self.tf.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.tf.clearsOnBeginEditing = YES;
    self.tf.adjustsFontSizeToFitWidth = YES;
    self.tf.keyboardType = UIKeyboardTypeDefault;
    self.tf.returnKeyType = UIReturnKeyDone;
    [self.view addSubview:self.tf];
    
    UITextField*lxfs = [[UITextField alloc] initWithFrame:CGRectMake(10, 370, kweight - 20, 44)];
    lxfs.placeholder = @"请输入联系方式，建议邮箱或手机（可不填）";
    lxfs.borderStyle = UITextBorderStyleRoundedRect;
    lxfs.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:lxfs];
    
    
    
    UIButton *tjbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    tjbtn.frame = CGRectMake(20, 420, kweight - 40, 50);
    [tjbtn setBackgroundColor:[UIColor orangeColor]];
    [tjbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [tjbtn addTarget:self action:@selector(tj:) forControlEvents:UIControlEventTouchUpInside];
    tjbtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [tjbtn setTitle:@"提交" forState:UIControlStateNormal];
    [self.view addSubview:tjbtn];
   
    
}

- (void)tj:(UIButton *)btn{

    
    
    [self.tf setText:@""];
    self.tf.placeholder = @"感谢你的反馈，我们会再接再厉";
    

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
