//
//  OperationFactory.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "OperationFactory.h"
#import "OperationAdd.h"
#import "OperationSub.h"
#import "OperationMul.h"
#import "OperationDiv.h"

@implementation OperationFactory

+ (Operation *)createOperation:(OperationType)operationType {
    switch (operationType) {
        case OperationTypeAdd:
            return [[OperationAdd alloc] init];
            break;
        case OperationTypeSub:
            return [[OperationSub alloc] init];
            break;
        case OperationTypeMul:
            return [[OperationMul alloc] init];
            break;
        case OperationTypeDiv:
            return [[OperationDiv alloc] init];
            break;
        default:
            return nil;
            break;
    }
}

@end
