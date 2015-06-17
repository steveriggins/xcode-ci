//
//  xcode_ciTests.m
//  xcode-ciTests
//
//  Created by Steven W. Riggins on 6/15/15.
//  Copyright (c) 2015 Steve Riggins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SubmoduleA.h"

@interface xcode_ciTests : XCTestCase

@end

@implementation xcode_ciTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testSubmoduleA {
    SubmoduleA *submodule = [[SubmoduleA alloc] init];
    NSUInteger result = [submodule submoduleA];
    NSUInteger expectedResult = 12000;
    
    XCTAssertEqual(result, expectedResult);
}

@end
