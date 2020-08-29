@testable
import Leetcode
import XCTest

extension SolutionTests {
    func testGetDecimalValue1() {
        let input = ListNode.makeList([1, 0, 1])
        let output = 5
        XCTAssertEqual(Solution().getDecimalValue(input), output)
    }

    func testGetDecimalValue2() {
        let input = ListNode.makeList([1])
        let output = 1
        XCTAssertEqual(Solution().getDecimalValue(input), output)
    }

    func testGetDecimalValue3() {
        let input = ListNode.makeList([0])
        let output = 0
        XCTAssertEqual(Solution().getDecimalValue(input), output)
    }

    func testGetDecimalValue4() {
        let input = ListNode.makeList([0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1])
        let output = 18881
        XCTAssertEqual(Solution().getDecimalValue(input), output)
    }
}

private extension ListNode {
    static func makeList(_ numbers: [Int]) -> ListNode? {
        let nodes = numbers.map(ListNode.init)
        for (node, next) in zip(nodes, nodes.dropFirst()) {
            node.next = next
        }
        return nodes.first
    }
}
