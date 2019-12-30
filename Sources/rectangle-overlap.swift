extension Solution {
    func isRectangleOverlap(_ rec1: [Int], _ rec2: [Int]) -> Bool {
        let r1 = Rectangle(values: rec1)
        let r2 = Rectangle(values: rec2)
        return r1.overlaps(r2)
    }

    /// One line solution that you really cannot understand
    private func isRectangleOverlapOneLiner(_ rec1: [Int], _ rec2: [Int]) -> Bool {
        return !(rec1[2] <= rec2[0] || rec2[2] <= rec1[0] || rec1[3] <= rec2[1] || rec2[3] <= rec1[1])
    }

    fileprivate struct Point {
        let x, y: Int
    }

    fileprivate struct Rectangle {
        let topRight, bottomLeft: Point
    }
}

private extension Solution.Rectangle {
    init(values: [Int]) {
        topRight = .init(x: values[2], y: values[3])
        bottomLeft = .init(x: values[0], y: values[1])
    }

    var minX: Int { return bottomLeft.x }
    var maxX: Int { return topRight.x }
    var minY: Int { return bottomLeft.y }
    var maxY: Int { return topRight.y }
    var rangeX: ClosedRange<Int> { return minX ... maxX }
    var rangeY: ClosedRange<Int> { return minY ... maxY }

    func overlaps(_ other: Solution.Rectangle) -> Bool {
        if rangeX.upperBound <= other.rangeX.lowerBound { return false }
        if other.rangeX.upperBound <= rangeX.lowerBound { return false }
        if rangeY.upperBound <= other.rangeY.lowerBound { return false }
        if other.rangeY.upperBound <= rangeY.lowerBound { return false }
        return true
    }
}
