@testable
import Leetcode
import XCTest

final class Dota2SenateTests: XCTestCase {
  func testTestPredictpartyvictory1() {
    let input = "RD"
    let output = "Radiant"
    XCTAssertEqual(Dota2Senate().predictPartyVictory(input), output)
  }

  func testTestPredictpartyvictory2() {
    let input = "RDD"
    let output = "Dire"
    XCTAssertEqual(Dota2Senate().predictPartyVictory(input), output)
  }

  func testTestPredictpartyvictory3() {
    let input = "RDDRDDDRRDR"
    let output = "Dire"
    XCTAssertEqual(Dota2Senate().predictPartyVictory(input), output)
  }
}
