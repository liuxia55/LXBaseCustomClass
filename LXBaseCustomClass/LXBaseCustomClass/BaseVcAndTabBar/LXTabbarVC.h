//
//  LXAppDelegate.m
//  LXProject
//
//  Created by liuxia55 on 10/22/2017.
//  Copyright (c) 2017 liuxia55. All rights reserved.

#import <UIKit/UIKit.h>

@interface LXTabbarVC : UITabBarController
- (void)InitViewWithTitlesArr:(NSArray*)titArr WithImagesArr:(NSArray*)imagesArr WithSelectedImagesArr:(NSArray*)selectedImagesArr WithControllerArr:(NSArray*)controllersArr color:(UIColor*)navColor;

- (void)InitMiddleViewIsShow:(BOOL)show WithPresentController:(UIViewController*)vc;

@end
