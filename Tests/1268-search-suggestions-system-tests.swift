@testable
import Leetcode
import XCTest

final class SearchSuggestionsSystemTests: XCTestCase {
  func testTestSuggestedproducts1() {
    let input = (["mobile", "mouse", "moneypot", "monitor", "mousepad"], "mouse")
    let output = [["mobile", "moneypot", "monitor"], ["mobile", "moneypot", "monitor"], ["mouse", "mousepad"], ["mouse", "mousepad"], ["mouse", "mousepad"]]
    XCTAssertEqual(SearchSuggestionsSystem().suggestedProducts(input.0, input.1), output)
  }

  func testTestSuggestedproducts2() {
    let input = (["havana"], "havana")
    let output = [["havana"], ["havana"], ["havana"], ["havana"], ["havana"], ["havana"]]
    XCTAssertEqual(SearchSuggestionsSystem().suggestedProducts(input.0, input.1), output)
  }

  func testTestSuggestedproducts3() {
    let input = (["havana"], "tatiana")
    let output: [[String]] = [[], [], [], [], [], [], []]
    XCTAssertEqual(SearchSuggestionsSystem().suggestedProducts(input.0, input.1), output)
  }
}
