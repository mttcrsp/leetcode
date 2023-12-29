/// https://leetcode.com/problems/minimum-depth-of-binary-tree/
struct MinimumDepthOfBinaryTree {
  func minDepth(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }

    let list = LinkedList<(TreeNode, Int)>()
    list.append((root, 1))

    while true {
      let (node, depth) = list.popFirst()!

      if node.left == nil, node.right == nil {
        return depth
      }
      if let node = node.left {
        list.append((node, depth+1))
      }
      if let node = node.right {
        list.append((node, depth+1))
      }
    }
  }

  final class LinkedList<Element> {
    var head: Node?
    var tail: Node?

    func append(_ element: Element) {
      let node = Node(element: element)
      if head == nil {
        head = node
      } else {
        tail?.next = node
      }
      tail = node
    }

    func popFirst() -> Element? {
      let element = head?.element
      if tail === head {
        head = nil
        tail = nil
      } else {
        head = head?.next
      }
      return element
    }

    final class Node {
      var element: Element
      var next: Node?

      init(element: Element) {
        self.element = element
      }
    }
  }
}
