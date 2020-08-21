//
//  EveningState.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "EveningState.h"
#import "Work.h"
#import "RestState.h"
#import "SleepingState.h"

@implementation EveningState

- (void)writeProgram:(Work *)work {
    if (work.finished) {
        work.state = [[RestState alloc] init];
        [work writeProgram];
    } else {
        if (work.hour < 21) {
            NSLog(@"当前时间：%.f，加班哦，疲累至极",work.hour);
        } else {
            work.state = [[SleepingState alloc] init];
            [work writeProgram];
        }
    }
}

@end
