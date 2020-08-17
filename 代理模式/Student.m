//
//  Student.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/17.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)findHouse {
    NSLog(@"学生要找房子");
    //通知中介
    if (self.delegate && [self.delegate respondsToSelector:@selector(studentFindHouse)]) {
        [self.delegate studentFindHouse];
    }
}

@end
