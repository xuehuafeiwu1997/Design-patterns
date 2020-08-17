//
//  VolunteerFactory.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "VolunteerFactory.h"
#import "Volunteer.h"

@implementation VolunteerFactory

- (id<LeiFeng>)createLeiFeng {
    return [[Volunteer alloc] init];
}

@end
