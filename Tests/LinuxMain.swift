import XCTest

import SomeNicePackageTests

var tests = [XCTestCaseEntry]()
tests += SomeNicePackageTests.allTests()
XCTMain(tests)
