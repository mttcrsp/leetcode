class Solution {
    func distributeCandies(_ candies: Int, _ num_people: Int) -> [Int] {
        guard num_people > 0 else { return [] }

        var result = [Int](repeating: 0, count: num_people)
        var remainingCandies = candies
        var giveaway = 1
        var index = 0

        while remainingCandies > giveaway {
            remainingCandies -= giveaway
            result[index] += giveaway
            giveaway += 1
            index = (index + 1) % num_people
        }

        result[index] += remainingCandies

        return result
    }
}
