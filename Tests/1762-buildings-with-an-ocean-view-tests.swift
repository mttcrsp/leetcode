@testable
import Leetcode
import XCTest

final class BuildingsWithAnOceanViewTests: XCTestCase {
  func testBuildingsWithAnOceanView1() {
    let input = [4, 2, 3, 1]
    let output = [0, 2, 3]
    XCTAssertEqual(BuildingsWithAnOceanView().findBuildings(input), output)
  }

  func testBuildingsWithAnOceanView2() {
    let input = [4, 3, 2, 1]
    let output = [0, 1, 2, 3]
    XCTAssertEqual(BuildingsWithAnOceanView().findBuildings(input), output)
  }

  func testBuildingsWithAnOceanView3() {
    let input = [1, 3, 2, 4]
    let output = [3]
    XCTAssertEqual(BuildingsWithAnOceanView().findBuildings(input), output)
  }
}
