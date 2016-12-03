//
//  RISCVTests.m
//  RISCVTests
//
//  Created by Makigumo on 2016/12/04.
//  Copyright © 2016年 Makigumo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RISCVCtx.h"

@interface RISCVTests : XCTestCase

@end

@implementation RISCVTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetITypeImmediate {
        XCTAssertEqual(getItypeImmediate(0x4a018193), 0x4a0);
        XCTAssertEqual(getItypeImmediate(0x088300e7), 136);
        XCTAssertEqual(getItypeImmediate(0x6780006f), 0x800006c0-0x80000048);
        XCTAssertEqual(getItypeImmediate(0x6710006f), 0x670, @"clearing LSB");
}

- (void)testGetUJTypeImmediate {
        XCTAssertEqual(getUJtypeImmediate(0x345760ef), 0x76B44);
        XCTAssertEqual(getUJtypeImmediate(0x374280ef), 0x28374);
        XCTAssertEqual(getUJtypeImmediate(0x435250ef), 0x25C34);
        XCTAssertEqual(getUJtypeImmediate(0x41d250ef), 0x25C1C);
        XCTAssertEqual(getUJtypeImmediate(0x4e4920ef), 0x924E4);
        XCTAssertEqual(getUJtypeImmediate(0x951ff0ef), 0xFFFFF950);
}


@end
