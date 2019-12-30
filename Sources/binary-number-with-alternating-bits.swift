extension Solution {
    func hasAlternatingBits(_ n: Int) -> Bool {
        var oldFlag = n & 1 == 0
        var pow = 2
        while pow < n {
            let newFlag = n & pow == 0
            if newFlag != oldFlag {
                oldFlag = newFlag; pow *= 2
            } else {
                return false
            }
        }
        return true
    }
}
