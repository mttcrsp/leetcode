@testable
import Leetcode
import XCTest

final class Dota2SenateTests: XCTestCase {
  func testPredictpartyvictory1() {
    let input = "RD"
    let output = "Radiant"
    XCTAssertEqual(Dota2Senate().predictPartyVictory(input), output)
  }

  func testPredictpartyvictory2() {
    let input = "RDD"
    let output = "Dire"
    XCTAssertEqual(Dota2Senate().predictPartyVictory(input), output)
  }

  func testPredictpartyvictory3() {
    let input = "RDDRDDDRRDR"
    let output = "Dire"
    XCTAssertEqual(Dota2Senate().predictPartyVictory(input), output)
  }
}
