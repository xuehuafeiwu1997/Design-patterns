//
//  ForenoonState.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "ForenoonState.h"
#import "Work.h"
#import "NoonState.h"

@implementation ForenoonState

- (void)writeProgram:(Work *)work {
    if (work.hour < 12) {
        NSLog(@"当前时间:%.f点，上午工作，精神百倍",work.hour);
    } else {
        work.state = [[NoonState alloc] init];
        [work writeProgram];
    }
}

@end
