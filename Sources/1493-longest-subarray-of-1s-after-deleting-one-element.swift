/// https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/
struct LongestSubarrayOf1SAfterDeletingOneElement {
  func longestSubarray(_ nums: [Int]) -> Int {
    var longest = 0
    var startIndex: Int?
    var previous: Range<Int>?
    for (index, num) in (nums+[0]).enumerated() {
      if num == 1, startIndex == nil {
        startIndex = index
      } else if num == 0, startIndex != nil {
        defer { startIndex = nil }

        let range = startIndex! ..< index
        defer { previous = range }

        longest = max(longest, range.count)
        if let previous, previous.endIndex+1 == startIndex {
          longest = max(longest, range.count+previous.count)
        }
      }
    }

    return longest == nums.count ? longest-1 : longest
  }
}
