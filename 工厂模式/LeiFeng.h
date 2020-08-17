//
//  LeiFeng.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//雷锋接口
@protocol LeiFeng <NSObject>

///扫地
- (void)sweep;

///洗衣
- (void)wash;

///买米
- (void)buyRice;

@end

NS_ASSUME_NONNULL_END
