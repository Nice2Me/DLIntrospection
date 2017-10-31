//
//  ViewController.m
//  DLExample
//
//  Created by zuopengliu on 29/10/2017.
//  Copyright © 2017 com.zuopeng. All rights reserved.
//

#import "ViewController.h"
#import <NSObject+DLIntrospection.h>



@interface ViewController ()

@end

@implementation ViewController

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        DLRTSwapInstanceMethods([self class], @selector(viewDidAppear:), @selector(test_viewDidAppear:));
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)test_viewDidAppear:(BOOL)animated
{
    [self test_viewDidAppear:animated];
    
    NSLog(@"YEAH");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
