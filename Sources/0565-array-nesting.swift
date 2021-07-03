struct ArrayNesting {
  func arrayNesting(_ nums: [Int]) -> Int {
    var visited: Set<Int> = []
    var max: Int = 0

    for num in nums where !visited.contains(num) {
      visited.insert(num)
      var current = 1
      var next = nums[num]

      while next != num {
        visited.insert(next)
        current += 1
        next = nums[next]
      }

      if current > max {
        max = current
      }

      let remaining = nums.count - visited.count
      if max > remaining {
        break
      }
    }

    return max
  }
}
