@testable
import Leetcode
import Testing

@Suite
struct SimplifyPathTests {
  @Test func testSimplifypath1() {
    let input = "/home/"
    let output = "/home"
    #expect(SimplifyPath().simplifyPath(input) == output)
  }

  @Test func testSimplifypath2() {
    let input = "/../"
    let output = "/"
    #expect(SimplifyPath().simplifyPath(input) == output)
  }

  @Test func testSimplifypath3() {
    let input = "/home//foo/"
    let output = "/home/foo"
    #expect(SimplifyPath().simplifyPath(input) == output)
  }

  @Test func testSimplifypath4() {
    let input = "/home/../foo/"
    let output = "/foo"
    #expect(SimplifyPath().simplifyPath(input) == output)
  }

  @Test func testSimplifypath5() {
    let input = "/home/../../foo/"
    let output = "/foo"
    #expect(SimplifyPath().simplifyPath(input) == output)
  }

  @Test func testSimplifypath6() {
    let input = "/1/2/3/../../foo/"
    let output = "/1/foo"
    #expect(SimplifyPath().simplifyPath(input) == output)
  }

  @Test func testSimplifypath7() {
    let input = "/1/2/3/.../../foo/"
    let output = "/1/2/3/foo"
    #expect(SimplifyPath().simplifyPath(input) == output)
  }

  @Test func testSimplifypath8() {
    let input = "/a/./b/../../c/"
    let output = "/c"
    #expect(SimplifyPath().simplifyPath(input) == output)
  }
}
