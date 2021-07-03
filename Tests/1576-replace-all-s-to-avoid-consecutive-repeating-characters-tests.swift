@testable
import Leetcode
import XCTest

final class ReplaceAllSToAvoidConsecutiveRepeatingCharactersTests: XCTestCase {
  private let solver = ReplaceAllSToAvoidConsecutiveRepeatingCharacters()

  func testModifyString1() {
    let input = "?zs"
    let output = solver.modifyString(input)
    XCTAssert(validate(output), output)
  }

  func testModifyString2() {
    let input = "ubv?w"
    let output = solver.modifyString(input)
    XCTAssert(validate(output), output)
  }

  func testModifyString3() {
    let input = "j?qg??b"
    let output = solver.modifyString(input)
    XCTAssert(validate(output), output)
  }

  func testModifyString4() {
    let input = "??yw?ipkj?"
    let output = solver.modifyString(input)
    XCTAssert(validate(output), output)
  }

  func testModifyString5() {
    let input = "a?b"
    let output = solver.modifyString(input)
    XCTAssert(validate(output), output)
  }

  private func validate(_ output: String) -> Bool {
    for (lhs, rhs) in zip(output, output.dropFirst()) where lhs == rhs {
      return false
    }
    return true
  }
}
