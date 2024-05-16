@testable
import Leetcode
import XCTest

final class ExclusiveTimeOfFunctionsTests: XCTestCase {
  func testExclusiveTime1() {
    let input = (2, ["0:start:0", "1:start:2", "1:end:5", "0:end:6"])
    let output = [3, 4]
    XCTAssertEqual(ExclusiveTimeOfFunctions().exclusiveTime(input.0, input.1), output)
  }

  func testExclusiveTime2() {
    let input = (1, ["0:start:0", "0:start:2", "0:end:5", "0:start:6", "0:end:6", "0:end:7"])
    let output = [8]
    XCTAssertEqual(ExclusiveTimeOfFunctions().exclusiveTime(input.0, input.1), output)
  }

  func testExclusiveTime3() {
    let input = (2, ["0:start:0", "0:start:2", "0:end:5", "1:start:6", "1:end:6", "0:end:7"])
    let output = [7, 1]
    XCTAssertEqual(ExclusiveTimeOfFunctions().exclusiveTime(input.0, input.1), output)
  }
}
