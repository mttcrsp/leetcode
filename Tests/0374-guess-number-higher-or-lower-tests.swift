@testable
import Leetcode
import XCTest

final class GuessNumberHigherOrLowerTests: XCTestCase {
  func testTestGuess1() {
    let input = (10, 6)
    XCTAssertEqual(GuessNumberHigherOrLower(num: input.1).guessNumber(input.0), input.1)
  }

  func testTestGuess2() {
    let input = (1, 1)
    XCTAssertEqual(GuessNumberHigherOrLower(num: input.1).guessNumber(input.0), input.1)
  }

  func testTestGuess3() {
    let input = (2, 1)
    XCTAssertEqual(GuessNumberHigherOrLower(num: input.1).guessNumber(input.0), input.1)
  }
}
