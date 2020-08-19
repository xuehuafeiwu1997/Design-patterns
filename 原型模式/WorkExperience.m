//
//  WorkExperience.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/19.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "WorkExperience.h"

@implementation WorkExperience

- (id)copyWithZone:(NSZone *)zone {
    WorkExperience *workExperience = [[self class] allocWithZone:zone];
    workExperience.workDate = [self.workDate copy];
    workExperience.company = [self.company copy];
    return workExperience;
}

@end
