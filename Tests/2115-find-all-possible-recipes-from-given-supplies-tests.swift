@testable
import Leetcode
import Testing

@Suite
struct FindAllPossibleRecipesFromGivenSuppliesTests {
  @Test func testFindAllRecipes1() {
    let input = (["bread"], [["yeast", "flour"]], ["yeast", "flour", "corn"])
    let output = ["bread"]
    #expect(FindAllPossibleRecipesFromGivenSupplies().findAllRecipes(input.0, input.1, input.2) == output)
  }

  @Test func testFindAllRecipes4() {
    let input = (["bread", "sandwich"], [["yeast", "flour"], ["bread", "meat"]], ["yeast", "flour", "meat"])
    let output = ["bread", "sandwich"]
    #expect(FindAllPossibleRecipesFromGivenSupplies().findAllRecipes(input.0, input.1, input.2) == output)
  }

  @Test func testFindAllRecipes7() {
    let input = (["bread", "sandwich", "burger"], [["yeast", "flour"], ["bread", "meat"], ["sandwich", "meat", "bread"]], ["yeast", "flour", "meat"])
    let output = ["bread", "sandwich", "burger"]
    #expect(FindAllPossibleRecipesFromGivenSupplies().findAllRecipes(input.0, input.1, input.2) == output)
  }
}
