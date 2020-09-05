extension Solution {
  func search(_ nums: [Int], _ target: Int) -> Int {
    var min = 0
    var max = nums.count

    while min < max {
      let index = min + (max - min) / 2
      let value = nums[index]

      if target < value {
        max = index
      } else if target > value {
        min = index + 1
      } else {
        return index
      }
    }

    return -1
  }
}
