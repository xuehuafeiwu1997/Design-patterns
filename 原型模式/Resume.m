//
//  Resume.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/19.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "Resume.h"

@implementation Resume

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
        self.workExperience = [[WorkExperience alloc] init];
    }
    return self;
}

- (void)setPersonalInfoWithSex:(NSString *)sex age:(NSString *)age {
    self.sex = sex;
    self.age = age;
}

- (void)setWorkExperienceWithWorkDate:(NSString *)workDate company:(NSString *)company {
    self.workExperience.workDate = workDate;
    self.workExperience.company = company;
}

- (void)display {
    NSLog(@"%@ %@ %@",self.name,self.age,self.sex);
    NSLog(@"工作经历%@ %@",self.workExperience.workDate,self.workExperience.company);
}

- (id)copyWithZone:(NSZone *)zone {
    return nil;
}

@end
