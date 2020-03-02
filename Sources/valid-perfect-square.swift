extension Solution {
    func isPerfectSquare(_ target: Int) -> Bool {
        var approximation = target
        while approximation * approximation > target {
            approximation = nextApproximation(of: target, from: approximation)
        }
        return approximation * approximation == target
    }

    private func nextApproximation(of target: Int, from current: Int) -> Int {
        (current + (target / current)) / 2
    }
}
