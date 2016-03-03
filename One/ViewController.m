//
//  ViewController.m
//  One
//
//  Created by scjy on 16/3/3.
//  Copyright © 2016年 乔自朋. All rights reserved.
//

#import "ViewController.h"

#import "MainViewController.h"
#import "ArticleViewController.h"
#import "ProblemViewController.h"
#import "ThingViewController.h"
#import "IndividualViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //验证
//    self.view.backgroundColor = [UIColor redColor];
    
    
    UITabBarController *tabBarvc = [[UITabBarController alloc]init];
    //创建被tabBarvc管理的视图控制器
    
    //主页
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *mainnav = mainStoryboard.instantiateInitialViewController;
    mainnav.tabBarItem.image = [UIImage imageNamed:@"ft_home_normal_ic"];
    mainnav.tabBarItem.selectedImage = [UIImage imageNamed:@"ft_home_selected_ic"];
    mainnav.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
    //文章
    UIStoryboard *ArticleStoryboard = [UIStoryboard storyboardWithName:@"Article" bundle:nil];
    UINavigationController *Articlenav = ArticleStoryboard.instantiateInitialViewController;
    Articlenav.tabBarItem.image = [UIImage imageNamed:@"Icon-72"];
    Articlenav.tabBarItem.selectedImage = [UIImage imageNamed:@"Icon-60"];
    Articlenav.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
    //问题
    UIStoryboard *ProblemStoryboard = [UIStoryboard storyboardWithName:@"Problem" bundle:nil];
    UINavigationController *Problemnav = ProblemStoryboard.instantiateInitialViewController;
    Problemnav.tabBarItem.image = [UIImage imageNamed:@"u=1944376837"];
    Problemnav.tabBarItem.selectedImage = [UIImage imageNamed:@"u=3244889210"];
    Problemnav.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
    
    
    //东西
    UIStoryboard *ThingStoryboard = [UIStoryboard storyboardWithName:@"Thing" bundle:nil];
    UINavigationController *Thingnav = ThingStoryboard.instantiateInitialViewController;
    Thingnav.tabBarItem.image = [UIImage imageNamed:@"u=1602452522,2035743143&fm=21&gp=0"];
    Thingnav.tabBarItem.selectedImage = [UIImage imageNamed:@"u=1764028647,105988125&fm=21&gp=0"];
    Thingnav.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
    
    
    //个人
    UIStoryboard *IndividualStoryboard = [UIStoryboard storyboardWithName:@"Individual" bundle:nil];
    UINavigationController *Individualnav = IndividualStoryboard.instantiateInitialViewController;
    Individualnav.tabBarItem.image = [UIImage imageNamed:@"ft_person_normal_ic"];
    Individualnav.tabBarItem.selectedImage = [UIImage imageNamed:@"ft_person_selected_ic-1"];
    Individualnav.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    
    
    
    
    
    //添加被管理的试图控制器
    tabBarvc.viewControllers = @[mainnav,Articlenav,Problemnav,Thingnav,Individualnav];
    tabBarvc.tabBar.backgroundColor = [UIColor whiteColor];
    

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
