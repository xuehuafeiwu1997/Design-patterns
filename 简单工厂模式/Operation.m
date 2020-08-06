//
//  Operation.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "Operation.h"

@implementation Operation

- (CGFloat)getResult {
    NSAssert(NO, @" %s 必须被子类所覆盖",__func__);
    return 0;
}

@end
