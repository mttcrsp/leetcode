@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testFizzBuzz1() {
    let input = 15
    let output = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
    XCTAssertEqual(Solution().fizzBuzz(input), output)
  }
}
