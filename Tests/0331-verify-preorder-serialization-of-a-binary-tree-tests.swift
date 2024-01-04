@testable
import Leetcode
import XCTest

@available(macOS 10.15, *)
final class VerifyPreorderSerializationOfABinaryTreeTests: XCTestCase {
  func testTestIsvalidserialization1() {
    let input = "9,3,4,#,#,1,#,#,2,#,6,#,#"
    let output = true
    XCTAssertEqual(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input), output)
  }

  func testTestIsvalidserialization2() {
    let input = "1,#"
    let output = false
    XCTAssertEqual(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input), output)
  }

  func testTestIsvalidserialization3() {
    let input = "9,#,#,1"
    let output = false
    XCTAssertEqual(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input), output)
  }

  func testTestIsvalidserialization4() {
    let input = "#"
    let output = true
    XCTAssertEqual(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input), output)
  }

  func testTestIsvalidserialization5() {
    let input = "0,22,#,33,#,44,100,#,#,#,#"
    let output = true
    XCTAssertEqual(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input), output)
  }

  func testTestIsvalidserialization6() {
    let input = "0,22,#,33,#,#,44,100,#,#,#,#"
    let output = false
    XCTAssertEqual(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input), output)
  }
}
