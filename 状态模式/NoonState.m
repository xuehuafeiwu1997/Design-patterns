//
//  NoonState.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "NoonState.h"
#import "Work.h"
#import "AftersoonState.h"

@implementation NoonState

- (void)writeProgram:(Work *)work {
    if (work.hour < 13) {
        NSLog(@"当前时间%.f点，饿了，午饭，犯困，午休",work.hour);
    } else {
        work.state = [[AftersoonState alloc] init];
        [work writeProgram];
    }
}

@end
