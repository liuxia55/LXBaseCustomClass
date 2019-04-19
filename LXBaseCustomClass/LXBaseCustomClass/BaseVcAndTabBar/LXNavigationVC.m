//
//  LXAppDelegate.m
//  LXProject
//
//  Created by liuxia55 on 10/22/2017.
//  Copyright (c) 2017 liuxia55. All rights reserved.

#import "LXNavigationVC.h"
#define RGB(R, G, B)    [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0]
#define NAV_COLOR RGB(250,112,92)//导航栏颜色
@interface LXNavigationVC ()<UINavigationBarDelegate>

@end

@implementation LXNavigationVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationBar.barTintColor=NAV_COLOR;
    //设置标题文字样式
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:17];
    [self.navigationBar setTitleTextAttributes:attrs];

   
}
- (void)popToBack
{
    [self popViewControllerAnimated:NO];
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0)
    {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    return [super popViewControllerAnimated:animated];
}
//#pragma mark --------navigation delegate
//该方法可以解决popRootViewController时tabbar的bug
//- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
//{
//    //删除系统自带的tabBarButton
//    for (UIView *tabBar in self.tabBarController.tabBar.subviews)
//    {
//        if ([tabBar isKindOfClass:NSClassFromString(@"UITabBarButton")])
//        {
//            [tabBar removeFromSuperview];
//        }
//    }
//    
//}

@end
