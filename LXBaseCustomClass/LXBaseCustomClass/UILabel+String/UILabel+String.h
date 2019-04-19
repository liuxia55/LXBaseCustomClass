//
//  UILabel+String.h
//  QianSHou
//
//  Created by 刘霞 on 2019/2/22.
//  Copyright © 2019年 刘霞. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (String)
/**
 设置文本,并指定行间距
 
 @param text 文本内容
 @param lineSpacing 行间距
 */
-(void)setText:(NSString*)text lineSpacing:(CGFloat)lineSpacing;
@end

NS_ASSUME_NONNULL_END
