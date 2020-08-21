//
//  RestState.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "RestState.h"
#import "Work.h"

@implementation RestState

- (void)writeProgram:(Work *)work {
    NSLog(@"当前时间%.f点，下班回家了",work.hour);
}

@end
