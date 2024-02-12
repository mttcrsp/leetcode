@testable
import Leetcode
import XCTest

final class SimplifyPathTests: XCTestCase {
  func testSimplifypath1() {
    let input = "/home/"
    let output = "/home"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testSimplifypath2() {
    let input = "/../"
    let output = "/"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testSimplifypath3() {
    let input = "/home//foo/"
    let output = "/home/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testSimplifypath4() {
    let input = "/home/../foo/"
    let output = "/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testSimplifypath5() {
    let input = "/home/../../foo/"
    let output = "/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testSimplifypath6() {
    let input = "/1/2/3/../../foo/"
    let output = "/1/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testSimplifypath7() {
    let input = "/1/2/3/.../../foo/"
    let output = "/1/2/3/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testSimplifypath8() {
    let input = "/a/./b/../../c/"
    let output = "/c"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }
}
