@testable
import Leetcode
import Testing

@Suite
struct SentenceSimilarityIiiTests {
  @Test func testAreSentencesSimilar1() {
    let input = ("My name is Haley", "My Haley")
    let output = true
    #expect(SentenceSimilarityIii().areSentencesSimilar(input.0, input.1) == output)
  }

  @Test func testAreSentencesSimilar2() {
    let input = ("of", "A lot of words")
    let output = false
    #expect(SentenceSimilarityIii().areSentencesSimilar(input.0, input.1) == output)
  }

  @Test func testAreSentencesSimilar3() {
    let input = ("Eating right now", "Eating")
    let output = true
    #expect(SentenceSimilarityIii().areSentencesSimilar(input.0, input.1) == output)
  }

  @Test func testAreSentencesSimilar4() {
    let input = ("Luky", "Lucccky")
    let output = false
    #expect(SentenceSimilarityIii().areSentencesSimilar(input.0, input.1) == output)
  }
}
