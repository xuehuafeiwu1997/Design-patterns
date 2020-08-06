//
//  Operation.h
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//运算类型
typedef NS_ENUM(NSUInteger,OperationType) {
    //加法
    OperationTypeAdd,
    //减法
    OperationTypeSub,
    //乘法
    OperationTypeMul,
    //除法
    OperationTypeDiv,
};

//运算抽象类
@interface Operation : NSObject

//操作数A numberA
@property (nonatomic, assign) CGFloat numberA;
//操作数B numberB
@property (nonatomic, assign) CGFloat numberB;

//获取运算结果
- (CGFloat)getResult;

@end

