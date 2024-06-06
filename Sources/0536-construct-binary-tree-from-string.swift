/// https://leetcode.com/problems/construct-binary-tree-from-string/
struct ConstructBinaryTreeFromString {
  func str2tree(_ s: String) -> TreeNode? {
    var index = s.startIndex
    func scanInt() -> (Int, String.Index)? {
      var index = index
      var sign = 1
      if s[index] == "-" {
        sign = -1
        index = s.index(after: index)
      }

      var found = false
      var value = 0
      while index < s.endIndex, s[index].isNumber {
        value *= 10
        value += Int(String(s[index]))!
        index = s.index(after: index)
        found = true
      }

      if found {
        return (value*sign, index)
      } else {
        return nil
      }
    }

    var stack: [TreeNode] = []
    while index < s.endIndex {
      if let (val, nextIndex) = scanInt() {
        index = nextIndex
        stack.append(TreeNode(val))
      } else if s[index] == "(" {
        index = s.index(after: index)
      } else if s[index] == ")" {
        index = s.index(after: index)
        let node = stack.removeLast()
        if stack.last?.left == nil {
          stack.last?.left = node
        } else {
          stack.last?.right = node
        }
      }
    }

    return stack.last
  }
}
