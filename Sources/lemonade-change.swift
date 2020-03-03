extension Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var count5 = 0
        var count10 = 0

        for bill in bills {
            switch bill {
            case 5:
                count5 += 1
            case 10 where count5 >= 1:
                count5 -= 1
                count10 += 1
            case 20 where count10 >= 1 && count5 >= 1:
                count5 -= 1
                count10 -= 1
            case 20 where count5 >= 3:
                count5 -= 3
            default:
                return false
            }
        }

        return true
    }
}
