@testable
import Leetcode
import XCTest

final class MinimumGeneticMutationTests: XCTestCase {
  func testTestMinmutation1() {
    let input = ("AACCGGTT", "AACCGGTA", ["AACCGGTA"])
    let output = 1
    XCTAssertEqual(MinimumGeneticMutation().minMutation(input.0, input.1, input.2), output)
  }

  func testTestMinmutation2() {
    let input = ("AACCGGTT", "AAACGGTA", ["AACCGGTA", "AACCGCTA", "AAACGGTA"])
    let output = 2
    XCTAssertEqual(MinimumGeneticMutation().minMutation(input.0, input.1, input.2), output)
  }
}
