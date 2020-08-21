//
//  PersonThinBuilder.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "PersonThinBuilder.h"

@implementation PersonThinBuilder

- (void)buildHead {
    NSLog(@"建造瘦子的头部");
}

- (void)buildBody {
    NSLog(@"建造瘦子的身体");
}

- (void)buildArmLeft {
    NSLog(@"建造瘦子的左手");
}

- (void)buildArmRight {
    NSLog(@"建造瘦子的右手");
}

- (void)buildLegLeft {
    NSLog(@"建造瘦子的左腿");
}

- (void)buildLegRight {
    NSLog(@"建造瘦子的右腿");
}
@end
