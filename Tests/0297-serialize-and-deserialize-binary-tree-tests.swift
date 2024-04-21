@testable
import Leetcode
import XCTest

final class SerializeAndDeserializeBinaryTreeTests: XCTestCase {
  func testCodec1() {
    let tree = TreeNode([1, 2, 3, nil, nil, 4, 5])
    let serialized = Codec().serialize(tree)
    let deserialized = Codec().deserialize(serialized)
    XCTAssertEqual(tree?.testDescription, deserialized?.testDescription)
  }

  func testCodec2() {
    let tree = TreeNode([])
    let serialized = Codec().serialize(tree)
    let deserialized = Codec().deserialize(serialized)
    XCTAssertEqual(tree?.testDescription, deserialized?.testDescription)
  }

  func testCodec3() {
    let tree = TreeNode([1])
    let serialized = Codec().serialize(tree)
    let deserialized = Codec().deserialize(serialized)
    XCTAssertEqual(tree?.testDescription, deserialized?.testDescription)
  }

  func testCodec4() {
    let tree = TreeNode([1, 2])
    let serialized = Codec().serialize(tree)
    let deserialized = Codec().deserialize(serialized)
    XCTAssertEqual(tree?.testDescription, deserialized?.testDescription)
  }

  func testCodec5() {
    let tree = TreeNode([4, -7, -3, nil, nil, -9, -3, 9, -7, -4, nil, 6, nil, -6, -6, nil, nil, 0, 6, 5, nil, 9, nil, nil, -1, -4, nil, nil, nil, -2])
    let serialized = Codec().serialize(tree)
    let deserialized = Codec().deserialize(serialized)
    XCTAssertEqual(tree?.testDescription, deserialized?.testDescription)
  }

  func testCodec6() {
    let tree = TreeNode([-1, -2])
    let serialized = Codec().serialize(tree)
    let deserialized = Codec().deserialize(serialized)
    XCTAssertEqual(tree?.testDescription, deserialized?.testDescription)
  }
}

private extension TreeNode {
  var testDescription: String {
    var description = ""
    dump(self, to: &description)
    return description
  }
}
