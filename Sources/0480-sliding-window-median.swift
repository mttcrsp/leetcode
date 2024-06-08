import Collections

/// https://leetcode.com/problems/sliding-window-median/
struct SlidingWindowMedian {
  func medianSlidingWindow(_ nums: [Int], _ k: Int) -> [Double] {
    struct Item: Comparable {
      var value: Int
      var index: Int
      static func < (_ lhs: Self, _ rhs: Self) -> Bool {
        lhs.value < rhs.value
      }
    }

    var small: Heap<Item> = []
    var large: Heap<Item> = []
    var result: [Double] = []
    var median: Double {
      if k%2 == 0 {
        Double(large.min!.value+small.max!.value)/2
      } else {
        Double(large.min!.value)
      }
    }

    for index in 0 ..< k {
      small.insert(.init(value: nums[index], index: index))
    }
    for _ in 0 ..< (k-k/2) {
      large.insert(small.removeMax())
    }
    result.append(median)

    for index in k ..< nums.count {
      let value = nums[index]
      if value > large.min!.value {
        large.insert(.init(value: value, index: index))
        if nums[index-k] <= large.min!.value {
          small.insert(large.removeMin())
        }
      } else {
        small.insert(.init(value: value, index: index))
        if nums[index-k] >= large.min!.value {
          large.insert(small.removeMax())
        }
      }

      while let element = small.max, element.index <= index-k {
        small.removeMax()
      }

      while let element = large.min, element.index <= index-k {
        large.removeMin()
      }

      result.append(median)
    }

    return result
  }
}
