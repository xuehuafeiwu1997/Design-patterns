//
//  OperationDiv.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "OperationDiv.h"

@implementation OperationDiv

- (CGFloat)getResult {
    NSParameterAssert(self.numberB != 0);
    return self.numberA / self.numberB;
}

@end
