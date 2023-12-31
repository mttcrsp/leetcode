@testable
import Leetcode
import XCTest

final class SimplifyPathTests: XCTestCase {
  func testTestSimplifypath1() {
    let input = "/home/"
    let output = "/home"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testTestSimplifypath2() {
    let input = "/../"
    let output = "/"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testTestSimplifypath3() {
    let input = "/home//foo/"
    let output = "/home/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testTestSimplifypath4() {
    let input = "/home/../foo/"
    let output = "/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testTestSimplifypath5() {
    let input = "/home/../../foo/"
    let output = "/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testTestSimplifypath6() {
    let input = "/1/2/3/../../foo/"
    let output = "/1/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testTestSimplifypath7() {
    let input = "/1/2/3/.../../foo/"
    let output = "/1/2/3/foo"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }

  func testTestSimplifypath8() {
    let input = "/a/./b/../../c/"
    let output = "/c"
    XCTAssertEqual(SimplifyPath().simplifyPath(input), output)
  }
}
