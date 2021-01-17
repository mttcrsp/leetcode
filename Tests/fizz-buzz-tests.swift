@testable
import Leetcode
import XCTest

final class FizzBuzzTests: XCTestCase {
  func testFizzBuzz1() {
    let input = 15
    let output = ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
    XCTAssertEqual(FizzBuzz().fizzBuzz(input), output)
  }
}
