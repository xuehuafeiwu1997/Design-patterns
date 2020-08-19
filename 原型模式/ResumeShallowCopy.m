//
//  ResumeShallowCopy.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/19.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "ResumeShallowCopy.h"

@implementation ResumeShallowCopy

- (id)copyWithZone:(NSZone *)zone {
    Resume *resume = [[[self class] allocWithZone:zone] init];
    resume.name = self.name;
    resume.sex = self.sex;
    resume.age = self.age;
    resume.workExperience = self.workExperience;
    return resume;
}

@end
