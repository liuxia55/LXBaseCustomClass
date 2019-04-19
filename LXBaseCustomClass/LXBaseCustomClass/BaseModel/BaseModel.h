//
//  BaseModel.h
//  Reader
//
//  Created by 刘霞 on 2018/1/16.
//  Copyright © 2018年 刘霞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject
- (instancetype)initWithDic:(NSDictionary*)dic;

- (NSDictionary *)dicFromObject:(NSObject *)object;
@end
