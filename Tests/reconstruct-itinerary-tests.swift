@testable
import Leetcode
import XCTest

final class ReconstructItineraryTests: XCTestCase {
  func testFindItinerary1() {
    let input = [["MUC", "LHR"], ["JFK", "MUC"], ["SFO", "SJC"], ["LHR", "SFO"]]
    let output = ["JFK", "MUC", "LHR", "SFO", "SJC"]
    XCTAssertEqual(ReconstructItinerary().findItinerary(input), output)
  }

  func testFindItinerary2() {
    let input = [["JFK", "SFO"], ["JFK", "ATL"], ["SFO", "ATL"], ["ATL", "JFK"], ["ATL", "SFO"]]
    let output = ["JFK", "ATL", "JFK", "SFO", "ATL", "SFO"]
    XCTAssertEqual(ReconstructItinerary().findItinerary(input), output)
  }

  func testFindItinerary3() {
    let input = [["JFK", "SFO"]]
    let output = ["JFK", "SFO"]
    XCTAssertEqual(ReconstructItinerary().findItinerary(input), output)
  }

  func testFindItinerary4() {
    let input = [["JFK", "SFO"], ["SFO", "JFK"], ["JFK", "SFO"], ["SFO", "JFK"]]
    let output = ["JFK", "SFO", "JFK", "SFO", "JFK"]
    XCTAssertEqual(ReconstructItinerary().findItinerary(input), output)
  }

  func testFindItinerary5() {
    let input = [["JFK", "KUL"], ["JFK", "NRT"], ["NRT", "JFK"]]
    let output = ["JFK", "NRT", "JFK", "KUL"]
    XCTAssertEqual(ReconstructItinerary().findItinerary(input), output)
  }
}
