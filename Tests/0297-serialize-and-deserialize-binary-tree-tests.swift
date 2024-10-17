@testable
import Leetcode
import Testing

@Suite
struct SerializeAndDeserializeBinaryTreeTests {
  @Test func testCodec1() {
    let tree = TreeNode([1, 2, 3, nil, nil, 4, 5])
    let serialized = SerializeAndDeserializeBinaryTreeCodec().serialize(tree)
    let deserialized = SerializeAndDeserializeBinaryTreeCodec().deserialize(serialized)
    #expect(tree == deserialized)
  }

  @Test func testCodec2() {
    let tree = TreeNode([])
    let serialized = SerializeAndDeserializeBinaryTreeCodec().serialize(tree)
    let deserialized = SerializeAndDeserializeBinaryTreeCodec().deserialize(serialized)
    #expect(tree == deserialized)
  }

  @Test func testCodec3() {
    let tree = TreeNode([1])
    let serialized = SerializeAndDeserializeBinaryTreeCodec().serialize(tree)
    let deserialized = SerializeAndDeserializeBinaryTreeCodec().deserialize(serialized)
    #expect(tree == deserialized)
  }

  @Test func testCodec4() {
    let tree = TreeNode([1, 2])
    let serialized = SerializeAndDeserializeBinaryTreeCodec().serialize(tree)
    let deserialized = SerializeAndDeserializeBinaryTreeCodec().deserialize(serialized)
    #expect(tree == deserialized)
  }

  @Test func testCodec5() {
    let tree = TreeNode([4, -7, -3, nil, nil, -9, -3, 9, -7, -4, nil, 6, nil, -6, -6, nil, nil, 0, 6, 5, nil, 9, nil, nil, -1, -4, nil, nil, nil, -2])
    let serialized = SerializeAndDeserializeBinaryTreeCodec().serialize(tree)
    let deserialized = SerializeAndDeserializeBinaryTreeCodec().deserialize(serialized)
    #expect(tree == deserialized)
  }

  @Test func testCodec6() {
    let tree = TreeNode([-1, -2])
    let serialized = SerializeAndDeserializeBinaryTreeCodec().serialize(tree)
    let deserialized = SerializeAndDeserializeBinaryTreeCodec().deserialize(serialized)
    #expect(tree == deserialized)
  }
}
