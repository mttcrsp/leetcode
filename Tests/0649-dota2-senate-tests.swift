@testable
import Leetcode
import Testing

@Suite
struct Dota2SenateTests {
  @Test func testPredictpartyvictory1() {
    let input = "RD"
    let output = "Radiant"
    #expect(Dota2Senate().predictPartyVictory(input) == output)
  }

  @Test func testPredictpartyvictory2() {
    let input = "RDD"
    let output = "Dire"
    #expect(Dota2Senate().predictPartyVictory(input) == output)
  }

  @Test func testPredictpartyvictory3() {
    let input = "RDDRDDDRRDR"
    let output = "Dire"
    #expect(Dota2Senate().predictPartyVictory(input) == output)
  }
}
