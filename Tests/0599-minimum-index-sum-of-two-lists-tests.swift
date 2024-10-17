@testable
import Leetcode
import Testing

@Suite
struct MinimumIndexSumOfTwoListsTests {
  @Test func testFindRestaurant1() {
    let input = (
      ["Shogun", "Tapioca Express", "Burger King", "KFC"],
      ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"]
    )
    let output = ["Shogun"]
    #expect(Set(MinimumIndexSumOfTwoLists().findRestaurant(input.0, input.1)) == Set(output))
  }

  @Test func testFindRestaurant2() {
    let input = (
      ["Shogun", "Tapioca Express", "Burger King", "KFC"],
      ["KFC", "Shogun", "Burger King"]
    )
    let output = ["Shogun"]
    #expect(Set(MinimumIndexSumOfTwoLists().findRestaurant(input.0, input.1)) == Set(output))
  }

  @Test func testFindRestaurant3() {
    let input = (
      ["Shogun", "Tapioca Express", "Burger King", "KFC"],
      ["KFC", "Burger King", "Tapioca Express", "Shogun"]
    )
    let output = ["KFC", "Burger King", "Tapioca Express", "Shogun"]
    #expect(Set(MinimumIndexSumOfTwoLists().findRestaurant(input.0, input.1)) == Set(output))
  }

  @Test func testFindRestaurant4() {
    let input = (
      ["Shogun", "Tapioca Express", "Burger King", "KFC"],
      ["KNN", "KFC", "Burger King", "Tapioca Express", "Shogun"]
    )
    let output = ["KFC", "Burger King", "Tapioca Express", "Shogun"]
    #expect(Set(MinimumIndexSumOfTwoLists().findRestaurant(input.0, input.1)) == Set(output))
  }

  @Test func testFindRestaurant5() {
    let input = (
      ["KFC"],
      ["KFC"]
    )
    let output = ["KFC"]
    #expect(Set(MinimumIndexSumOfTwoLists().findRestaurant(input.0, input.1)) == Set(output))
  }
}
