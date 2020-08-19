//
//  ResumeDeepCopy.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/19.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "ResumeDeepCopy.h"

@implementation ResumeDeepCopy

- (id)copyWithZone:(NSZone *)zone {
    Resume *resume = [[[self class] allocWithZone:zone] init];
    resume.name = [self.name copy];
    resume.sex = [self.sex copy];
    resume.age = [self.age copy];
    resume.workExperience = [self.workExperience copy];
    return resume;
}

@end
