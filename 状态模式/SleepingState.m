//
//  SleepingState.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "SleepingState.h"
#import "Work.h"

@implementation SleepingState

- (void)writeProgram:(Work *)work {
    NSLog(@"当前时间%.f点,不行了，睡着了",work.hour);
}

@end
