@testable
import Leetcode
import Testing

@Suite
struct GuessNumberHigherOrLowerTests {
  @Test func testGuess1() {
    let input = (10, 6)
    #expect(GuessNumberHigherOrLower(num: input.1).guessNumber(input.0) == input.1)
  }

  @Test func testGuess2() {
    let input = (1, 1)
    #expect(GuessNumberHigherOrLower(num: input.1).guessNumber(input.0) == input.1)
  }

  @Test func testGuess3() {
    let input = (2, 1)
    #expect(GuessNumberHigherOrLower(num: input.1).guessNumber(input.0) == input.1)
  }
}
