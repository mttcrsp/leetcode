func isPerfectSquare(_ target: Int) -> Bool {
    func nextApproximation(of target: Int, from current: Int) -> Int {
        return (current + (target / current)) / 2
    }

    var approximation = target
    while approximation * approximation > target {
        approximation = nextApproximation(of: target, from: approximation)
    }
    return approximation * approximation == target
}
