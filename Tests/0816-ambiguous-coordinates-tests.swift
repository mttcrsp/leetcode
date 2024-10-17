@testable
import Leetcode
import Testing

@Suite
struct AmbiguousCoordinatesTests {
  @Test func testAmbiguouscoordinates1() {
    let input = "(123)"
    let output = ["(1, 2.3)", "(1, 23)", "(1.2, 3)", "(12, 3)"]
    #expect(Set(AmbiguousCoordinates().ambiguousCoordinates(input)) == Set(output))
  }

  @Test func testAmbiguouscoordinates2() {
    let input = "(0123)"
    let output = ["(0, 1.23)", "(0, 12.3)", "(0, 123)", "(0.1, 2.3)", "(0.1, 23)", "(0.12, 3)"]
    #expect(Set(AmbiguousCoordinates().ambiguousCoordinates(input)) == Set(output))
  }

  @Test func testAmbiguouscoordinates3() {
    let input = "(00011)"
    let output = ["(0, 0.011)", "(0.001, 1)"]
    #expect(Set(AmbiguousCoordinates().ambiguousCoordinates(input)) == Set(output))
  }
}
