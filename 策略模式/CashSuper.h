//
//  CashSuper.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CashSuper : NSObject

//单价
@property (nonatomic, assign) double signalPrice;
//数目
@property (nonatomic, assign) NSInteger number;
 
/*
 抽象类中添加一个返回总金额的方法声明，实现交给子类
 */
- (double)totalPrice;

@end

NS_ASSUME_NONNULL_END
