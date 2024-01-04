import Foundation

/// https://leetcode.com/problems/verify-preorder-serialization-of-a-binary-tree/
@available(macOS 10.15, *)
struct VerifyPreorderSerializationOfABinaryTree {
  func isValidSerialization(_ preorder: String) -> Bool {
    let scanner = Scanner(string: preorder)
    scanner.charactersToBeSkipped = .init(charactersIn: ",")

    var count = 1
    while !scanner.isAtEnd {
      if count == 0 {
        return false
      } else if let _ = scanner.scanInt() {
        count += 1
      } else if let _ = scanner.scanString("#") {
        count -= 1
      }
    }

    return count == 0
  }
}
