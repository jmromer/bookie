//
//  Room+ComparisonUtilsTests.m
//  Room+ComparisonUtilsTests
//
//  Created by Jake Romer on 4/24/17.
//  Copyright © 2017 Jake Romer. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "XCCoreDataTestCase.h"
#import "Room+ComparisonUtils.h"

@interface Room_ComparisonUtilsTests : XCCoreDataTestCase
@end

@implementation Room_ComparisonUtilsTests
- (void)testCompareComparesByRoomNumberAscending {
  Room *room1 = [self buildInstanceOf:[Room class]];
  Room *room2 = [self buildInstanceOf:[Room class]];
  room1.number = 8;
  room2.number = 50;

  NSComparisonResult order = [room1 compare:room2];

  XCTAssertEqual(NSOrderedAscending, order);
}

- (void)testCompareComparesByRoomNumberSame {
  Room *room1 = [self buildInstanceOf:[Room class]];
  Room *room2 = [self buildInstanceOf:[Room class]];
  room1.number = 50;
  room2.number = 50;

  NSComparisonResult order = [room1 compare:room2];

  XCTAssertEqual(NSOrderedSame, order);
}

- (void)testCompareComparesByRoomNumberDescending {
  Room *room1 = [self buildInstanceOf:[Room class]];
  Room *room2 = [self buildInstanceOf:[Room class]];
  room1.number = 400;
  room2.number = 40;

  NSComparisonResult order = [room1 compare:room2];

  XCTAssertEqual(NSOrderedDescending, order);
}
@end
