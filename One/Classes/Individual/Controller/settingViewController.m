//
//  settingViewController.m
//  One
//
//  Created by scjy on 16/3/8.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "settingViewController.h"
#import "UserAgreementViewController.h"
#import "FeedBackViewController.h"
#import "DKNightVersion.h"
#import "TQViewController.h"
#define kweight [UIScreen mainScreen].bounds.size.width
#define kheight [UIScreen mainScreen].bounds.size.height

@interface settingViewController ()

@property (nonatomic,retain)UITextField *useragreementf;

@end

@implementation settingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"设置";
    
    UILabel *looklable = [[UILabel alloc] initWithFrame:CGRectMake(10, 65, kweight - 20, 40)];
    looklable.text = @"浏览设置";
    looklable.textColor = [UIColor blackColor];
    looklable.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:looklable];
    
    
    
    UIButton *switchbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    switchbtn.frame = CGRectMake(10, 105, kweight + 2, 40);
    [switchbtn setTitle:@"夜间模式切换" forState:UIControlStateNormal];
    [switchbtn setBackgroundColor:[UIColor whiteColor]];
    [switchbtn.layer setBorderColor:(__bridge CGColorRef _Nullable)([UIColor colorWithRed:139 green:139 blue:139 alpha:0.8])];
    [switchbtn.layer setBorderWidth:1];
    [switchbtn.layer setMasksToBounds:YES];
    switchbtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [switchbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [switchbtn addTarget:self action:@selector(night:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:switchbtn];
    
    
    UILabel *morelable = [[UILabel alloc] initWithFrame:CGRectMake(10, 170, kweight - 20, 40)];
    morelable.text = @"更多";
    morelable.textColor = [UIColor blackColor];
    morelable.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:morelable];
    
    
    UIButton *scorebtn = [UIButton buttonWithType:UIButtonTypeCustom];
    scorebtn.frame = CGRectMake(10, 210, kweight + 2, 40);
    [scorebtn setTitle:@"去评分" forState:UIControlStateNormal];
    [scorebtn setBackgroundColor:[UIColor whiteColor]];
    [scorebtn.layer setBorderColor:(__bridge CGColorRef _Nullable)([UIColor colorWithRed:115 green:115 blue:115 alpha:1.0])];
    [scorebtn.layer setBorderWidth:1];
    [scorebtn.layer setMasksToBounds:YES];
    scorebtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [scorebtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [scorebtn addTarget:self action:@selector(score:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:scorebtn];
    
    
    UIButton *feedbackbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    feedbackbtn.frame = CGRectMake(10, 250, kweight + 2, 40);
    [feedbackbtn setTitle:@"反馈" forState:UIControlStateNormal];
    [feedbackbtn setBackgroundColor:[UIColor whiteColor]];
    [feedbackbtn.layer setBorderColor:(__bridge CGColorRef _Nullable)([UIColor colorWithRed:1.000 green:0.559 blue:0.372 alpha:1.000])];
    [feedbackbtn.layer setBorderWidth:1];
    [feedbackbtn.layer setMasksToBounds:YES];
    feedbackbtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [feedbackbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [feedbackbtn addTarget:self action:@selector(feedback:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:feedbackbtn];
   
    
    
    UIButton *useragreementbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    useragreementbtn.frame = CGRectMake(10, 290, kweight + 2, 40);
    [useragreementbtn setTitle:@"用户协议" forState:UIControlStateNormal];
    [useragreementbtn setBackgroundColor:[UIColor whiteColor]];
    [useragreementbtn.layer setBorderColor:(__bridge CGColorRef _Nullable)([UIColor colorWithRed:139 green:139 blue:139 alpha:0.2])];
    [useragreementbtn.layer setBorderWidth:1];
    [useragreementbtn.layer setMasksToBounds:YES];
    useragreementbtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [useragreementbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [useragreementbtn addTarget:self action:@selector(useragreement:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:useragreementbtn];

    
    
    
    UILabel *versionNumberLable = [[UILabel alloc] initWithFrame:CGRectMake(10, 330, kweight - 20, 40)];
    versionNumberLable.text = @"版本号          2.43";
    versionNumberLable.textColor = [UIColor blackColor];
    versionNumberLable.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:versionNumberLable];

    
    
    UIButton *WithdrawAccountbtn = [UIButton buttonWithType:UIButtonTypeCustom];
    WithdrawAccountbtn.frame = CGRectMake(10, 410, kweight + 2, 40);
    [WithdrawAccountbtn setTitle:@"退出当前账户" forState:UIControlStateNormal];
    [WithdrawAccountbtn setBackgroundColor:[UIColor whiteColor]];
    [WithdrawAccountbtn.layer setBorderColor:(__bridge CGColorRef _Nullable)([UIColor colorWithRed:139 green:139 blue:139 alpha:0.8])];
    [WithdrawAccountbtn.layer setBorderWidth:1];
    [WithdrawAccountbtn.layer setMasksToBounds:YES];
    WithdrawAccountbtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    [WithdrawAccountbtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [WithdrawAccountbtn addTarget:self action:@selector(useragreement:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:WithdrawAccountbtn];
    
    
}


//夜间模式
- (void)night:(UIButton *)btn{


    if ([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) {
        [DKNightVersionManager dawnComing];
        NSLog(@"切换成白天");
    } else {
        [DKNightVersionManager nightFalling];
        NSLog(@"切换为晚上");
    }
    


//夜间模式，//评分，分享，优化

}

//评分


- (void)score:(UIButton *)btn{

    TQViewController *scorevc = [[TQViewController alloc] init];
    
    scorevc.str = self.useragreementf.text;
    //：使用导航控制器推出下一个试图控制器
    //self.navigationController是当前视图控制器的导航视图控制器
    [self.navigationController pushViewController:scorevc animated:YES];




}



//用户协议
- (void)useragreement:(UIButton *)btn{
    
    UserAgreementViewController *useragreementvc = [[UserAgreementViewController alloc] init];
    
    useragreementvc.str = self.useragreementf.text;
    //：使用导航控制器推出下一个试图控制器
    //self.navigationController是当前视图控制器的导航视图控制器
    [self.navigationController pushViewController:useragreementvc animated:YES];
    
}

//反馈
- (void)feedback:(UIButton *)btn{
    
    FeedBackViewController *feedbackvc = [[FeedBackViewController alloc] init];
    
    feedbackvc.sstr = self.useragreementf.text;
    //：使用导航控制器推出下一个试图控制器
    //self.navigationController是当前视图控制器的导航视图控制器
    [self.navigationController pushViewController:feedbackvc animated:YES];
    
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
