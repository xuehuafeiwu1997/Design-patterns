//
//  PersonFatBuilder.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "PersonFatBuilder.h"

@implementation PersonFatBuilder

- (void)buildHead {
    NSLog(@"建造胖子的头部");
}

- (void)buildBody {
    NSLog(@"建造胖子的身体");
}

- (void)buildArmLeft {
    NSLog(@"建造胖子的左手");
}

- (void)buildArmRight {
    NSLog(@"建造胖子的右手");
}

- (void)buildLegLeft {
    NSLog(@"建造胖子的左腿");
}

- (void)buildLegRight {
    NSLog(@"建造胖子的右腿");
}

@end

