@testable
import Leetcode
import XCTest

final class NumberOfSeniorCitizensTests: XCTestCase {
  func testCountseniors1() {
    let input = ["7868190130M7522", "5303914400F9211", "9273338290F4010"]
    let output = 2
    XCTAssertEqual(NumberOfSeniorCitizens().countSeniors(input), output)
  }

  func testCountseniors2() {
    let input = ["1313579440F2036", "2921522980M5644"]
    let output = 0
    XCTAssertEqual(NumberOfSeniorCitizens().countSeniors(input), output)
  }
}
