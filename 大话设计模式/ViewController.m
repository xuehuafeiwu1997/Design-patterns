//
//  ViewController.m
//  大话设计模式
//
//  Created by 许明洋 on 2020/8/6.
//  Copyright © 2020 许明洋. All rights reserved.
//

#import "ViewController.h"
#import "OperationFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self simpleFactoryTest];
}

//简单工厂测试
- (void)simpleFactoryTest {
    Operation *operation = [OperationFactory createOperation:OperationTypeAdd];
    operation.numberA = 600;
    operation.numberB = 100;
    NSLog(@"加法运算的结果为:%f",[operation getResult]);
    
    operation = [OperationFactory createOperation:OperationTypeSub];
    operation.numberA = 600;
    operation.numberB = 100;
    NSLog(@"减法运算的结果为:%f",[operation getResult]);
    
    operation = [OperationFactory createOperation:OperationTypeMul];
    operation.numberA = 600;
    operation.numberB = 100;
    NSLog(@"乘法运算的结果为:%f",[operation getResult]);
    
    operation = [OperationFactory createOperation:OperationTypeDiv];
    operation.numberA = 600;
    operation.numberB = 100;
    NSLog(@"除法运算的结果为:%f",[operation getResult]);
    
}


@end
