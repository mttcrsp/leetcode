@testable
import Leetcode
import Testing

@Suite
struct SearchSuggestionsSystemTests {
  @Test func testSuggestedproducts1() {
    let input = (["mobile", "mouse", "moneypot", "monitor", "mousepad"], "mouse")
    let output = [["mobile", "moneypot", "monitor"], ["mobile", "moneypot", "monitor"], ["mouse", "mousepad"], ["mouse", "mousepad"], ["mouse", "mousepad"]]
    #expect(SearchSuggestionsSystem().suggestedProducts(input.0, input.1) == output)
  }

  @Test func testSuggestedproducts2() {
    let input = (["havana"], "havana")
    let output = [["havana"], ["havana"], ["havana"], ["havana"], ["havana"], ["havana"]]
    #expect(SearchSuggestionsSystem().suggestedProducts(input.0, input.1) == output)
  }

  @Test func testSuggestedproducts3() {
    let input = (["havana"], "tatiana")
    let output: [[String]] = [[], [], [], [], [], [], []]
    #expect(SearchSuggestionsSystem().suggestedProducts(input.0, input.1) == output)
  }
}
