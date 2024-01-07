/// https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
struct KidsWithTheGreatestNumberOfCandies {
  func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    guard let max = candies.max() else { return [] }
    return candies.map { count in count+extraCandies >= max }
  }
}
