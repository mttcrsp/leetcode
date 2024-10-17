@testable
import Leetcode
import Testing

@Suite
struct AssignCookiesTests {
  @Test func testFindcontentchildren1() {
    let input = ([1, 2, 3], [1, 1])
    let output = 1
    #expect(AssignCookies().findContentChildren(input.0, input.1) == output)
  }

  @Test func testFindcontentchildren2() {
    let input = ([1, 2], [1, 2, 3])
    let output = 2
    #expect(AssignCookies().findContentChildren(input.0, input.1) == output)
  }

  @Test func testFindcontentchildren3() {
    let input = ([1, 2], [] as [Int])
    let output = 0
    #expect(AssignCookies().findContentChildren(input.0, input.1) == output)
  }

  @Test func testFindcontentchildren4() {
    let input = ([10], [2, 2, 2, 2, 2] as [Int])
    let output = 0
    #expect(AssignCookies().findContentChildren(input.0, input.1) == output)
  }
}
