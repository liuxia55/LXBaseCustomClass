//
//  LXAppDelegate.m
//  LXProject
//
//  Created by liuxia55 on 10/22/2017.
//  Copyright (c) 2017 liuxia55. All rights reserved.

#import "LXTabbarVC.h"
#import "LXNavigationVC.h"
#import "LXTabBar.h"
#import "UIColor+Extention.h"

#define RGB_COLOR_String(string)  [UIColor colorWithHexString:string]
#define RGB8a8a8a RGB_COLOR_String(@"8a8a8a")//副标题颜色

@interface LXTabbarVC ()

@end

@implementation LXTabbarVC
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)InitMiddleViewIsShow:(BOOL)show WithPresentController:(UIViewController*)vc
{
    if (show) {
        LXTabBar *tabBar = [[LXTabBar alloc] init];
        [self setValue:tabBar forKey:@"tabBar"];
        [tabBar setDidMiddBtn:^{
            LXNavigationVC *nav = [[LXNavigationVC alloc] initWithRootViewController:vc];
            [self presentViewController:nav animated:YES completion:nil];
        }];
    }
}
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    //NSLog(@" --- %@", item.title);
}

- (void)InitViewWithTitlesArr:(NSArray*)titArr WithImagesArr:(NSArray*)imagesArr WithSelectedImagesArr:(NSArray*)selectedImagesArr WithControllerArr:(NSArray*)controllersArr color:(UIColor*)navColor
{
    self.view.backgroundColor = [UIColor whiteColor];

    for (int i = 0; i < controllersArr.count; i++)
    {
        UIViewController *childVc = controllersArr[i];
        [self setVC:childVc title:titArr[i] image:imagesArr[i] selectedImage:selectedImagesArr[i] color:navColor];
    }
}

- (void)setVC:(UIViewController *)VC title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage color:(UIColor*)navColor
{
    VC.title = title;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor blackColor];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    [VC.tabBarItem setTitleTextAttributes:dict forState:UIControlStateNormal];
    VC.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    VC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    VC.tabBarController.tabBar.itemPositioning = UITabBarItemPositioningFill;
    LXNavigationVC *nav = [[LXNavigationVC alloc] initWithRootViewController:VC];
    nav.tabBarItem.title=title;
   [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:navColor} forState:UIControlStateSelected];
    [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:RGB8a8a8a} forState:UIControlStateNormal];
    [self addChildViewController:nav];
    

}

@end
