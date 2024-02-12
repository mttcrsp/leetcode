@testable
import Leetcode
import XCTest

final class GuessNumberHigherOrLowerTests: XCTestCase {
  func testGuess1() {
    let input = (10, 6)
    XCTAssertEqual(GuessNumberHigherOrLower(num: input.1).guessNumber(input.0), input.1)
  }

  func testGuess2() {
    let input = (1, 1)
    XCTAssertEqual(GuessNumberHigherOrLower(num: input.1).guessNumber(input.0), input.1)
  }

  func testGuess3() {
    let input = (2, 1)
    XCTAssertEqual(GuessNumberHigherOrLower(num: input.1).guessNumber(input.0), input.1)
  }
}
