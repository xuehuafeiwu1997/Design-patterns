//
//  AftersoonState.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "AftersoonState.h"
#import "Work.h"
#import "EveningState.h"

@implementation AftersoonState

- (void)writeProgram:(Work *)work {
    if (work.hour < 17) {
        NSLog(@"当前时间：%.f点，下午状态还不错，继续努力",work.hour);
    } else {
        work.state = [[EveningState alloc] init];
        [work writeProgram];
    }
}
@end
