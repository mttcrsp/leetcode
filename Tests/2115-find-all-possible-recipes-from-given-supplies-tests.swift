@testable
import Leetcode
import XCTest

final class FindAllPossibleRecipesFromGivenSuppliesTests: XCTestCase {
  func testFindAllRecipes1() {
    let input = (["bread"], [["yeast", "flour"]], ["yeast", "flour", "corn"])
    let output = ["bread"]
    XCTAssertEqual(FindAllPossibleRecipesFromGivenSupplies().findAllRecipes(input.0, input.1, input.2), output)
  }

  func testFindAllRecipes4() {
    let input = (["bread", "sandwich"], [["yeast", "flour"], ["bread", "meat"]], ["yeast", "flour", "meat"])
    let output = ["bread", "sandwich"]
    XCTAssertEqual(FindAllPossibleRecipesFromGivenSupplies().findAllRecipes(input.0, input.1, input.2), output)
  }

  func testFindAllRecipes7() {
    let input = (["bread", "sandwich", "burger"], [["yeast", "flour"], ["bread", "meat"], ["sandwich", "meat", "bread"]], ["yeast", "flour", "meat"])
    let output = ["bread", "sandwich", "burger"]
    XCTAssertEqual(FindAllPossibleRecipesFromGivenSupplies().findAllRecipes(input.0, input.1, input.2), output)
  }
}
