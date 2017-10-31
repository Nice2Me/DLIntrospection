//
//  NSObject+DLIntrospection.h
//  DLIntrospection
//
//  Created by Denis Lebedev on 12/27/12.
//  Copyright (c) 2012 Denis Lebedev. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface NSObject (DLIntrospection)

+ (NSArray *)classes;
+ (NSArray *)properties;
+ (NSArray *)instanceVariables;
+ (NSArray *)classMethods;
+ (NSArray *)instanceMethods;

+ (NSArray *)protocols;
+ (NSDictionary *)descriptionForProtocol:(Protocol *)proto;

+ (NSString *)parentClassHierarchy;

@end



/**
 Runtime 交换或添加实例方法
 */
void DLRTSwapClassMethods(Class cls, SEL originalSEL, SEL replacementSEL);


/**
 Runtime 交换或添加类方法
 */
void DLRTSwapInstanceMethods(Class cls, SEL originalSEL, SEL replacementSEL);
