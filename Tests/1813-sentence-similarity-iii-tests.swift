@testable
import Leetcode
import XCTest

final class SentenceSimilarityIiiTests: XCTestCase {
  func testAreSentencesSimilar1() {
    let input = ("My name is Haley", "My Haley")
    let output = true
    XCTAssertEqual(SentenceSimilarityIii().areSentencesSimilar(input.0, input.1), output)
  }

  func testAreSentencesSimilar2() {
    let input = ("of", "A lot of words")
    let output = false
    XCTAssertEqual(SentenceSimilarityIii().areSentencesSimilar(input.0, input.1), output)
  }

  func testAreSentencesSimilar3() {
    let input = ("Eating right now", "Eating")
    let output = true
    XCTAssertEqual(SentenceSimilarityIii().areSentencesSimilar(input.0, input.1), output)
  }

  func testAreSentencesSimilar4() {
    let input = ("Luky", "Lucccky")
    let output = false
    XCTAssertEqual(SentenceSimilarityIii().areSentencesSimilar(input.0, input.1), output)
  }
}
