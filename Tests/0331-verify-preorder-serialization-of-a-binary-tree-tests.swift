@testable
import Leetcode
import Testing

@Suite
struct VerifyPreorderSerializationOfABinaryTreeTests {
  @Test func testIsvalidserialization1() {
    let input = "9,3,4,#,#,1,#,#,2,#,6,#,#"
    let output = true
    #expect(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input) == output)
  }

  @Test func testIsvalidserialization2() {
    let input = "1,#"
    let output = false
    #expect(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input) == output)
  }

  @Test func testIsvalidserialization3() {
    let input = "9,#,#,1"
    let output = false
    #expect(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input) == output)
  }

  @Test func testIsvalidserialization4() {
    let input = "#"
    let output = true
    #expect(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input) == output)
  }

  @Test func testIsvalidserialization5() {
    let input = "0,22,#,33,#,44,100,#,#,#,#"
    let output = true
    #expect(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input) == output)
  }

  @Test func testIsvalidserialization6() {
    let input = "0,22,#,33,#,#,44,100,#,#,#,#"
    let output = false
    #expect(VerifyPreorderSerializationOfABinaryTree().isValidSerialization(input) == output)
  }
}
