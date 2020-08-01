extension Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        guard amount != 0 else {
            return 0
        }

        var validCoins: Set<Int> = []
        for coin in coins {
            if coin == amount {
                return 1
            } else if coin < amount {
                validCoins.insert(coin)
            }
        }

        var iteration = 0
        var sums: Set<Int> = [0]

        while sums.contains(where: { sum in sum < amount }) {
            var newSums: Set<Int> = []

            for coin in validCoins {
                for sum in sums {
                    let newSum = sum + coin
                    if newSum == amount {
                        return iteration + 1
                    } else if newSum < amount {
                        newSums.insert(newSum)
                    }
                }
            }

            iteration += 1
            sums = newSums
        }

        return -1
    }
}
