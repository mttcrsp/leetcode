@testable
import Leetcode
import Testing

@Suite
struct ReconstructItineraryTests {
  @Test func testFindItinerary1() {
    let input = [["MUC", "LHR"], ["JFK", "MUC"], ["SFO", "SJC"], ["LHR", "SFO"]]
    let output = ["JFK", "MUC", "LHR", "SFO", "SJC"]
    #expect(ReconstructItinerary().findItinerary(input) == output)
  }

  @Test func testFindItinerary2() {
    let input = [["JFK", "SFO"], ["JFK", "ATL"], ["SFO", "ATL"], ["ATL", "JFK"], ["ATL", "SFO"]]
    let output = ["JFK", "ATL", "JFK", "SFO", "ATL", "SFO"]
    #expect(ReconstructItinerary().findItinerary(input) == output)
  }

  @Test func testFindItinerary3() {
    let input = [["JFK", "SFO"]]
    let output = ["JFK", "SFO"]
    #expect(ReconstructItinerary().findItinerary(input) == output)
  }

  @Test func testFindItinerary4() {
    let input = [["JFK", "SFO"], ["SFO", "JFK"], ["JFK", "SFO"], ["SFO", "JFK"]]
    let output = ["JFK", "SFO", "JFK", "SFO", "JFK"]
    #expect(ReconstructItinerary().findItinerary(input) == output)
  }

  @Test func testFindItinerary5() {
    let input = [["JFK", "KUL"], ["JFK", "NRT"], ["NRT", "JFK"]]
    let output = ["JFK", "NRT", "JFK", "KUL"]
    #expect(ReconstructItinerary().findItinerary(input) == output)
  }
}
