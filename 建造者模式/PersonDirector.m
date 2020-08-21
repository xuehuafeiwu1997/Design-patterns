//
//  PersonDirector.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/21.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "PersonDirector.h"

@interface PersonDirector()

@property (nonatomic, strong) id<PersonBuilder> personBuilder;

@end

@implementation PersonDirector

- (instancetype)initWithPersonBuilder:(id<PersonBuilder>)personBuilder {
    self = [super init];
    if (self) {
        self.personBuilder = personBuilder;
    }
    return self;
}

- (void)builderSon {
    [self.personBuilder buildHead];
    [self.personBuilder buildBody];
    [self.personBuilder buildArmLeft];
    [self.personBuilder buildArmRight];
    [self.personBuilder buildLegLeft];
    [self.personBuilder buildLegRight];
}

@end
