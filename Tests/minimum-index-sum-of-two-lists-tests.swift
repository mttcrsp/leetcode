@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testFindRestaurant1() {
    let input = (
      ["Shogun", "Tapioca Express", "Burger King", "KFC"],
      ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
    )
    let output = ["Shogun"]
    XCTAssertEqual(Set(Solution().findRestaurant(input.0, input.1)), Set(output))
  }

  func testFindRestaurant2() {
    let input = (
      ["Shogun", "Tapioca Express", "Burger King", "KFC"],
      ["KFC", "Shogun", "Burger King"]
    )
    let output = ["Shogun"]
    XCTAssertEqual(Set(Solution().findRestaurant(input.0, input.1)), Set(output))
  }

  func testFindRestaurant3() {
    let input = (
      ["Shogun", "Tapioca Express", "Burger King", "KFC"],
      ["KFC", "Burger King", "Tapioca Express", "Shogun"]
    )
    let output = ["KFC", "Burger King", "Tapioca Express", "Shogun"]
    XCTAssertEqual(Set(Solution().findRestaurant(input.0, input.1)), Set(output))
  }

  func testFindRestaurant4() {
    let input = (
      ["Shogun", "Tapioca Express", "Burger King", "KFC"],
      ["KNN", "KFC", "Burger King", "Tapioca Express", "Shogun"]
    )
    let output = ["KFC", "Burger King", "Tapioca Express", "Shogun"]
    XCTAssertEqual(Set(Solution().findRestaurant(input.0, input.1)), Set(output))
  }

  func testFindRestaurant5() {
    let input = (
      ["KFC"],
      ["KFC"]
    )
    let output = ["KFC"]
    XCTAssertEqual(Set(Solution().findRestaurant(input.0, input.1)), Set(output))
  }
}
