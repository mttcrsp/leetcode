class Solution {
    /// One line solution that you really cannot understand
    func isRectangleOverlapOneLiner(_ rec1: [Int], _ rec2: [Int]) -> Bool {
        return !(rec1[2] <= rec2[0] || rec2[2] <= rec1[0] || rec1[3] <= rec2[1] || rec2[3] <= rec1[1])
    }

    func isRectangleOverlap(_ rec1: [Int], _ rec2: [Int]) -> Bool {
        let r1 = Rectangle(values: rec1)
        let r2 = Rectangle(values: rec2)
        return r1.overlaps(r2)
    }
}

struct Point {
    let x: Int, y: Int

    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

struct Rectangle {
    let topRight: Point
    let bottomLeft: Point

    init(values: [Int]) {
        topRight = .init(values[2], values[3])
        bottomLeft = .init(values[0], values[1])
    }

    var minX: Int { return bottomLeft.x }
    var maxX: Int { return topRight.x }
    var minY: Int { return bottomLeft.y }
    var maxY: Int { return topRight.y }
    var rangeX: ClosedRange<Int> { return minX ... maxX }
    var rangeY: ClosedRange<Int> { return minY ... maxY }

    func overlaps(_ other: Rectangle) -> Bool {
        if rangeX.upperBound <= other.rangeX.lowerBound { return false }
        if other.rangeX.upperBound <= rangeX.lowerBound { return false }
        if rangeY.upperBound <= other.rangeY.lowerBound { return false }
        if other.rangeY.upperBound <= rangeY.lowerBound { return false }
        return true
    }
}
